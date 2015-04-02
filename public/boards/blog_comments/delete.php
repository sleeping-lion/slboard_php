<?php

try {
	require 'setting.php';
	
	// 입력 필터	
	$clean = filter_input_array(INPUT_POST, array('id'=>FILTER_VALIDATE_INT,'question_id' => FILTER_VALIDATE_INT));		

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con->beginTransaction();
	
	$stmt = $con -> prepare('DELETE FROM blog_comments WHERE id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();
	
	$stmt_update = $con -> prepare('UPDATE blogs SET blog_comments_count=blog_comments_count-1 WHERE id=:id');
	$stmt_update -> bindParam(':id', $clean['question_id'], PDO::PARAM_INT);
	$stmt_update -> execute();		

	/******** 커밋 **********/
	$con->commit();
	$con=null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if($con) {
		if($con->inTransaction())	{
		/******** 롤백 **********/					
		$con->rollback();
		}
		$con=null;
	}	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>