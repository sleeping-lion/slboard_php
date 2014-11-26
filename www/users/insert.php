<?php

try {
	require_once __DIR__.DIRECTORY_SEPARATOR.'setting.php';
	
	$clean = filter_input_array(INPUT_POST, array('email' => FILTER_VALIDATE_EMAIL,'name'=>FILTER_SANITIZE_STRING,'description'=>FILTER_SANITIZE_STRING));	

	$con=getPDO($config_db);
	

	/******** 트랙잭션 시작 **********/
	$con->beginTransaction();


	/******** 커밋 **********/
	$con->commit();
	$con=null;
	
	$sl_redirect='complete.php';
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if($con) {
		if($con->inTransaction())
		/******** 롤백 **********/			
		$con->rollback();
		$con=null;
	}

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>