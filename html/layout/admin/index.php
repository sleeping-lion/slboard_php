<!DOCTYPE html>
<html lang="<?php echo $config['site']['language'] ?>">
	<head>
		<title><?php echo $config['site']['title'] ?></title>
		<meta charset="utf-8">
		<?php sl_style($config['template']['stylesheets']); ?>
		<meta content="<?php echo $config['site']['description'] ?>" name="description" />
		<meta content="<?php echo $config['site']['keywords'] ?>" name="keywords" />
		<meta content="width=device-width, initial-scale=1.0" name="viewport" />		
		<meta name="author" content="<?php echo $config['site']['author'] ?>" />
		<!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<![endif]-->
	</head>
	<body id="sl_main_page">
		<div id="mom">
			<div id="main" class="container">
				<?php require $config['template']['main'] ?>
			</div>
		</div>
	</body>
</html>
