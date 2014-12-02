<?php

define('ROOT_DIRECTORY', realpath(__DIR__ . DIRECTORY_SEPARATOR . '..'));
define('WEBROOT_DIRECTORY', realpath(ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'www'));

define('BOARD_DIRECTORY', WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'boards');
define('USER_DIRECTORY', WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'users');
define('JAVASCRIPT_DIRECTORY', WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'javascripts');
define('STYLESHEET_DIRECTORY', WEBROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'stylesheets');
define('LIB_DIRECTORY', ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'lib');
define('CLASS_DIRECTORY', SLBOARD_CORE_DIRECTORY . DIRECTORY_SEPARATOR . 'class');
define('INCLUDE_DIRECTORY', ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'include');
define('UPLOAD_DIRECTORY', ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'uploads');

define('HTML_DIRECTORY', ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'html');
define('JSON_DIRECTORY', ROOT_DIRECTORY . DIRECTORY_SEPARATOR . 'json');

if(empty($config['theme']) OR $config['theme']=='default') {
	$config['theme']='default';
	define('LAYOUT_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'layout');
	define('COMMON_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'common');
	define('BOARD_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'boards');
	define('USER_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'users');
} else {
	define('LAYOUT_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'theme' . DIRECTORY_SEPARATOR . $config['theme'] . DIRECTORY_SEPARATOR . 'layout');	
	define('COMMON_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'theme' . DIRECTORY_SEPARATOR . $config['theme'] . DIRECTORY_SEPARATOR . 'common');
	define('BOARD_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'theme' . DIRECTORY_SEPARATOR . $config['theme'] . DIRECTORY_SEPARATOR . 'boards');
	define('USER_HTML_DIRECTORY', HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'theme' . DIRECTORY_SEPARATOR . $config['theme'] . DIRECTORY_SEPARATOR . 'users');
}
