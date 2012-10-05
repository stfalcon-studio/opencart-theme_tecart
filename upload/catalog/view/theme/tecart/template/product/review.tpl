<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="content">
  <img src="catalog/view/theme/tecart/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" />
  <b><?php echo $review['author']; ?></b> <?php echo $text_on; ?> <span class="date"><?php echo $review['date_added']; ?></span>
  <br>
  <div class="text"><?php echo $review['text']; ?></div>
</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
