<?php

try {
	require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';

	require_once $getDbConnectionClassPath;
	$con=GetDbConnection::getConnection($configDb);

	require_once $getContentCategoryClassPath;
	$getContentCategory=new GetGalleryCategory($con);
	$data['category']=$getContentCategory->getList(new GetGalleryCategoryRequestType());

	require_once $getContentClassPath;
	$getContent=new GetGallery($con);
	$data['content']=$getContent->getContent(new GetGalleryRequestType($_GET));

	$con=null;

	require_once $foramtSuccessData;
} catch(Exception $e) {
	$con=null;

	require_once $foramtErrorData;
}

?>