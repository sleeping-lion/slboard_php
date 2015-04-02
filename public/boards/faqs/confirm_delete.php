<?php

try {
	require 'setting.php';

	require $adminOnly;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require $foramtErrorData;
}

?>