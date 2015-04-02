<?php

try {
	require_once 'setting.php';


	$con=null;

	require_once $foramtSuccessData;
} catch(Exception $e) {
	$con=null;

	require_once $foramtErrorData;
}

?>