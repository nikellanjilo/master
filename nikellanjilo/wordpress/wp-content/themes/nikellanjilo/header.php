﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
	<!-- 1. Link to jQuery (1.8 or later), -->
	<script src="<?php echo get_template_directory_uri().'/js/jquery.min.js'?>"></script>	<!-- 33 KB -->	
	<!-- fotorama.css & fotorama.js. -->
	<link href="<?php echo get_template_directory_uri().'/css/fotorama.css' ?>" rel="stylesheet"> <!-- 3 KB -->
	<script src="<?php echo get_template_directory_uri().'/js/fotorama.js'?>"></script>	<!-- 16 KB -->
	<script src="<?php echo get_template_directory_uri().'/js/mobile_index.js'?>"></script>
  <link rel="stylesheet" href="<?php echo get_template_directory_uri().'/css/my_style.css' ?>" media="screen" />
  
  
  <script src="<?php echo get_template_directory_uri().'/js/mobile.js'?>"></script>
<html>	 
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta charset="utf-8">
  <meta name = "description" content = "Морской котик знает все ... об электронике, сайтах и путешествиях" >
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php wp_title( '|', true, 'right' ); ?></title>
 </head>
 <body>
	 <div id = "header">
		 <a href = ""> N - Network</a> <br/>
		 Морской котик знает все о электронике, сайтах и путешествиях 
		 
    <form>
       <p>
			<input type="text" placeholder="Котик знает все, проверь" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Камооон...не бойся'" />
			<input type="submit" value="Найти">
		</p>
    </form>
	
	 </div>
	 
	 <div id="leftcol">
		<?php wp_nav_menu( array( 'theme_location' => 'my-custom-menu' ) ); ?>
	</div>