<?php

// 댓글 가져오기
$stmt_question_comment_count = $con -> prepare('SELECT COUNT(*) FROM question_comments');
$stmt_question_comment_count -> execute();
$data['comment_total'] = $stmt_question_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_question_comment = $con -> prepare('SELECT * FROM question_comments ORDER BY ID DESC');
	$stmt_question_comment -> execute();
	$data['comment'] = $stmt_question_comment -> fetchAll(PDO::FETCH_ASSOC);
}
