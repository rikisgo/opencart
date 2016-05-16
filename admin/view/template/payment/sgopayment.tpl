<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
       <script type="text/javascript">
				var input = $("<input>").attr("type", "hidden").attr('name','updateproduct').val("update");
		</script>

      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="$('#form').append($(input)); $('#form').submit();" class="button"><?php echo $button_update; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">

           <tr>
            <td><?php echo $entry_sgopayment_id; ?></td>
            <td><input type="text" size="50" name="sgopayment_id" value="<?php echo $sgopayment_id; ?>" /></td>
          </tr>

           <tr>
            <td><?php echo $entry_sgopayment_password; ?></td>
            <td><input type="password" size="50" name="sgopayment_password" value="<?php echo $sgopayment_password; ?>" /></td>
          </tr>

          <tr>
           <td><?php echo $entry_sgopayment_env; ?></td>
           <td>
             <select name='sgopayment_environment'>
                <option value='sandbox' <?=($sgopayment_environment === 'sandbox' ? 'selected' : '')?>>sandbox</option>
                <option value='production' <?=($sgopayment_environment === 'production' ? 'selected' : '')?>>production</option>
             </select>
           </td>
         </tr>



          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="sgopayment_total" value="<?php echo $sgopayment_total; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="sgopayment_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $sgopayment_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status_waiting; ?></td>
            <td><select name="sgopayment_order_status_waiting">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $sgopayment_order_status_waiting) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="sgopayment_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $sgopayment_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="sgopayment_status">
                <?php if ($sgopayment_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="sgopayment_sort_order" value="<?php echo $sgopayment_sort_order; ?>" size="1" /></td>
          </tr>
          <?php echo $productlist; ?>

        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
