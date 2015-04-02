<?php

try {
	require 'setting.php';

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'admin_only.php';
	
	$clean = filter_input_array(INPUT_GET, array('id'=>FILTER_VALIDATE_INT,'blog_category_id' => FILTER_VALIDATE_INT));
	
	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require '_check_exists_id.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	// 카테고리 가져오기
	$stmt_category_count = $con -> prepare('SELECT COUNT(*) FROM blog_categories');
	$stmt_category_count -> execute();
	$data['total_category'] = $stmt_category_count -> fetchColumn();

	if ($data['total_category']) {
		$stmt_category = $con -> prepare('SELECT * FROM blog_categories ORDER BY ID DESC');
		$stmt_category -> execute();
		$data['category'] = $stmt_category -> fetchAll(PDO::FETCH_ASSOC);
	}	
	
	$stmt = $con -> prepare('SELECT * FROM blogs WHERE id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();
	$data['content'] = $stmt -> fetch(PDO::FETCH_ASSOC);
	
	$con=null;	
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>