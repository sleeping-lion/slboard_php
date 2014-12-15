<?php require WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'phpThumb' . DIRECTORY_SEPARATOR . 'phpThumb.config.php' ?>
<section id="sl_board_question_show">
  <div class="slboard_content">
    <div class="sl_content_header">
      <h3 itemprop="name"><?php echo $data['content']['title'] ?></h3>
    </div>
    <div class="sl_content_main">
     		<p class="sl_content_info"><?php echo _('label_name') ?> : <span  itemprop="author"><?php echo $data['content']['name'] ?></span>&nbsp;&nbsp;&nbsp; <?php echo _('label_created_at') ?> : <span itemprop="dateCreated"><?php echo $data['content']['created_at'] ?></span><span class="none" itemprop="dateModified"><?php $data['content']['updated_at'] ?></span></p>    	
      <div class="sl_content_text" itemprop="text"><?php echo nl2br($data['content']['content']) ?></div>
    </div>
  </div>
  <?php require GUEST_BOOK_COMMENT_HTML_DIRECTORY.DIRECTORY_SEPARATOR.'_index.php' ?>
  <?php require GUEST_BOOK_COMMENT_HTML_DIRECTORY.DIRECTORY_SEPARATOR.'_new.php' ?>
	<div id="sl_content_bottom_buttons">
		<a href="<?php echo index_link() ?>" class="btn btn-default"><?php echo _('index_link') ?></a>
      <?php if(!empty($comment['user_id'])): ?>
      <?php if($_SESSION['ADMIN'] OR $_SESSION['USER_ID']==$comment['user_id']): ?>
      	<a href="<?php echo delete_confirm_link($data['content']['id']) ?>" class="btn btn-default btn btn-default col-xs-12 col-md-2"><?php echo _('edit_link') ?></a> 
      <?php endif ?>
      <?php else: ?>
      	<a href="<?php echo delete_password_link($data['content']['id']) ?>" class="btn btn-default btn btn-default col-xs-12 col-md-2"><?php echo _('edit_link') ?></a>
      <?php endif ?>
		<a href="<?php echo delete_confirm_link($data['content']['id']) ?>" class="btn btn-default btn btn-default col-xs-12 col-md-2"><?php echo _('delete_link') ?></a>							
	</div>
</section>