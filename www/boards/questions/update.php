<?php

try {
	require 'setting.php';

	$clean = filter_input_array(INPUT_POST, array('id' => FILTER_VALIDATE_INT));

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require '_check_exists_id.php';	

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	/******** 커밋 **********/
	$con -> commit();
	$con = null;

	$redirect = 'index.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if ($con) {
		if ($con -> inTransaction()) {
			/******** 롤백 **********/
			$con -> rollback();
		}
		$con = null;
	}
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>