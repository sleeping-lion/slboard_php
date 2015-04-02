<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('id' => FILTER_VALIDATE_INT, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'password_confirm' => FILTER_SANITIZE_STRING, 'title' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if (strcmp($clean['password'],$clean['password_confirm']))
		throw new Exception(_('password_password_confirm_not_match'), 204);

	$clean['salt']=substr(md5(time()),0,20);
	$clean['encrypted_password']=sha1($clean['password'].$config['user_pepper'].$clean['salt']);
	
	if(isset($_SESSION['ADMIN'])) {
		$clean['user_id']=$_SESSION['USER_ID'];
	} else {
		$clean['user_id']=$_SESSION['USER_ID'];
	}

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO questions(user_id,name,encrypted_password,salt,title,created_at) VALUES(:user_id,:name,:encrypted_password,:salt,:title,now())');
	$stmt -> bindParam(':user_id',$clean['user_id'], PDO::PARAM_INT);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':encrypted_password', $clean['encrypted_password'], PDO::PARAM_STR, 40);
	$stmt -> bindParam(':salt', $clean['salt'], PDO::PARAM_STR, 20);
	$stmt -> bindParam(':title', $clean['title'], PDO::PARAM_STR, 60);
	$stmt -> execute();

	$clean['id'] = $con -> lastInsertId();

	$stmt_content = $con -> prepare('INSERT INTO question_contents(id,content) VALUES(:id,:content)');
	$stmt_content -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_content -> bindParam(':content', $clean['content'], PDO::PARAM_STR);
	$stmt_content -> execute();	

	/******** 커밋 **********/
	$con -> commit();
	$data['inserted_id'] = $clean['id'];
	$_SESSION['MESSAGE'] = _('successfully artcile inserted');	

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