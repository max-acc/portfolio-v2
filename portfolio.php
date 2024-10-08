<?php
  session_start();

  if(isSet($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
    //echo $lang;
    $_SESSION['lang'] = $lang;
  }else {
    $lang = "en";
    $_SESSION['lang'] = $lang;
  }

  require_once "config/config.php";

  require_once "config/load.php";

  if (!empty($_POST) && $_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($lang == "en") {
      $lang = "de";
      $_SESSION['lang'] = $lang;
      header("location: portfolio.php");
    }else {
      $lang = "en";
      $_SESSION['lang'] = $lang;
      header("location: portfolio.php");
    }

  }
  //echo $lang;


  $page_name = "Portfolio";

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

  </body>
</html>
