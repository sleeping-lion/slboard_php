<?php

// 댓글 가져오기
$stmt_blog_comment_count = $con -> prepare('SELECT COUNT(*) FROM blog_comments');
$stmt_blog_comment_count -> execute();
$data['comment_total'] = $stmt_blog_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_blog_comment = $con -> prepare('SELECT * FROM blog_comments ORDER BY ID DESC');
	$stmt_blog_comment -> execute();
	$data['comment'] = $stmt_blog_comment -> fetchAll(PDO::FETCH_ASSOC);
}
