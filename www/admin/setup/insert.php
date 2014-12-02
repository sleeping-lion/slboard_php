<?php

try {
	require_once __DIR__.DIRECTORY_SEPARATOR.'setting.php';
	
	// 입력 필터
	$clean = filter_input_array(INPUT_POST, array('database_name' => FILTER_SANITIZE_STRING,'database_user' => FILTER_SANITIZE_STRING,'database_password' => FILTER_SANITIZE_STRING));

	
	
	if(MODE=='PRODUCTION') {
/* 실제 데이터베이스 설정 */
$config_db['hostname'] = 'localhost';
$config_db['username'] = 'toughjjh';
$config_db['database'] = 'framework';
$config_db['password'] = 'jjh7479';
$config_db['dbdriver'] = 'mysql';
$config_db['charset'] = 'utf8';
$config_db['dbcollat'] = 'utf8_general_ci';
} else {
/* 개발  데이터베이스 설정 */
$config_db['hostname'] = 'localhost';
$config_db['username'] = 'toughjjh';
$config_db['database'] = 'framework';
$config_db['password'] = 'jjh7479';
$config_db['dbdriver'] = 'mysql';
$config_db['charset'] = 'utf8';
$config_db['dbcollat'] = 'utf8_general_ci';
}
	

	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	require_once INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>