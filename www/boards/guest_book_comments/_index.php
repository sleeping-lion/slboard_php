<?php

// 댓글 가져오기
$stmt_guest_book_comment_count = $con -> prepare('SELECT COUNT(*) FROM guest_book_comments');
$stmt_guest_book_comment_count -> execute();
$data['comment_total'] = $stmt_guest_book_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_guest_book_comment = $con -> prepare('SELECT * FROM guest_book_comments ORDER BY ID DESC');
	$stmt_guest_book_comment -> execute();
	$data['comment'] = $stmt_guest_book_comment -> fetchAll(PDO::FETCH_ASSOC);
}
