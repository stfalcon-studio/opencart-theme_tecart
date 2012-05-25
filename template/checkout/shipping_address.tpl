<?php if ($addresses) { ?>
<input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" />
<label for="shipping-address-existing"><?php echo $text_address_existing; ?></label>
<div id="shipping-existing">
  <select name="address_id" style="width: 100%; margin-bottom: 15px;">
    <?php foreach ($addresses as $address) { ?>
    <?php if ($address['address_id'] == $address_id) { ?>
    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } ?>
    <?php } ?>
  </select>
</div>
<?php } ?>
<p>
  <input type="radio" name="shipping_address" value="new" id="shipping-address-new" />
  <label for="shipping-address-new"><?php echo $text_address_new; ?></label>
</p>
<div id="shipping-new" style="display: none;">
  <table class="form">
    <tr>
      <td><?php echo $entry_firstname; ?> <span class="required">*</span></td>
      <td><input type="text" name="firstname" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
      <td><input type="text" name="lastname" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_company; ?></td>
      <td><input type="text" name="company" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
      <td><input type="text" name="address_1" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_address_2; ?></td>
      <td><input type="text" name="address_2" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_city; ?> <span class="required">*</span></td>
      <td><input type="text" name="city" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_postcode; ?> <span class="required">*</span></td>
      <td><input type="text" name="postcode" value="" class="large-field" /></td>
    </tr>
    <tr>
      <td><?php echo $entry_country; ?> <span class="required">*</span></td>
      <td><select name="country_id" class="large-field" onchange="$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/shipping_address/zone&country_id=' + this.value);">
          <option value=""><?php echo $text_select; ?></option>
          <?php foreach ($countries as $country) { ?>
          <?php if ($country['country_id'] == $country_id) { ?>
          <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
          <?php } ?>
          <?php } ?>
        </select></td>
    </tr>
    <tr>
      <td><?php echo $entry_zone; ?> <span class="required">*</span></td>
      <td><select name="zone_id" class="large-field">
        </select></td>
    </tr>
  </table>
</div>
<br />
<div class="buttons">
  <div class="right"><input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" class="button" /></div>
</div>
<script type="text/javascript"><!--
$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/shipping_address/zone&country_id=<?php echo $country_id; ?>');

$('#shipping-address input[name=\'shipping_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
	}
});
//--></script> 