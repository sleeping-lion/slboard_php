<?php

try {
	require_once __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('id' => FILTER_VALIDATE_INT, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'password_confirm' => FILTER_SANITIZE_STRING, 'title' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if ($clean['password'] != $clean['password_confirm'])
		throw new Exception("Error Processing Request", 1);

	$clean['encrypted_password'] = '';

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO guest_book_comments(name,encrypted_password,title,created_at) VALUES(:name,:encrypted_password,:title,now())');
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':encrypted_password', $clean['encrypted_password'], PDO::PARAM_STR, 255);
	$stmt -> bindParam(':title', $clean['title'], PDO::PARAM_STR, 60);
	$stmt -> execute();

	$data['inserted_id'] = $con -> lastInsertId();

	/******** 커밋 **********/
	$con -> commit();

	$_SESSION['MESSAGE'] = '성공적으로 글 써졌음';

	$sl_redirect = 'index.php';
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if ($con) {
		if ($con -> inTransaction()) {
			/******** 롤백 **********/
			$con -> rollback();
		}
		$con = null;
	}

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>