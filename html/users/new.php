<section id="sl_board_user_new">
	<form action="insert.php" method="post">
  <div class="form-group">
    <label for="sl_email"><?php echo _('label_email') ?></label>
    <input type="email" class="form-control" id="sl_email" name="email" maxlength="255" required="required" />
  </div>
  <div class="form-group">
    <label for="sl_name"><?php echo _('label_password') ?></label>
    <input type="text" class="form-control" id="sl_name" name="name" maxlength="255" required="required" />
  </div>
  <div class="form-group">
    <label for="sl_name"><?php echo _('label_password_confirm') ?></label>
    <input type="text" class="form-control" id="sl_name" name="name" maxlength="255" required="required" />
  </div>
  <div class="form-group">
    <label for="sl_name"><?php echo _('label_name') ?></label>
    <input type="text" class="form-control" id="sl_name" name="name" maxlength="60" required="required" />
  </div>
  <div class="form-group">
    <label for="sl_content"><?php echo _('label_content') ?></label>
    <textarea id="sl_content" name="content" class="form-control"></textarea>
  </div>
  <input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />      
	</form>
	<div id="sl_bottom_menu">
		
	</div>
</section>