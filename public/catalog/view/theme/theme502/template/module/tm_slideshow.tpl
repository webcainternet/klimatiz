<style type="text/css">
	.itenshome {
		display: inline-block;
		width: 32%;
		text-align: center;
		height: 47px;
		border-right: solid 1px #FFFFFF;
		padding-top: 6px;
	}
	.homeespaco {
		    background-color: #6EC4AA;
		    width: 1230px;
		    margin: auto;
		    height: 47px;
		    color: #ffffff;
		    line-height: 17px;
		    font-size: 16px;
	}
	.iconeshome {
	    background-repeat: no-repeat;
	    background-size: 25px;
	    background-position: 5px 5px;
	}
</style>
<div style="background-color: #6EC4AA;">
	<div class="homeespaco">
	<div class="itenshome"><div class="iconeshome" style="width: 300px; margin: auto; background-image: url('/image/ic_build_white_48dp_1x.png');">
		Mais de 1000 técnicos credenciados<br>Komeco em todo o Brasil</div></div>
	<div class="itenshome"><div class="iconeshome" style="width: 235px; margin: auto; background-image: url('/image/ic_https_white_48dp_1x.png');">Compre com segurança<br>Site  100% seguro</div></div>
	<a class="mousehover" href="http://www.agaplink.com/" target="_blank" style="color: #FFF;">
		<div class="itenshome mousehover" style="border: 0px;">
			<div class="iconeshome mousehover" style="width: 335px; margin: auto; background-image: url('/image/ic_face2_white_48dp_1x.png'); background-size: 35px; background-position: 0px;">Comprando um produto, você escolhe a<br>entidade social que queira ajudar</div>
		</div>
	</a>
	</div>
</div>
<script>
	jQuery(function(){
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			navigation: true,
			playPause: false,
			thumbnails: false,
			navigationHover: false,
			barPosition: 'top',
			loader: false,
			time: 3000,
			transPeriod:800,
			alignment: 'center',
			autoAdvance: true,
			mobileAutoAdvance: true,
			barDirection: 'leftToRight', 
			barPosition: 'bottom',
			easing: 'easeInOutExpo',
			fx: 'simpleFade',
			height: '30.24%',
			minHeight: '200px',
			hover: true,
			pagination: false,
			loaderColor			: '#1f1f1f', 
			loaderBgColor		: 'transparent',
			loaderOpacity		: 1,
			loaderPadding		: 0,
			loaderStroke		: 3,
			});
	});
</script>
<div class="fluid_container">
	<div id="camera_wrap_<?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
		<div title="<?php echo $banner['title']; ?>" data-thumb="<?php echo $banner['image']; ?>" <?php if ($banner['link']) { ?> data-link="<?php echo $banner['link']; ?>"<?php } ?> data-src="<?php echo $banner['image']; ?>">
			<?php if ($banner['description']) { ?>
			<div class="camera_caption fadeIn">
				<?php echo $banner['description']; ?>
			</div>
			<?php } ?>
		</div>
	<?php } ?>
	</div>
	<div class="clear"></div>
</div>