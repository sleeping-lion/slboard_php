<?php

try {
	require 'setting.php';

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'admin_only.php';

	$clean = filter_input_array(INPUT_POST, array('id'=>FILTER_VALIDATE_INT,'blog_category_id' => FILTER_VALIDATE_INT, 'title' => FILTER_SANITIZE_STRING, 'description' => FILTER_SANITIZE_STRING, 'tag' => FILTER_SANITIZE_STRING, 'content' => FILTER_SANITIZE_STRING));

	if (empty($clean['blog_category_id']))
		throw new Exception(_('empty or invalid category_id'), 1);

	if (empty($clean['title']))
		throw new Exception(_('empty or invalid title'), 1);

	if (empty($clean['description']))
		throw new Exception(_('empty or invalid description'), 1);

	if (empty($clean['content']))
		throw new Exception(_('empty or invalid content'), 1);

	if (empty($clean['tag']))
		throw new Exception(_('empty or invalid tag'), 1);

	$clean['tag'] = explode(',', $clean['tag']);
	foreach ($clean['tag'] as $index => $value) {
		$clean['tag'][$index] = trim($value);
	}

	// 커넥터(PDO) 가져오기
	$con = get_PDO($config_db);

	require '_check_exists_id.php';
	require '_check_auth.php';	

	/******** 트랙잭션 시작 **********/
	$con -> beginTransaction();

	$stmt = $con -> prepare('UPDATE blogs SET blog_category_id=:blog_category_id,title=:title,description=:description,updated_at=now() WHERE id=:id');
	$stmt -> bindParam(':blog_category_id', $clean['blog_category_id'], PDO::PARAM_INT);
	$stmt -> bindParam(':title', $clean['title'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':description', $clean['description'], PDO::PARAM_STR, 60);
	$stmt -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt -> execute();

	$stmt_content = $con -> prepare('UPDATE blog_contents SET content=:content WHERE id=:id');
	$stmt_content -> bindParam(':content', $clean['content'], PDO::PARAM_STR);
	$stmt_content -> bindParam(':id', $clean['id'], PDO::PARAM_INT);
	$stmt_content -> execute();

	/******** 커밋 **********/
	$con -> commit();
	$con = null;

	$sl_redirect = 'index.php';
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