<section id="slboard_guest_book_check_delete_password">
	<form action="<?php echo $data['action'] ?>" method="post">
		<?php if($data['action']=='delete.php'): ?>
		<input type="hidden" name="id" value="<?php echo $data['id'] ?>" />
		<?php endif ?>
		<div class="form-group">
			<label for="sl_password"><?php echo _('label_password') ?></label>
			<input type="password" class="form-control" id="sl_password" name="password" maxlength="255" required="required" />
		</div>			
		<input type="submit" class="btn btn-primary" value="<?php echo _('submit') ?>" />
	</form>
</section>