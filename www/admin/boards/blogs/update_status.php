<?php

try {
	require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'setting.php';

	require_once $getDbConnectionClassPath;
	$con=GetDbConnection::getConnection($configDb);

	// 트랙잭션 시작
	$con->beginTransaction();

	require_once dirname(__FILE__).'/../../../../class/board/maintainQuestion/setMaintainQuestion.php';
	$setMaintainQuestion=new SetMaintainQuestion($con);
	$insertedId=$setMaintainQuestion->update_status(new MaintainQuestionType($_POST));

	/******** 커밋 **********/
	$con->commit();
	$con=null;

	require_once $formatSuccessClassPath;
	$formatData=new FormatSuccessData($config);
	$formatData->echoFormatData('index.php');
} catch(Exception $e) {
	if($con) {
		if($con->inTransaction())
		/******** 롤백 **********/			
		$con->rollback();
		$con=null;
	}

	require_once $foramtErrorData;
}

?>