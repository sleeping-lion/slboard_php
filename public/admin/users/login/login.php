<?php

try {
	require 'setting.php';
	
	$data['token'] = md5(uniqid(rand(), true));
	$_SESSION['LOGIN_TOKEN'] = $data['token'];

	$clean = filter_input_array(INPUT_POST, array('email' => FILTER_VALIDATE_EMAIL, 'password' => FILTER_SANITIZE_STRING, 'crypt' => FILTER_SANITIZE_STRING, 'return_url' => FILTER_SANITIZE_STRING));

	if (empty($clean['email']))
		throw new Exception(_('invalid_email'), 1);

	if (empty($clean['password']))
		throw new Exception(_('invalid_password'), 1);

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	$query_where = 'WHERE email=:email';

	// 전체 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM users ' . $query_where);
	$stmt_count -> bindParam(':email', $clean['email'], PDO::PARAM_STR);
	$stmt_count -> execute();
	$total = $stmt_count -> fetchColumn();

	if (!$total)
		throw new Exception(_('invalid_email_or_password'), 1);

	// 게시물이 있으면
	$stmt = $con -> prepare('SELECT 	id,name,encrypted_password,admin FROM users ' . $query_where);
	$stmt -> bindParam(':email', $clean['email'], PDO::PARAM_STR);
	$stmt -> execute();
	$user = $stmt -> fetch(PDO::FETCH_NUM);

	$encrypted_password = crypt($clean['password'].$config['user_pepper'], substr($user[2], 0, 29));

	if (strcmp($user[2], $encrypted_password))
		throw new Exception(_('invalid_email_or_password'), 1);

	$con = null;

	$_SESSION['USER_ID'] = $user[0];
	$_SESSION['USER_NAME'] = $user[1];

	if ($user[3])
		$_SESSION['ADMIN'] = true;

	if (empty($_REQUEST['json']) AND empty($clean['return_url'])) {
		$sl_redirect = '../../index.php';
	} else {
		$sl_redirect = $clean['return_url'];
	}

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con = null;

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>