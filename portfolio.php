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
<html lang="en">
	<head>
		<!-- Siteinitializiation-->
		<title><?php echo $page_name; ?> | Max Wenk</title>
		<link rel="icon" href="img/profile.png">

		<!-- Subpage links-->
		<link rel="stylesheet"  href="style/style.css"  type="text/css">
		<link rel="stylesheet"  href="style/index.css"  type="text/css">

		<script src="script.js"></script>

		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>

    <!-- Meta data -->
    <meta charset ="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

	</head>
  <body id="body">
    <!-- Header --------------------------------------------------------------->
		<header>
			<img title="Scroll Down" class="ext_1 scale-down-height-img" draggable="false" src="img/header_left.png" alt="">
			<img title="Scroll Down" class="ext_2 scale-down-height-img" draggable="false" src="img/header_right.png" alt="">
			<div class="header-bar">
				<div class="nav-name">
					<p>Max Wenk</p>
				</div>
				<div class="navigation">
					<a style="float: left; margin-left: 70px; text-align: right;" href="index.php">Home</a>
					<a style="float: right; margin-right: 70px; text-align: left; font-style: underline; font-weight: bold;" href="#">Portfolio</a>
				</div>
				<div class="language">
					<form class="" action="" method="post">
								<button class="btn btn-primary" type="submit" name="change_lang" title="<?php echo $languageBody[array_search('header-lang-select', array_column($languageBody, 'descriptor'))][$lang]; ?>">
									<?php
										if ($lang == "de") {
											echo '<img src="img/english.png" alt="">';
										}else {
											echo '<img src="img/german.png" alt="">';
										}
									 ?>
								</button>
					</form>
				</div>
			</div>
		</header>

    <!--<div class="space"></div>-->

    <?php

    $projectNumber = count($projectBody) ;

    if (($projectNumber % 2) == 1) {
      $projectLineCount = ($projectNumber +1) / 2;
    } else {
      $projectLineCount = $projectNumber / 2;
    }

    /*--- Dynamic loaded popups ----------------------------------------------*/
    for ($project=0; $project < $projectNumber; $project++) {
      $projectName = $projectBody[$project]['descriptor']; ?>
  		<div class="popup" id="<?php echo $projectName ?>">
  			<div class="popup-header" style="width: 80%; float: left;">
  				<h2>
  					<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
  				</h2>
  				<div class="technologies">
  					<?php
  						$technology = $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['technology'];
  						$technologySplit = explode(";", $technology);
  						foreach ($technologySplit as $item) {
  							$item = str_replace(' ', '', $item);
  							?><p class="<?php echo $item; ?>"><?php echo $technologies[$item]; ?></p><?php
  						}
  					?>
  				</div>
  				<div class="">
  					<?php
  						if ($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-webpage'] != "") {
  							?> <a href="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-webpage'];?>" target="_blank"><img src="img/browser.png" alt=""></a> <?php
  						}
  						if ($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-github'] != "") {
  							?> <a href="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-github'];?>" target="_blank"><img src="img/github.png" alt=""></a> <?php
  						}
  					 ?>
  				</div>
  			</div>
  			<div class="popup-header" style="width: 20%; float: right;">
  				<button class="popup-btn" onclick="showProjectPopUp('<?php echo $projectName; ?>')" style="cursor: pointer;">
  					&#10006;
  				</button>
  			</div>
  			<hr>
  			<p class="popup-text">
  				<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description'], array_column($languageBody, 'descriptor'))][$lang]; ?>
  			</p>
  		</div>
    <?php
  }?>



    <!--- Dynamic loaded project previews ------------------------------------->
    <div class="section project" style="">
			<h1>Projects</h1>
      <?php
        $tempProjectCounter = 0;

        for ($projectLine=0; $projectLine < $projectLineCount; $projectLine++) {
          ?>
          <div style="min-height: 450px; margin-bottom: 50px;">
            <?php
            for ($projectPerLine=0; $projectPerLine < 2; $projectPerLine++) {?>
              <div class="project-page
                <?php
                if (($tempProjectCounter % 2) == 0) {
                  echo "slide-in-left-element";
                } else {
                  echo "slide-in-right-element";
                }
                 ?>
              ">
      					<?php $projectName = $projectBody[$tempProjectCounter]['descriptor']; ?>
      					<img src="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-img'];?>" alt="">
      					<h2>
      						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
      					</h2>
      					<div class="technologies">
      						<?php
      							$technology = $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['technology'];
      							$technologySplit = explode(";", $technology);
      							foreach ($technologySplit as $item) {
      								$item = str_replace(' ', '', $item);
      								?><p class="<?php echo $item; ?>"><?php echo $technologies[$item]; ?></p><?php
      							}
      						?>
      					</div>

      					<p class="preview">
      						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description-short'], array_column($languageBody, 'descriptor'))][$lang]; ?>
      					</p>

      					<button class="popup-btn" onclick="showProjectPopUp('<?php echo $projectName; ?>')" style="cursor: pointer;">
      						<?php echo $languageBody[array_search('projects-learnmore', array_column($languageBody, 'descriptor'))][$lang]; ?>
      					</button>
      				</div>

              <?php
              $tempProjectCounter++;
            }

            ?>
          </div>

        <?php
        }
      ?>

  </body>
</html>
