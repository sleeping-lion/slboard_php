<section id="slboard_question_comment_index" class="slboard_comment_index">
	<?php if($data['comment_total']): ?>
<ul class="media-list">
	<?php foreach($data['comment'] as $index=>$comment): ?>
  <li class="media">
    <a class="pull-left" href="#">
    	<?php if($comment['photo']): ?>
			<img width="70" height="70" class="media-object" src="<?php echo htmlspecialchars(phpThumbURL('src=/../uploads/users/'.$comment['user_id'].'/'.$comment['photo'].'&w=70&h=70', '/phpThumb/phpThumb.php')) ?>" alt="<?php echo $comment['description'] ?>" />
			<?php else: ?>
			<img width="70" height="70" class="media-object" src="/images/anon2.png" />
			<?php endif ?>
    </a>
    <div class="media-body">
      <?php if(!empty($comment['user_id'])): ?>
      <?php if($_SESSION['USER_ID']==$comment['user_id']): ?>
      	<a class="close" href="../guest_book_comments/confirm_delete.php?guest_book_id=<?php echo $comment['guest_book_id'] ?>&id=<?php echo $comment['id'] ?>"><span aria-hidden="true">&times;</span><span class="sr-only"><?php echo _('delete') ?></span></a> 
      <?php endif ?>
      <?php else: ?>
      <div>
      	<a class="close" href="../guest_book_comments/check_delete_password.php?guest_book_id=<?php echo $comment['guest_book_id'] ?>&id=<?php echo $comment['id'] ?>"><span aria-hidden="true">&times;</span><span class="sr-only"><?php echo _('delete') ?></span></a>      	
      </div>
      <?php endif ?>
      <h4 class="media-heading"><?php echo $comment['name'] ?></h4>
      <div>
      	<?php echo nl2br($comment['content']) ?>
      </div>
    </div>
  </li>
	<?php endforeach ?>
</ul>			
	<?php else: ?>
	<?php endif ?>
</section>