<?php
$syslogFile = "/tmp/pull.log" ;
#systemLog("=================start==================") ;
#shell_exec('sh /opt/www/up.sh');
echo "<pre>";
system('sh /opt/www/up.sh');
echo "</pre>";
#systemLog("=================end==================") ;
	
/*function systemLog($msg){
	global $syslogFile;
	echo $syslogFile;
	$remote_address = !empty($_SERVER['REMOTE_ADDR'])?$_SERVER['REMOTE_ADDR']:"localhost" ;
	return error_log(date("[Y-m-d H:i:s]")."\t".$remote_address."\t".$msg."\n",3,$syslogFile);
}
*/
?>
