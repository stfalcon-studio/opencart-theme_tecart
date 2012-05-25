<?php echo $header; ?>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
<!-- breadcrumbs old place -->
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($orders) { ?>
  <?php foreach ($orders as $order) { ?>
  <div class="order-list">
    <div class="order-id"><?php echo $text_order_id; ?> <b>#<?php echo $order['order_id']; ?></b></div>
    <div class="order-status"><?php echo $text_status; ?> <?php echo $order['status']; ?></div>
    <div class="order-content">
      <div><?php echo $text_date_added; ?> <?php echo $order['date_added']; ?></div>
      <div><?php echo $text_products; ?> <?php echo $order['products']; ?></div>
      <div><?php echo $text_customer; ?> <?php echo $order['name']; ?></div>
      <div><b><?php echo $text_total; ?> <?php echo $order['total']; ?></b></div>
      <div class="order-info"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/tecart/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /><?php echo $button_view; ?></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/tecart/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></div>
    </div>
  </div>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>