<?php
// 해당 아이디 카운터 뽑기
$stmt_check = $con -> prepare('SELECT * FROM ' . $config['table'] . ' WHERE id=:id');
$stmt_check -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
$stmt_check -> execute();
$ca = $stmt_check -> fetch(PDO::FETCH_ASSOC);

if (empty($_SESSION['ADMIN'])) {
if (empty($ca['user_id'])) {

	$encrypted_password = sha1($clean['password'] . $config['user_pepper'] . $ca['salt']);

	if (strcmp($ca['encrypted_password'], $encrypted_password))
		throw new Exception(_('invalid_password'), 1);
} else {
		
		if ($_SESSION['USER_ID'] != $ca['user_id'])
			throw new Exception("Error Processing Request", 1);
}
}