<?php

try {
	require_once __DIR__.DIRECTORY_SEPARATOR.'setting.php';
	
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'admin_only.php';	
	
	$clean = filter_input_array(INPUT_GET, array('gallery_category_id'=>FILTER_VALIDATE_INT));

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	// 카테고리 가져오기
	$stmt_category_count = $con -> prepare('SELECT COUNT(*) FROM gallery_categories');
	$stmt_category_count -> execute();
	$total_category_a = $stmt_category_count -> fetch(PDO::FETCH_NUM);
	$total_category = $total_category_a[0];

	if ($total_category) {
		$stmt_category = $con -> prepare('SELECT * FROM gallery_categories ORDER BY ID DESC');
		$stmt_category -> execute();
		$data['category'] = $stmt_category -> fetchAll(PDO::FETCH_ASSOC);
	}	
	
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>