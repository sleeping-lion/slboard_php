<?php

try {
	require dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';

	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'success.php';	
} catch(Exception $e) {
	require INCLUDE_DIRECTORY . DIRECTORY_SEPARATOR . 'error.php';
}

?>