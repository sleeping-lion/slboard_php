<section id="sl_board_blog_edit">
	<form role="form" action="update.php" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo $data['content']['id'] ?>" />
		<input type="hidden" name="MAX_FILE_SIZE" value="3000000" />
  	<div class="form-group">
  		<label for="sl_category"><?php echo _('label_category') ?></label>
  		<select class="form-control" id="sl_category" name="blog_category_id" required="required">
  			<?php foreach($data['category'] as $index=>$value): ?>
  			<option value="<?php echo $value['id'] ?>" <?php if($value['id']==$data['content']['blog_category_id']): ?>selected="selected"<?php endif ?>><?php echo $value['title'] ?></option>
  			<?php endforeach ?>  				
  		</select>
  	</div>
  	<div class="form-group">
  		<label for="sl_title"><?php echo _('label_title') ?></label>
  		<input type="text" class="form-control" id="sl_title" name="title" value="<?php echo $data['content']['title'] ?>" maxlength="60" required="required" />
  	</div>
  	<div class="form-group">
  		<label for="sl_description"><?php echo _('label_description') ?></label>
  		<input type="text" class="form-control" id="sl_description" name="description" value="<?php echo $data['content']['description'] ?>" maxlength="60" required="required" />
  	</div>
  	<div class="form-group">
  		<label for="sl_tag"><?php echo _('label_tag') ?></label>
  		<input type="text" class="form-control" id="sl_tag" name="tag" maxlength="60" required="required" />
  	</div>
  	<div class="form-group">
  		<label for="sl_content"><?php echo _('label_content') ?></label>
  		<textarea id="sl_content" name="content" class="form-control" required="required"><?php echo nl2br($data['content']['content']) ?></textarea>
  	</div>
  	<div class="form-group">
    	<label for="sl_photo"><?php echo _('label_photo') ?></label>
    	<input type="file" id="sl_photo" name="photo" />
  	</div>  	
  	<input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />
	</form>
</section>