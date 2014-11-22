<?php

try {
	require __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';

	$clean = filter_input_array(INPUT_POST, array('title' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));
	
	if(empty($_SESSION['USER_ID']))
		throw new Exception('invalid_user_id', 1);

	if (empty($clean['title']))
		throw new Exception('invalid_title', 1);

	if (empty($clean['content']))
		throw new Exception('invalid_content', 1);

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO notices(user_id,title,created_at) VALUES(:user_id,:title,now())');
	$stmt -> bindParam(':user_id', $_SESSION['USER_ID'], PDO::PARAM_INT);
	$stmt -> bindParam(':title', $clean['title'], PDO::PARAM_STR, 60);
	$stmt -> execute();
	
	$clean['id'] = $con -> lastInsertId();

	$stmt_content = $con -> prepare('INSERT INTO notice_contents(id,content) VALUES(:id,:content)');
	$stmt_content -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_content -> bindParam(':content', $clean['content'], PDO::PARAM_STR);
	$stmt_content -> execute();	

	/******** 커밋 **********/
	$con -> commit();
	$data['inserted_id'] = $clean['id'];

	$con = null;

	$sl_redirect = 'index.php';
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if ($con) {
		if ($con -> inTransaction()) {
			/******** 롤백 **********/
			$con -> rollback();
		}
		$con = null;
	}

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>