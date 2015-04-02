<?php

try {
	require 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('guest_book_id' => FILTER_VALIDATE_INT, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'password_confirm' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if (strcmp($clean['password'],$clean['password_confirm']))
		throw new Exception("Error Processing Request", 1);

	$clean['salt']=substr(md5(time()),0,20);
	$clean['encrypted_password']=sha1($clean['password'].$config['user_pepper'].$clean['salt']);

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO guest_book_comments(guest_book_id,user_id,name,encrypted_password,salt,content,created_at) VALUES(:guest_book_id,:user_id,:name,:encrypted_password,:salt,:content,now())');
	$stmt -> bindParam(':guest_book_id', $clean['guest_book_id'], PDO::PARAM_INT);
	$stmt -> bindParam(':user_id', $_SESSION['USER_ID'], PDO::PARAM_INT);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':encrypted_password', $clean['encrypted_password'], PDO::PARAM_STR, 40);
	$stmt -> bindParam(':salt', $clean['salt'], PDO::PARAM_STR, 20);
	$stmt -> bindParam(':content', $clean['content'], PDO::PARAM_STR, 60);
	$stmt -> execute();

	$data['inserted_id'] = $con -> lastInsertId();
	
	$stmt_update = $con -> prepare('UPDATE guest_books SET guest_book_comments_count=guest_book_comments_count+1 WHERE id=:id');
	$stmt_update -> bindParam(':id', $clean['guest_book_id'], PDO::PARAM_INT);
	$stmt_update -> execute();		

	/******** 커밋 **********/
	$con -> commit();
	$con=null;

	$_SESSION['MESSAGE'] = _('successfully comment inserted');
	$sl_redirect = '../guest_books/show.php?id=' . $clean['guest_book_id'];
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