<div class="left">
  <h2><?php echo $text_your_details; ?></h2>
  <?php echo $entry_firstname; ?> <span class="required">*</span><br />
  <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_lastname; ?> <span class="required">*</span><br />
  <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_email; ?> <span class="required">*</span><br />
  <input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_telephone; ?> <span class="required">*</span><br />
  <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_fax; ?><br />
  <input type="text" name="fax" value="<?php echo $fax; ?>" class="large-field" />
  <br />
  <br />
</div>
<div class="right">
  <h2><?php echo $text_your_address; ?></h2>
  <?php echo $entry_company; ?><br />
  <input type="text" name="company" value="<?php echo $company; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_address_1; ?> <span class="required">*</span><br />
  <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_address_2; ?><br />
  <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_city; ?> <span class="required">*</span><br />
  <input type="text" name="city" value="<?php echo $city; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_postcode; ?> <span class="required">*</span><br />
  <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" />
  <br />
  <br />
  <?php echo $entry_country; ?> <span class="required">*</span><br />
  <select name="country_id" class="large-field" onchange="$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/guest/zone&country_id=' + this.value);">
    <option value=""><?php echo $text_select; ?></option>
    <?php foreach ($countries as $country) { ?>
    <?php if ($country['country_id'] == $country_id) { ?>
    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
    <?php } ?>
    <?php } ?>
  </select>
  <br />
  <br />
  <?php echo $entry_zone; ?> <span class="required">*</span><br />
  <select name="zone_id" class="large-field">
  </select>
  <br />
  <br />
  <br />
</div>
<?php if ($shipping_required) { ?>
<div style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;">
  <?php if ($shipping_address) { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" />
  <?php } ?>
  <label for="shipping"><?php echo $entry_shipping; ?></label>
  <br />
  <br />
  <br />
</div>
<?php } ?>
<div class="buttons">
  <div class="right"><input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button" /></div>
</div>
<script type="text/javascript"><!--
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/guest/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 