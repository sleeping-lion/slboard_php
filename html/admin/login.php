<section id="sl_board_admin_login">
	<form action="users/login/login.php" id="sl_board_setup_new_form" class="jumbotron hero-unit" method="post">
	<input type="hidden" id="message_no_email" value="<?php echo _('not_insert_email') ?>" />
	<input type="hidden" id="message_no_password" value="<?php echo _('not_insert_password') ?>" />
	<input type="hidden" id="message_invalid_email" value="<?php echo _('invalid_email') ?>" />
	<input type="hidden" id="message_invalid_password" value="<?php echo _('invalid_password') ?>" />
	<input type="hidden" id="message_exists_email" value="<?php echo _('exists_email') ?>" />	
  <div class="form-group">
    	<label for="sl_email"><?php echo _('label_email') ?></label>  		
    <input type="text" class="form-control" id="sl_email" name="email" maxlength="255" required="required" />
  </div>
  <div class="form-group">	
    <label class="control-label" for="sl_password"><?php echo _('label_password') ?></label>
    <input type="password" class="form-control" id="sl_password" name="password" maxlength="255" required="required" />
  </div>
  <input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />      
	</form>
</section>