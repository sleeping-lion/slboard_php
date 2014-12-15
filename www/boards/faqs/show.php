<?php

try {
	require 'setting.php';
	
	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT));
	
	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require '_check_exists_id.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';

	$stmt_content = $con -> prepare('SELECT * FROM faqs as f INNER JOIN faq_contents as fc ON f.id=fc.id WHERE f.id=:id');
	$stmt_content -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_content -> execute();
	$data['content'] = $stmt_content -> fetch(PDO::FETCH_ASSOC);

	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>