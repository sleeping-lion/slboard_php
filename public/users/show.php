<?php

try {
	require 'setting.php';

	require $loginUserOnly;

	$con=getPDO($config_db);
	

	$con=null;

	require USER_HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'notices' . DIRECTORY_SEPARATOR . 'index.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>