<section id="slboard_question_comment_index">
	<?php if($data['comment_total']): ?>
<ul class="media-list">
	<?php foreach($data['comment'] as $index=>$comment): ?>
  <li class="media">
    <a class="media-left" href="#">
      <img src="..." alt="...">
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