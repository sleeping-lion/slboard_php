<section id="slboard_question_comment_index">
	<form action="delete.php" method="post">
		<input type="hidden" name="guest_book_id" value="<?php echo $data['guest_book_id'] ?>" />		
		<input type="hidden" name="id" value="<?php echo $data['id'] ?>" />
		<div class="form-group">
			<label for="sl_password"><?php echo _('label_password') ?></label>
			<input type="password" class="form-control" id="sl_password" name="password" maxlength="255" required="required" />
		</div>			
		<input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />
	</form>
</section>