<section id="slboard_question_comment_index" class="slboard_comment_index">
	<?php if($data['comment_total']): ?>
<ul class="media-list">
	<?php foreach($data['comment'] as $index=>$comment): ?>
  <li class="media">
    <a class="pull-left" href="#">
    	<?php if($comment['user_id']): ?>
			<img width="100" height="100" class="media-object" src="<?php echo htmlspecialchars(phpThumbURL('src=/../uploads/users/'.$comment['user_id'].'/'.$comment['photo'].'&w=100&h=100', '/phpThumb/phpThumb.php')) ?>" alt="<?php echo $comment['description'] ?>" />
			<?php else: ?>
				
			<?php endif ?>
    </a>
    <div class="media-body">
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