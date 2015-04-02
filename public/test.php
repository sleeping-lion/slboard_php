<?php 
	require 'setting.php';
  require WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'phpThumb' . DIRECTORY_SEPARATOR . 'phpThumb.config.php';
?>

<img src="<?php echo htmlspecialchars(phpThumbURL('src=/../uploads/ckeditor/1/crying_baby.jpg&w=400&h=300', '/phpThumb/phpThumb.php')) ?>" />
