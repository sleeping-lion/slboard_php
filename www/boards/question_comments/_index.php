<?php

// 댓글 가져오기
$stmt_question_comment_count = $con -> prepare('SELECT COUNT(*) FROM question_comments WHERE question_id=:question_id');
$stmt_question_comment_count -> bindParam(':question_id', $clean['id'], PDO::PARAM_INT);
$stmt_question_comment_count -> execute();
$data['comment_total'] = $stmt_question_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_question_comment = $con -> prepare('SELECT qc.*,u.photo,IF(qc.user_id,u.name,qc.name) as name  FROM question_comments AS qc LEFT JOIN users as u ON qc.user_id=u.id WHERE question_id=:question_id ORDER BY ID DESC');
	$stmt_question_comment -> bindParam(':question_id', $clean['id'], PDO::PARAM_INT);	
	$stmt_question_comment -> execute();
	$data['comment'] = $stmt_question_comment -> fetchAll(PDO::FETCH_ASSOC);
}
