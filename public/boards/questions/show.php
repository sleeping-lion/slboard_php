<?php

try {
	require 'setting.php';
	
	define('QUESTION_COMMENT_DIRECTORY',BOARD_DIRECTORY . DIRECTORY_SEPARATOR . 'question_comments');
	define('QUESTION_COMMENT_HTML_DIRECTORY',BOARD_HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'question_comments');
	
	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT));	

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	require '_check_exists_id.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	$stmt = $con -> prepare('SELECT q.*,qc.content,IF(q.user_id,u.name,q.name) as name FROM questions As q INNER JOIN question_contents AS qc ON q.id=qc.id LEFT JOIN users AS u ON q.user_id=u.id WHERE q.id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();
	$data['content'] = $stmt -> fetch(PDO::FETCH_ASSOC);

	// 댓글 불러오기 
	require QUESTION_COMMENT_DIRECTORY . DIRECTORY_SEPARATOR . '_index.php';

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'insert_impressions.php';	

	/******** 커밋 **********/
	$con -> commit();
	$con = null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if ($con) {
		if ($con -> inTransaction())
			/******** 롤백 **********/
			$con -> rollback();
		$con = null;
	}

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>