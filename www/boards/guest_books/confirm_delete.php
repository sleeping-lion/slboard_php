<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT, 'guest_book_id' => FILTER_VALIDATE_INT,'password' => FILTER_SANITIZE_STRING));
	
	if(empty($clean['id']))
		throw new Exception(_('no_passed_id'), 1);	

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	require '_check_exists_id.php';

	$stmt_guest_book_comment = $con -> prepare('SELECT gbc.* FROM guest_book_comments AS gbc WHERE id=:id');
	$stmt_guest_book_comment -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_guest_book_comment -> execute();
	$data['content'] = $stmt_guest_book_comment -> fetch(PDO::FETCH_ASSOC);

	$con = null;

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