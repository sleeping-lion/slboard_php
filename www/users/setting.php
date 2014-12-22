<?php

require __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'setting.php';
require INCLUDE_DIRECTORY.DIRECTORY_SEPARATOR.'get_action.php';
ini_set("include_path",get_include_path().':'.__DIR__);

$config['controller']='user';
$config['user_pepper']='';