<style type="text/css">
	.itenshome {
		display: inline-block;
		width: 32%;
		text-align: center;
		height: 47px;
	}
	.homeespaco {
		    background-color: #6EC4AA;
		    width: 1230px;
		    margin: auto;
		    height: 47px;
		    color: #ffffff;
		    line-height: 17px;
		    padding-top: 6px;
		    letter-spacing: 3px;
		    font-size: 12px;
	}
</style>
<div style="background-color: #6EC4AA;">
	<div class="homeespaco">
	<div class="itenshome">Mais de 1000 assistências <br>técnicas em todo o Brasil</div>
	<div class="itenshome">Compre com segurança<br>Site  100% seguro</div>
	<div class="itenshome">Comprando um produto, você escolhe a<br>entidade social que queira ajudar</div>
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