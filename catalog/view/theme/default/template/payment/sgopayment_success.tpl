<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <h2><?php echo $heading_title; ?></h2>
    <p><?php echo $text_payment_success ?></p>
    <div id="OrderDetail"><?php echo $text_payment_success_order." ".$order_id ?></div>
    <div id="OrderDetail"><?php echo $text_payment_success_ex ?></div>
    <p><?php echo $text_payment_success_thanks ?></p>
    <?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>