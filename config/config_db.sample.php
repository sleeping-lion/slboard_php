<?php

if (MODE == 'PRODUCTION') {
	/* 실제 데이터베이스 설정 */
	$config_db['hostname'] = 'localhost';
	$config_db['username'] = 'username';
	$config_db['database'] = 'database';
	$config_db['password'] = 'password';
	$config_db['dbdriver'] = 'mysql';
	$config_db['charset'] = 'utf8';
	$config_db['dbcollat'] = 'utf8_general_ci';
} else {
	/* 개발  데이터베이스 설정 */
	$config_db['hostname'] = 'localhost';
	$config_db['username'] = 'username';
	$config_db['database'] = 'database';
	$config_db['password'] = 'password';
	$config_db['dbdriver'] = 'mysql';
	$config_db['charset'] = 'utf8';
	$config_db['dbcollat'] = 'utf8_general_ci';
}
