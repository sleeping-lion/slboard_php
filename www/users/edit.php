<?php

try {
	require_once 'setting.php';

	//	if($_SESSION['ADMIN']) {
	//		$clean['id']=;
	//	} else {
	$clean['id'] = $_SESSION['ADMIN'];
	//	}

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';	

	// 전체 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM users WHERE id=:id');
	$stmt_count -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_count -> execute();

	if (!$stmt_count -> fetchColumn())
		throw new Exception("Error Processing Request", 1);

	$stmt = $con -> prepare('SELECT * FROM users WHERE id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();
	$data['content'] = $stmt -> fetch(PDO::FETCH_ASSOC);

	$con = null;

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con = null;

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>