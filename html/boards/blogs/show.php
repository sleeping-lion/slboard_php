<?php require WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'phpThumb' . DIRECTORY_SEPARATOR . 'phpThumb.config.php' ?>
<section id="sl_board_blog_show">
  <div class="slboard_content">
    <div class="sl_content_header">
      <h3 itemprop="name"><?php echo $data['content']['title'] ?></h3>
    </div>
    <div class="sl_content_main">
     		<p class="sl_content_info"><?php echo _('label_name') ?> : <span  itemprop="author"><?php echo $data['content']['name'] ?></span>&nbsp;&nbsp;&nbsp; <?php echo _('label_created_at') ?> : <span itemprop="dateCreated"><?php echo $data['content']['created_at'] ?></span><span class="none" itemprop="dateModified"><?php $data['content']['updated_at'] ?></span></p>    	
      <div class="sl_content_text" itemprop="text"><?php echo nl2br($data['content']['content']) ?></div>
    </div>
  </div>
  <?php require BLOG_COMMENT_HTML_DIRECTORY.DIRECTORY_SEPARATOR.'_index.php' ?>
  <?php require BLOG_COMMENT_HTML_DIRECTORY.DIRECTORY_SEPARATOR.'_new.php' ?>    
	<div id="sl_content_bottom_buttons">
		<div class="pull-left">
			<a href="<?php echo index_link() ?>" class="btn btn-default"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <?php echo _('index_link') ?></a>
		</div>
		<?php if($_SESSION['ADMIN']): ?>
		<div class="pull-right">
      	<a href="<?php echo delete_link($data['content']) ?>" class="pull-right btn btn-default" style="margin-left:10px"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> <?php echo _('delete_link') ?></a>
      	<a href="<?php echo edit_link($data['content']) ?>" class="pull-right btn btn-default"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> <?php echo _('edit_link') ?></a>
   </div>
   <?php endif ?>
	</div>
</section>