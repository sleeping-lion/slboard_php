	<?php
	// 해당 아이디 카운터 뽑기
	$stmt_count = $con -> prepare('SELECT COUNT(*) FROM '.$config['table'].' WHERE id=:id');
	$stmt_count -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_count -> execute();
	
	if(!$stmt_count -> fetchColumn())
		throw new Exception("Error Processing Request", 1);