<?php

try {
	require dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';
	
	$clean = filter_input_array(INPUT_GET, array('email' => FILTER_VALIDATE_EMAIL));

	if (empty($clean['email']))
		throw new Exception(_('invalid_email'), 1);
	
	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	// 전체 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM users WHERE email=:email');
	$stmt_count -> bindParam(':email', $clean['email'], PDO::PARAM_STR);
	$stmt_count -> execute();
	$total = $stmt_count -> fetchColumn();

	if ($total) {
		$data['exists']=true;
	} else {
		$data['exists']=false;
	}
	
	$con=null;

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';
} catch(Exception $e) {
	$con=null;	
	
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>