<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700,400italic&amp;subset=latin,cyrillic' rel='stylesheet' type='text/css'>

<link rel="stylesheet"  href="catalog/view/theme/theme502/js/fancybox/jquery.fancybox.css" media="screen" />
<link href="catalog/view/theme/theme502/stylesheet/livesearch.css" rel="stylesheet">
<link href="catalog/view/theme/theme502/stylesheet/photoswipe.css" rel="stylesheet">
<link href="catalog/view/theme/theme502/js/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
<link href="catalog/view/theme/theme502/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/theme502/stylesheet/superfish.css" rel="stylesheet">
<link href="catalog/view/theme/theme502/stylesheet/responsive.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/theme/theme502/js/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/tm-stick-up.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/jquery.unveil.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/jquery.bxslider/jquery.bxslider.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/fancybox/jquery.fancybox.pack.js"></script>
<script src="catalog/view/theme/theme502/js/elavatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/superfish.js" type="text/javascript"></script>
<!--video script-->
<script src="catalog/view/theme/theme502/js/jquery.vide.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/jquery.touchSwipe.min.js" type="text/javascript"></script>
<!--Green Sock-->
<script src="catalog/view/theme/theme502/js/greensock/jquery.gsap.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/greensock/TimelineMax.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/greensock/TweenMax.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/greensock/jquery.scrollmagic.min.js" type="text/javascript"></script>


<!--photo swipe-->
<script src="catalog/view/theme/theme502/js/photo-swipe/klass.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/photo-swipe/code.photoswipe.jquery-3.0.5.js" type="text/javascript"></script>
<script src="catalog/view/theme/theme502/js/photo-swipe/code.photoswipe-3.0.5.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/theme502/js/script.js" type="text/javascript"></script>

<!--custom script-->
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>">
<!-- swipe menu -->
<div class="swipe">
	<div class="swipe-menu">
		<ul>
			
			<li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-user"></i> <span><?php echo $text_account; ?></span></a></li>
			<?php if ($logged) { ?>
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
			<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
			<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
			<?php } else { ?>
			<li><a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a></li>
			<li><a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><?php echo $text_login; ?></a></li>
			<?php } ?>
			<li><a href="<?php echo $wishlist; ?>" id="wishlist-total2" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span><?php echo $text_wishlist; ?></span></a></li>
			<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span><?php echo $text_shopping_cart; ?></span></a></li>
			<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span><?php echo $text_checkout; ?></span></a></li>
		</ul>
		<?php if ($maintenance == 0){ ?>
		<ul class="foot">
			<?php if ($informations) { ?>
			<?php foreach ($informations as $information) { ?>
			<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			<?php } ?>
			<?php } ?>
		</ul>
		<?php } ?>
		<ul class="foot foot-1">
			<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
		
		<ul class="foot foot-2">
			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		</ul>
		<ul class="foot foot-3">
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	</div>
</div>
<div id="page">
<div class="shadow"></div>
<div class="toprow-1">
	<a class="swipe-control" href="#"><i class="fa fa-align-justify"></i></a>
</div>

<header>
	<div class="top-panel"><div class="container"></div></div>	
	
	<div id="logo-block">
	<div class="container">		
		<div id="logo">
			<?php if ($logo) { ?>
			<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
			<?php } else { ?>
			<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			<?php } ?>
		</div>
		<div class="box-right">
			<?php echo $cart; ?>
			<a class="button-checkout" href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"> <i class="fa fa-share"></i><span><?php echo $text_checkout; ?></span></a>
			<div class="clear"></div>
			<div class="box-right-bottom" style="display: none;">
				<a class="button-register" href="<?php echo $register; ?>"><i class="fa fa-user"></i><?php echo $text_register; ?></a>
				<?php if ($logged) { ?>
					<a href="<?php echo $logout; ?>"><i class="fa fa-unlock"></i><?php echo $text_logout; ?></a>
				<?php } else { ?>
					<a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><?php echo $text_login; ?></a>
				<?php } ?>
			</div>
		</div>
		<div class="box-right2">
			<?php echo $currency; ?>
			<?php echo $language; ?>
			<ul class="soc-icon">
				<li><a href=""><i class="fa fa-facebook-square"></i></a></li>
				<li><a href=""><i class="fa fa-twitter-square"></i></a></li>
				<li><a href=""><i class="fa fa-google-plus-square"></i></a></li>
				<li><a href=""><i class="fa fa-youtube-square"></i></a></li>
				<li><a href=""><i class="fa fa-instagram"></i></a></li>
			</ul>
			<div class="clear"></div>
			<div id="top-links" class="nav pull-right">
				<div style="margin-right: 20px; font-size: 28px; margin-top: -12px; color: #6EC4AA;">11 97649-5157</div>
			<ul class="list-inline" style="display: none;">
				<li class="first"><a href="<?php echo $home; ?>"><i class="fa fa-home hidden-lg"></i><span class="hidden-sm hidden-md"><?php echo $text_home; ?></span></a></li>
				<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart  hidden-lg"></i> <span class="hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
				<li><a href="<?php echo $account; ?>"><i class="fa fa-user hidden-lg"></i><span class="hidden-sm hidden-md"><?php echo $text_account; ?></span></a></li>				
				<li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart  hidden-lg"></i> <span class="hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
			</ul>
			</div>			
		</div>
		</div>
	</div>
</header>
<?php if ($categories) { ?>
<div class="container">
	<div id="menu-gadget">
		<div id="menu-icon"><?php echo $text_category; ?></div>
		<?php if ($categories) {  echo $categories; } ?>
	</div>
</div>
<?php } ?>
<?php if ($categories) { ?>
<style type="text/css">
	.icondiv {
	    float: left;
	    width: 142.5px;
	    height: 70px;
	    background-color: #071242;
	    margin: 5px 5px 5px 0px;
	    text-align: center;
    	font-size: 10px;
	}
	.icondiv:hover {
		background-color: #6EC4AA;
	}
	.iconimg {
	    height: 50px;
	    margin-bottom: -6px;
	}
</style>
<div class="container">
	<div id="tm_menu">			
		
	<div style="display: inline-block;
    padding: 0px;
    font-size: 29px;
    line-height: 36px;
    text-transform: uppercase;
    color: #fff;
    width: 890px;
    background: #061043;">
    	
    	<div class="icondiv" style="margin-left: 5px;">
    		<div class="iconimg" style="background: url('/image/icon-gas.png') no-repeat center;">&nbsp;</div>
    		Aquecedor a gas
    	</div>

    	<div class="icondiv">
    		<div class="iconimg" style="background: url('/image/icon-solar.png') no-repeat center;">&nbsp;</div>
    		Aquecedor solar
    	</div>

    	<div class="icondiv">
    		<div class="iconimg" style="background: url('/image/icon-ar.png') no-repeat center; background-size: 25%;">&nbsp;</div>
    		Ar condicionado
    	</div>

    	<div class="icondiv">
    		<div class="iconimg" style="background: url('/image/icon-bomba.png') no-repeat center; background-size: 25%;">&nbsp;</div>
    		Bomba pressurizadora
    	</div>

    	<div class="icondiv">
    		<div class="iconimg" style="background: url('/image/icon-aquecedor.png') no-repeat center;">&nbsp;</div>
    		Climatizadores
    	</div>

    	<div class="icondiv">
    		<div class="iconimg" style="background: url('/image/icon-portateis.png') no-repeat center; background-size: 25%;">&nbsp;</div>
    		Portateis
    	</div>


	</div>

		<?php /* 
		<ul class="menu"><li><a class="button-category sf-with-ul" ><?php echo $text_category; ?><i class="fa fa-bars"></i></a><?php if ($categories) {  echo $categories; } ?></li></ul> */ ?>
		<?php echo $search; ?>


	</div>
</div>
<?php } ?>  
<p id="back-top"> <a href="#top"><span></span></a> </p>
