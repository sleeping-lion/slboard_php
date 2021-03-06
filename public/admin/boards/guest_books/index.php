<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT, 'search_type' => FILTER_SANITIZE_STRING, 'search_word' => FILTER_SANITIZE_STRING, 'pageID' => FILTER_VALIDATE_INT, 'desc' => FILTER_VALIDATE_INT, 'order' => FILTER_SANITIZE_STRING));

	if (empty($clean['order'])) {
		$clean['order'] = 'id';
		$clean['desc'] = true;
	}

	$order_a = array('id' => 'id','name'=>'name','title' => 'title', 'count'=>'count', 'created' => 'created_at', 'updated' => 'updated_at');

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	$query_where = 'WHERE g.enable=1';	

	// 전체 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM guest_books AS g ' . $query_where);
	$stmt_count -> execute();
	$data['total'] = $stmt_count -> fetchColumn();

	// 게시물이 있으면
	if ($data['total']) {
		$query_order = get_order_query($order_a, $clean['order'], $clean['desc']);
		$query_limit = get_limit_query($clean['pageID']);
		
		$stmt = $con -> prepare('SELECT g.*,IF(g.user_id,u.name,g.name) as name FROM guest_books AS g LEFT JOIN users AS u ON g.user_id=u.id ' . $query_where . ' ' . $query_order . ' ' . $query_limit);
		$stmt -> execute();
		$data['list'] = $stmt -> fetchAll(PDO::FETCH_ASSOC);
	}

	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>