<?php

try {
	require __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';
	
	$config['template']['no_layout']=true;
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>