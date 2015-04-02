<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT, 'guest_book_id' => FILTER_VALIDATE_INT));

	if (empty($clean['id']))
		throw new Exception("Error Processing Request", 1);

	if (empty($clean['guest_book_id']))
		throw new Exception("Error Processing Request", 1);

	$data['id'] = $clean['id'];
	$data['guest_book_id'] = $clean['guest_book_id'];

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