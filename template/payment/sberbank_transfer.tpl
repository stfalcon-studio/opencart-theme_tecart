<div style="background: #f7f7f7; border: 1px solid #dddddd; padding: 10px; margin-bottom: 10px;">
  <?php echo $text_instruction; ?><br /><br />
  <?php echo $text_printpay; ?><br /><br />
  <?php echo $text_payment; ?><br /><br />
  <?php if ($text_order_history) { ?>
  <?php echo $text_order_history; ?><br /><br />
  <?php } ?>
  <?php echo $text_payment_coment; ?>
</div>
<div class="buttons">
  <div class="right"><a id="button-confirm" class="button"><span><?php echo $button_confirm; ?></span></a></div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
  $.ajax({
    type: 'GET',
    url: 'index.php?route=payment/sberbank_transfer/confirm',
    success: function() {
      location = '<?php echo $continue; ?>';
    }
  });
});
//--></script>
