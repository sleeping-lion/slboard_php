<?php

try {
	require 'setting.php';

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';

	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con=null;	
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>