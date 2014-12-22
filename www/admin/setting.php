<?php

require __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'setting.php';
ini_set("include_path", get_include_path() . ':' . __DIR__);

if (empty($_SESSION['ADMIN'])) {
	$config['template']['layout'] = 'admin/login.php';
	$config['template']['main'] = 'login.php';
} else {
	$config['template']['layout'] = 'admin/index.php';
	$config['template']['header'] = 'admin/header.php';
	$config['template']['aside'] = 'admin/aside.php';
}

if ($_SESSION['USER_ID']) {
	$sl_common_style = array('bootstrap.min.css', 'admin/index.css');
} else {
	$sl_common_style = array('bootstrap.min.css', 'admin/login.css');
}
$sl_style = null;
