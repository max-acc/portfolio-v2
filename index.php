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

		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>

    <!-- Meta data -->
    <meta charset ="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">




	</head>


	<body>
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
		<div class="section project" style="">
			<h1>Projects</h1>
			<div style="min-height: 400px; margin-bottom: 50px;">
				<div class="slide-in-left-element project-page">
					<img src="img/stock_img.png" alt="">
					<h2>Project 1</h2>
					<p>ölajfdlöjaöskdlfjölaskdjfölasdkjfölkajsdöfkljasdöflkjasödlfkjaösldkfjöalsdjkföalskdfjöalsdkfjaösdlkfjasödlkfjasödlkfjasödlkfj</p>
				</div>

				<div class="slide-in-right-element project-page">
					<img src="img/stock_img.png" alt="">
					<h2>Project 1</h2>
					<p>ölajfdlöjaöskdlfjölaskdjfölasdkjfölkajsdöfkljasdöflkjasödlfkjaösldkfjöalsdjkföalskdfjöalsdkfjaösdlkfjasödlkfjasödlkfjasödlkfj</p>

				</div>
			</div>

			<div style="min-height: 400px;">
				<div class="slide-in-left-element project-page">
					<img src="img/stock_img.png" alt="">
					<h2>Project 1</h2>
					<p>ölajfdlöjaöskdlfjölaskdjfölasdkjfölkajsdöfkljasdöflkjasödlfkjaösldkfjöalsdjkföalskdfjöalsdkfjaösdlkfjasödlkfjasödlkfjasödlkfj</p>

				</div>

				<div class="slide-in-right-element project-page">
					<img src="img/stock_img.png" alt="">
					<h2>Project 1</h2>
					<p>ölajfdlöjaöskdlfjölaskdjfölasdkjfölkajsdöfkljasdöflkjasödlfkjaösldkfjöalsdjkföalskdfjöalsdkfjaösdlkfjasödlkfjasödlkfjasödlkfj</p>

				</div>
			</div>
		</div>

		<!-- About me ------------------------------------------------------------->
		<div class="section aboutme">
			<table>
				<tr>
					<th class="slide-in-left-element"></th>
					<th class="slide-in-right-element"><h1>About me</h1></th>
				</tr>
				<tr>
					<td class="background slide-in-left-element">Background</td>
					<td class= "description slide-in-right-element">Description</td>
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
