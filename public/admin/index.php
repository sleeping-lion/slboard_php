<?php

try {
	require 'setting.php';

	if (empty($_SESSION['USER_ID'])) {
		
	}


	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>