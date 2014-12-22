<section id="slboard_question_comment_confirm_delete">
	<form action="delete.php" method="post">
		<input type="hidden" name="id" value="<?php echo $data['content']['id'] ?>" />
		<input type="submit" class="btn btn-danger" value="<?php echo _('delete') ?>" />
	</form>
</section>