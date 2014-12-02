<?php

try {
	require __DIR__.DIRECTORY_SEPARATOR.'setting.php';

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	



	/******** 트랙잭션 시작 **********/
	$con->beginTransaction();

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_insert.php';


	/******** 커밋 **********/
	$con->commit();
	$con=null;
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if($con) {
		if($con->inTransaction())
		/******** 롤백 **********/			
		$con->rollback();
		$con=null;
	}

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>