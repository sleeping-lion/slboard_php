<?php

define('CONFIG_DIRECTORY', realpath(__DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'config'));
require CONFIG_DIRECTORY . DIRECTORY_SEPARATOR . 'config.php';

$config['template']['common_style'] = array('bootstrap.min.css', 'index.css');
$config['template']['style'] = array('index.css');
$config['template']['common_script'] = array('jquery-2.1.1.min.js', 'bootstrap.min.js', 'plugin/jquery.tagcanvas.min.js', 'common.js');
$config['template']['script'] = array('index.js');
