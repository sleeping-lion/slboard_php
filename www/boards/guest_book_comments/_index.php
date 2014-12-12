<?php

// 댓글 가져오기
$stmt_guest_book_comment_count = $con -> prepare('SELECT COUNT(*) FROM guest_book_comments WHERE guest_book_id=:guest_book_id');
$stmt_guest_book_comment_count -> bindParam(':guest_book_id', $clean['id'], PDO::PARAM_INT);
$stmt_guest_book_comment_count -> execute();
$data['comment_total'] = $stmt_guest_book_comment_count -> fetchColumn();

if ($data['comment_total']) {
	$stmt_guest_book_comment = $con -> prepare('SELECT gbc.*,u.photo,IF(gbc.user_id,u.name,gbc.name) as name FROM guest_book_comments AS gbc LEFT JOIN users as u ON gbc.user_id=u.id WHERE guest_book_id=:guest_book_id ORDER BY ID DESC');
	$stmt_guest_book_comment -> bindParam(':guest_book_id', $clean['id'], PDO::PARAM_INT);
	$stmt_guest_book_comment -> execute();
	$data['comment'] = $stmt_guest_book_comment -> fetchAll(PDO::FETCH_ASSOC);
}
