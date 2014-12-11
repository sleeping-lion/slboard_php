<?php

try {
	require_once __DIR__.DIRECTORY_SEPARATOR.'setting.php';

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/********  트랙잭션 시작 **********/
	$con->beginTransaction();
	
	$stmt = $con -> prepare('UPDATE users SET name=:name,description=:description,updated_at=now())');
	$stmt -> bindParam(':email', $clean['email'],PDO::PARAM_STR, 255);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_INT);
	$stmt -> bindParam(':description', $clean['description'], PDO::PARAM_STR, 255);
	$stmt -> execute();

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
