<?php

	if(isset($config['controller']) AND isset($config['action'])) {
	//echo HTML_DIRECTORY . DIRECTORY_SEPARATOR. $config['theme'].DIRECTORY_SEPARATOR. $value;
		$config['template']['breadcrumbs'] =find_html($sl_theme,'breadcrumbs.php');
		
		if (empty($config['template']['breadcrumbs']))
			throw new Exception('breadcrumbs 설정되지 않았습니다.');
		
		require_once $config['template']['breadcrumbs'];
		}