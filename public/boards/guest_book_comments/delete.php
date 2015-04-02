<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('id' => FILTER_VALIDATE_INT, 'guest_book_id' => FILTER_VALIDATE_INT, 'password' => FILTER_SANITIZE_STRING));

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	require '_check_exists_id.php';
	require '_check_auth.php';

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('DELETE FROM guest_book_comments WHERE id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();

	$stmt_update = $con -> prepare('UPDATE guest_books SET guest_book_comments_count=guest_book_comments_count-1 WHERE id=:id');
	$stmt_update -> bindParam(':id', $clean['guest_book_id'], PDO::PARAM_INT);
	$stmt_update -> execute();

	/******** 커밋 **********/
	$con -> commit();
	$con = null;
	
	$_SESSION['MESSAGE'] = _('successfully comment deleted');
	$sl_redirect = '../guest_books/show.php?id=' . $clean['guest_book_id'];	
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