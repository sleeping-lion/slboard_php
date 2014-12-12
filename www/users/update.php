<?php

try {
	require_once __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';

	$clean = filter_input_array(INPUT_POST, array('email' => FILTER_VALIDATE_EMAIL, 'name' => FILTER_SANITIZE_STRING, 'password' => FILTER_SANITIZE_STRING, 'description' => FILTER_SANITIZE_STRING));

	if (empty($clean['email']))
		throw new Exception(_('invalid_email'), 1);

	if (empty($clean['name']))
		throw new Exception(_('invalid_name'), 1);

	if (empty($clean['description']))
		throw new Exception(_('invalid_description'), 1);

	if (!empty($clean['password']))
		$clean['encrypted_password'] = crypt($clean['password'] . $config['user_pepper'], '$2a$10$' . substr(md5(time()), 0, 22));

	if ($_SESSION['ADMIN']) {
		$clean['id'] = $_SESSION['USER_ID'];
	} else {
		$clean['id'] = $_SESSION['USER_ID'];
	}

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);
	
	if($_FILES['photo']['size'])
		$clean['photo'] = check_file($_FILES['photo']);

	/********  트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('UPDATE users SET name=:name,description=:description,updated_at=now() WHERE id=:id');
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> bindParam(':name', $clean['name'], PDO::PARAM_STR, 255);
	$stmt -> bindParam(':description', $clean['description'], PDO::PARAM_STR, 255);
	$stmt -> execute();

	if ($clean['photo']) {
		$stmt_update_photo = $con -> prepare('UPDATE users SET photo=:photo WHERE id=:id');
		$stmt_update_photo -> bindParam(':photo', $clean['photo']['name'], PDO::PARAM_STR, 255);
		$stmt_update_photo -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
		$stmt_update_photo -> execute();
		move_file($clean['photo'], 'users', $clean['id']);
	}

	/******** 커밋 **********/
	$con -> commit();
	$con = null;
	
	$sl_redirect='edit.php';
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	if ($con) {
		if ($con -> inTransaction())
			/******** 롤백 **********/
			$con -> rollback();
		$con = null;
	}

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>
