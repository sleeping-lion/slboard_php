<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('id' => FILTER_VALIDATE_INT, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'password_confirm' => FILTER_SANITIZE_STRING, 'title' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if (empty($clean['id']))
		throw new Exception(_('no_passed_id'), 1);

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	require '_check_exists_id.php';

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('UPDATE guest_books SET title=:title,updated_at=now() WHERE id=:id');
	$stmt -> bindParam(':title', $clean['title'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();

	$stmt_content = $con -> prepare('UPDATE guest_book_contents SET content=:content WHERE id=:id');
	$stmt_content -> bindParam(':content', $clean['content'], PDO::PARAM_STR);
	$stmt_content -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_content -> execute();

	/******** 커밋 **********/
	$con -> commit();
	$con = null;

	$sl_redirect = 'index.php';
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