<?php

try {
	require_once __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';

	$clean = filter_input_array(INPUT_POST, array('email' => FILTER_VALIDATE_EMAIL, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'description' => FILTER_SANITIZE_STRING));

	if (empty($clean['email']))
		throw new Exception(_('invalid_email'), 1);

	if (empty($clean['name']))
		throw new Exception(_('invalid_name'), 1);

	if (empty($clean['password']))
		throw new Exception(_('invalid_password'), 1);

	if (empty($clean['description']))
		throw new Exception(_('invalid_description'), 1);
	
	$clean['encrypted_password']=crypt($clean['password'].$config['user_pepper'], '$2a$10$'.substr(md5(time()),0,22));

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	$clean['photo'] = check_file($_FILES['photo']);
	
	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('INSERT INTO users(email,name,encrypted_password,photo,description,created_at) VALUES(:email,:name,:encrypted_password,:photo,:description,now())');
	$stmt -> bindParam(':email', $clean['email'],PDO::PARAM_STR, 255);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_INT);
	$stmt -> bindParam(':encrypted_password', $clean['encrypted_password'],PDO::PARAM_STR, 255);
	$stmt -> bindParam(':photo', $clean['photo']['name'], PDO::PARAM_STR, 255);
	$stmt -> bindParam(':description', $clean['description'], PDO::PARAM_STR, 255);
	$stmt -> execute();
	
	$clean['id'] = $con -> lastInsertId();
	
	move_file($clean['photo'], 'users', $clean['id']);
	
	/******** 커밋 **********/
	$con -> commit();
	$data['inserted_id'] = $clean['id'];
	$_SESSION['MESSAGE'] = '성공적으로 글 써졌음';

	$sl_redirect = 'complete.php';
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	print_r($e);
	exit;
	if ($con) {
		if ($con -> inTransaction())
			/******** 롤백 **********/
			$con -> rollback();
		$con = null;
	}
	echo ';waeaeg';
exit;
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>