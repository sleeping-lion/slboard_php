<?php

try {
	require 'setting.php';
	
	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT,'password' => FILTER_SANITIZE_STRING,'action'=>FILTER_SANITIZE_STRING));	

	if (empty($clean['id']))
		throw new Exception("Error Processing Request", 1);
	
	switch($clean['action']) {
		case 'edit' :
			$data['action'] = 'edit.php?id='.$clean['id'];
			break;
		case 'delete' :
			$data['action'] = 'delete.php';
			break;
		default :
		throw new Exception(_('unknown action'), 1);
	}

	$data['id'] = $clean['id'];
	$data['guest_book_id'] = $clean['guest_book_id'];
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>