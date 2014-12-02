<?php

try {
	require __DIR__.DIRECTORY_SEPARATOR.'setting.php';

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR .'admin_only.php';
	
	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	$stmt_delete = $con -> prepare('DELETE * FROM faqs WHERE id=:id');
	$stmt_delete -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_delete -> execute();
	
	$con=null;	

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>