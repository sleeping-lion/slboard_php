<?php

try {
	require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';

	require_once $adminOnly;
	
	$template['main']=$boardHtmlPath.DIRECTORY_SEPARATOR.'confirmDelete.html';
	
	require_once $foramtSuccessData;
} catch(Exception $e) {
	require_once $foramtErrorData;
}

?>