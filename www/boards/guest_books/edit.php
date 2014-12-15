<?php

try {
	require 'setting.php';
	
	// 입력 필터 
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT));

	if(empty($clean['id']))
		throw new Exception(_('no_passed_id'), 1);	
	
	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require '_check_exists_id.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	$stmt = $con -> prepare('SELECT gb.*,gbc.content,IF(gb.user_id,u.name,gb.name) as name FROM guest_books As gb Inner Join guest_book_contents As gbc ON gb.id=gbc.id Left Join users As u On gb.user_id=u.id WHERE gb.id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();
	$data['content'] = $stmt -> fetch(PDO::FETCH_ASSOC);
	
	$con=null;	
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>