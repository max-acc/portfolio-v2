<?php

  $sql = "SELECT * FROM `language-db`";
  $languageBody = array();
  if ($result = $link->query($sql)) {
    $rowCount = mysqli_num_rows($result);

    while ($row = $result->fetch_assoc()) {
      /*print_r($row);*/
      array_push($languageBody, $row);
    }
    /*echo $taskInfo[0]["en"];*/
  }else {
    echo " <script> alert('The languages from the database have not loaded correctly!'); </script>" ;
  }

  $sql = "SELECT * FROM `project-db`";
  $projectBody = array();
  if ($result = $link->query($sql)) {
    $rowCount = mysqli_num_rows($result);

    while ($row = $result->fetch_assoc()) {
      /*print_r($row);*/
      array_push($projectBody, $row);
    }
    /*echo $taskInfo[0]["en"];*/
  }else {
    echo " <script> alert('The projects from the database have not loaded correctly!'); </script>" ;
  }

  $technologies = [
    "html" => "HTML",
    "css" => "CSS",
    "js" => "JavaScript",
    "sql" => "SQL",
    "php" => "PHP",
    "python" => "Python",
    "cpp" => "C++",
    "api" => "API",
    "arduino" => "Arduino",
    "ml" => "Machine Learning",
    "" => "",
  ]

 ?>
