<?php

// 댓글 가져오기
$stmt_blog_comment_count = $con -> prepare('SELECT COUNT(*) FROM blog_comments WHERE blog_id=:blog_id');
$stmt_blog_comment_count -> bindParam(':blog_id', $clean['id'], PDO::PARAM_INT);
$stmt_blog_comment_count -> execute();
$data['comment_total'] = $stmt_blog_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_blog_comment = $con -> prepare('SELECT bc.*,u.photo,IF(bc.user_id,u.name,bc.name) as name FROM blog_comments AS bc LEFT JOIN users as u ON bc.user_id=u.id WHERE blog_id=:blog_id ORDER BY ID DESC');
	$stmt_blog_comment -> bindParam(':blog_id', $clean['id'], PDO::PARAM_INT);
	$stmt_blog_comment -> execute();
	$data['comment'] = $stmt_blog_comment -> fetchAll(PDO::FETCH_ASSOC);
}
