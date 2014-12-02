<?php

//echo HTML_DIRECTORY . DIRECTORY_SEPARATOR. $config['theme'].DIRECTORY_SEPARATOR. $value;
$config['template']['ads'] = find_html($sl_theme, 'ad.php');

if($config['template']['ads'])
require_once $config['template']['ads'];
