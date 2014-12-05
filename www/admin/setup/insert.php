<?php

try {
	require_once __DIR__ . DIRECTORY_SEPARATOR . 'setting.php';

	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('database_name' => FILTER_SANITIZE_STRING, 'database_user' => FILTER_SANITIZE_STRING, 'database_password' => FILTER_SANITIZE_STRING, 'database_host' => FILTER_SANITIZE_STRING));

	if (empty($clean['database_name']))
		throw new Exception('invalid_database_name', 1);

	if (empty($clean['database_user']))
		throw new Exception('invalid_database_user', 1);

	if (empty($clean['database_password']))
		throw new Exception('invalid_database_password', 1);

	if (empty($clean['database_host']))
		throw new Exception('invalid_database_host', 1);

	if (MODE == 'PRODUCTION') {
		/* 실제 데이터베이스 설정 */
		$config_db['hostname'] = $clean['database_host'];
		$config_db['username'] = $clean['database_user'];
		$config_db['database'] = $clean['database_name'];
		$config_db['password'] = $clean['database_password'];
		$config_db['dbdriver'] = 'mysql';
		$config_db['charset'] = 'utf8';
		$config_db['dbcollat'] = 'utf8_general_ci';
	} else {
		/* 개발  데이터베이스 설정 */
		$config_db['hostname'] = $clean['database_host'];
		$config_db['username'] = $clean['database_user'];
		$config_db['database'] = $clean['database_name'];
		$config_db['password'] = $clean['database_password'];
		$config_db['dbdriver'] = 'mysql';
		$config_db['charset'] = 'utf8';
		$config_db['dbcollat'] = 'utf8_general_ci';
	}

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}
?>