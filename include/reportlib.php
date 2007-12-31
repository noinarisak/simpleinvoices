<?
require_once("./config/config.php");

// needed for /library/phpreports to function
$val = ini_get("include_path");
// PATH_SEPARATOR is ":" for non-windows and ":" for windows
$val = $val . PATH_SEPARATOR . "./library/phpreports";
ini_set("include_path", $val);

require_once("PHPReportMaker.php");

//stop the direct browsing to this file - let index.php handle which files get displayed
if (!defined("BROWSE")) {
   echo "You Cannot Access This Script Directly, Have a Nice Day.";
   exit();
}

	$oRpt = new PHPReportMaker();

	$oRpt->setUser($db_user);
	$oRpt->setPassword($db_password);
	$oRpt->setDatabase($db_name);
	
// Non PDO usage
	$oRpt->setConnection($db_host); 
	$oRpt->setDatabaseInterface($db_server);
// End Non PDO usage

// PDO Usage
//   $oRpt->setDatabaseInterface("pdo");
//   if ($db_server == 'pgsql') {
//      $oRpt->setConnection("pgsql:host=$db_host");
//   } else {
//      $oRpt->setConnection("mysql:host=$db_host");
//   }
// End PDO Usage

?>