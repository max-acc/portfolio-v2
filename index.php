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

	if (!empty($_POST) && $_SERVER['REQUEST_METHOD'] == 'POST') {
		if ($lang == "en") {
			$lang = "de";
			$_SESSION['lang'] = $lang;
			header("location: index.php");
		}else {
			$lang = "en";
			$_SESSION['lang'] = $lang;
			header("location: index.php");
		}

	}
	//echo $lang;


	$page_name = "Home";

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
		<div id="start" class="pre-landing">
			<div class="page-sep left">
				<div class="css-typing">
				  <p><?php echo $languageBody[array_search('prelanding-left-hey', array_column($languageBody, 'descriptor'))][$lang]; ?></p>
				  <p><?php echo $languageBody[array_search('prelanding-left-p1', array_column($languageBody, 'descriptor'))][$lang]; ?></p>
				  <p><?php echo $languageBody[array_search('prelanding-left-p2', array_column($languageBody, 'descriptor'))][$lang]; ?></p>
				</div>
			</div>
			<div class="page-sep right">
				<div class="home_picture_container">
				<img class="pb-img" src="img/profile.jpg" alt="Profile Picture">
					<div class="home_picture_overlay">
						<div><span class="lang-home_picture_description"><?php echo $languageBody[array_search('prelanding-right-pbimgdes', array_column($languageBody, 'descriptor'))][$lang]; ?></span></div>
					</div>
				</div>

				<div class="home_links">
					<div class="home_links_container">
						<ul>
							<li title="GitHub"><a href="https://github.com/max-acc" target="_blank"><img src="img/github.png" alt="GitHub" class="github"></a></li>
							<li title="LinkedIn"><a href="https://www.linkedin.com/in/maximilian-wenk-68308718b" target="_blank"><img src="img/linkedin_v2.png" alt="LinkedIn" class="linkedin"></a></li>
						</ul>
					</div>
				</div>
			</div>

			<!-- Go Forward -->
      <div class="forward-msg">
				<div class="subdiv" title="<?php echo $languageBody[array_search('prelanding-scrolldown', array_column($languageBody, 'descriptor'))][$lang]; ?>">
					<span class="material-symbols-outlined wiggle">
	          expand_more
	        </span>
				</div>
      </div>
		</div>
		<!-- Header --------------------------------------------------------------->
		<header>
			<img title="Scroll Down" class="ext_1 scale-down-height-img" draggable="false" src="img/header_left.png" alt="">
			<img title="Scroll Down" class="ext_2 scale-down-height-img" draggable="false" src="img/header_right.png" alt="">
			<div class="header-bar">
				<div class="nav-name">
					<p>Max Wenk</p>
				</div>
				<div class="navigation">
					<a style="float: left; margin-left: 70px; text-align: right; font-style: underline; font-weight: bold;" href="#start">Home</a>
					<a style="float: right; margin-right: 70px; text-align: left;" href="portfolio.php">Portfolio</a>
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

		<!-- Landing Page --------------------------------------------------------->
		<div class="section" style="display: none;">
		</div>

		<!-- Projects ------------------------------------------------------------->
		<div class="popup" id="mypopup2">
			popuptext
			<button class="popup-btn" onclick="showProjectPopUp('mypopup2')" style="cursor: pointer;">
				Learn More

			</button>
		</div>
		<div class="popup" id="mypopup">
			popuptext
			<button class="popup-btn" onclick="showProjectPopUp('mypopup')" style="cursor: pointer;">
				Learn More

			</button>
		</div>
		<div class="section project" style="">
			<h1>Projects</h1>

			<div style="min-height: 400px; margin-bottom: 50px;">
				<div class="slide-in-left-element project-page">
					<?php $projectName = 'projects-p-tb'; ?>
					<img src="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-img'];?>" alt="">
					<h2>
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</h2>
					<div class="technologies">
						<p class="python"><?php echo $technologies["python"]; ?></p>
						<p class="sql"><?php echo $technologies["sql"]; ?></p>
						<p class="api"><?php echo $technologies["api"]; ?></p>
					</div>

					<p class="preview">
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description-short'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</p>

					<button class="popup-btn" onclick="showProjectPopUp('mypopup2')" style="cursor: pointer;">
						<?php echo $languageBody[array_search('projects-learnmore', array_column($languageBody, 'descriptor'))][$lang]; ?>
					</button>
				</div>

				<div class="slide-in-right-element project-page">
					<?php $projectName = 'projects-p-agc'; ?>
					<img src="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-img'];?>" alt="">
					<h2>
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</h2>
					<div class="technologies">
						<p class="cpp"><?php echo $technologies["cpp"]; ?></p>
						<p class="arduino"><?php echo $technologies["arduino"]; ?></p>
					</div>

					<p class="preview">
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description-short'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</p>

					<button class="popup-btn" onclick="showProjectPopUp('mypopup')" style="cursor: pointer;">
						<?php echo $languageBody[array_search('projects-learnmore', array_column($languageBody, 'descriptor'))][$lang]; ?>
					</button>
				</div>
			</div>


			<div style="min-height: 400px;">
				<div class="slide-in-left-element project-page">
					<?php $projectName = 'projects-p-nr'; ?>
					<img src="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-img'];?>" alt="">
					<h2>
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</h2>
					<div class="technologies">
						<p class="python"><?php echo $technologies["python"]; ?></p>
						<p class="ml"><?php echo $technologies["ml"]; ?></p>
					</div>

					<p class="preview">
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description-short'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</p>

					<button class="popup-btn" onclick="showProjectPopUp('mypopup2')" style="cursor: pointer;">
						<?php echo $languageBody[array_search('projects-learnmore', array_column($languageBody, 'descriptor'))][$lang]; ?>
					</button>
				</div>

				<div class="slide-in-right-element project-page">
					<?php $projectName = 'projects-p-pv2'; ?>
					<img src="<?php echo $projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['link-img'];?>" alt="">
					<h2>
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['name'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</h2>
					<div class="technologies">
						<p class="html"><?php echo $technologies["html"]; ?></p>
						<p class="css"><?php echo $technologies["css"]; ?></p>
						<p class="js"><?php echo $technologies["js"]; ?></p>
						<p class="sql"><?php echo $technologies["sql"]; ?></p>
						<p class="php"><?php echo $technologies["php"]; ?></p>
					</div>
					<p class="preview">
						<?php echo $languageBody[array_search($projectBody[array_search($projectName, array_column($projectBody, 'descriptor'))]['description-short'], array_column($languageBody, 'descriptor'))][$lang]; ?>
					</p>

					<button class="popup-btn" onclick="showProjectPopUp('mypopup2')" style="cursor: pointer;">
						<?php echo $languageBody[array_search('projects-learnmore', array_column($languageBody, 'descriptor'))][$lang]; ?>
					</button>
				</div>
			</div>
		</div>

		<!-- About me ------------------------------------------------------------->
		<div class="section aboutme">
			<table>
				<tr>
					<th class="slide-in-left-element"></th>
					<th class="slide-in-right-element" style="margin-bottom: 25px;"><h1><?php echo $languageBody[array_search('aboutme-heading', array_column($languageBody, 'descriptor'))][$lang]; ?></h1></th>
				</tr>
				<tr>
					<td class="background slide-in-left-element">Background</td>
					<td class= "description slide-in-right-element"><?php echo $languageBody[array_search('aboutme-paragraph', array_column($languageBody, 'descriptor'))][$lang]; ?></td>
				</tr>
			</table>
		</div>

		<!-- Cantact page --------------------------------------------------------->
		<div class="section contact scale-up-element">
			<div>
				<p>Get in Touch!</p>
				<a href="mailto:max.wenk@protonmail.com">Contact me</a>
			</div>
		</div>
	</body>
</html>
