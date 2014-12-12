<?php

try {
	require __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';
	
	define('QUESTION_COMMENT_DIRECTORY',BOARD_DIRECTORY . DIRECTORY_SEPARATOR . 'question_comments');
	define('QUESTION_COMMENT_HTML_DIRECTORY',BOARD_HTML_DIRECTORY . DIRECTORY_SEPARATOR . 'question_comments');
	
	// 입력 필터
	$clean = filter_input_array(INPUT_GET, array('id' => FILTER_VALIDATE_INT));	

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	// 전체 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM questions WHERE id=:id');
	$stmt_count -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_count -> execute();
	
	if(!$stmt_count -> fetchColumn())
		throw new Exception("Error Processing Request", 1);
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'common_select.php';
	
	$stmt = $con -> prepare('SELECT q.*,qc.content,IF(q.user_id,u.name,q.name) as name FROM questions As q Inner Join question_contents As qc ON q.id=qc.id Left Join users As u On q.user_id=u.id WHERE q.id=:id');
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