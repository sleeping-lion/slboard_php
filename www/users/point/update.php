<?php

try {
	require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';



	/******** 트랙잭션 시작 **********/
	$con->beginTransaction();
	
	

	/******** 커밋 **********/
	$con->commit();
	$con=null;

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
