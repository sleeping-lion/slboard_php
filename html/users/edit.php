<section id="sl_board_user_edit">
	<form action="update.php" id="sl_board_user_edit_form" enctype="multipart/form-data" method="post">
	<input type="hidden" id="message_no_email" value="<?php echo _('not_insert_email') ?>" />
	<input type="hidden" id="message_no_password" value="<?php echo _('not_insert_password') ?>" />
	<input type="hidden" id="message_invalid_email" value="<?php echo _('invalid_email') ?>" />
	<input type="hidden" id="message_invalid_password" value="<?php echo _('invalid_password') ?>" />
	<input type="hidden" id="message_exists_email" value="<?php echo _('exists_email') ?>" />	
  <div class="form-group row">
  	<div class="col-md-8 col-xs-12">
    <label class="control-label" for="sl_email"><?php echo _('label_email') ?></label>
    <input type="email" class="form-control" id="sl_email" name="email" maxlength="255" value="<?php echo $data['content']['email'] ?>" readonly="readonly" />
   </div>
  </div>
  <div class="form-group row">
  	<div class="col-md-12 col-xs-12">  	
    <label class="control-label" for="sl_password"><?php echo _('label_password') ?></label>
    <input type="password" class="form-control" id="sl_password" name="password" maxlength="255" />
   </div>
  </div>
  <div class="form-group">
    <label class="control-label" for="sl_password_confirm"><?php echo _('label_password_confirm') ?></label>
    <input type="password" class="form-control" id="sl_password_confirm" name="password_confirm" maxlength="255" />
  </div>
  <div class="form-group">
    <label class="control-label" for="sl_name"><?php echo _('label_name') ?></label>
    <input type="text" class="form-control" id="sl_name" name="name" maxlength="60" value="<?php echo $data['content']['name'] ?>" required="required" />
  </div>
  <div class="form-group">
    <label class="control-label" for="sl_description"><?php echo _('label_description') ?></label>
    <input type="text" class="form-control" id="sl_description" name="description" value="<?php echo $data['content']['description'] ?>" maxlength="255" />
  </div>
  	<div class="form-group">
    	<label for="sl_photo"><?php echo _('label_photo') ?></label>
    	<input type="file" name="photo" id="sl_photo" />
  	</div>  
  <input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />      
	</form>
</section>