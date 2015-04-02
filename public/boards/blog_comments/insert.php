<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('blog_id' => FILTER_VALIDATE_INT, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'password_confirm' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if ($clean['password'] != $clean['password_confirm'])
		throw new Exception("Error Processing Request", 1);

	$clean['encrypted_password'] = '';

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO blog_comments(blog_id,user_id,name,encrypted_password,salt,content,created_at) VALUES(:blog_id,:user_id,:name,:encrypted_password,:salt,:content,now())');
	$stmt -> bindParam(':blog_id', $clean['blog_id'], PDO::PARAM_INT);
	$stmt -> bindParam(':user_id', $_SESSION['USER_ID'], PDO::PARAM_INT);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':encrypted_password', $clean['encrypted_password'], PDO::PARAM_STR, 255);
	$stmt -> bindParam(':salt', $clean['name'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':content', $clean['content'], PDO::PARAM_STR, 60);
	$stmt -> execute();

	$data['inserted_id'] = $con -> lastInsertId();

	/******** 커밋 **********/
	$con -> commit();

	$_SESSION['MESSAGE'] = _('successfully comment inserted');

	$sl_redirect = '../blogs/show.php?id=' . $clean['blog_id'];
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