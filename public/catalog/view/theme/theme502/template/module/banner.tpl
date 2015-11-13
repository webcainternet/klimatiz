<style type="text/css">
	.banner01 {
		float: left;
	    background-size: 315px;
	    width: 315px;
	    height: 315px;
	}
</style>

<div id="banner0" class="banners row" style="margin-top: -95px;">
	<div class="banner01" style="background-image: url('/image/banner-01.png');">&nbsp;</div>
	<div class="banner01" style="background-image: url('/image/banner-02.png');">&nbsp;</div>
	<div class="banner01" style="background-image: url('/image/banner-03.png');">&nbsp;</div>
	<div class="banner01" style="background-image: url('/image/banner-04.png');">&nbsp;</div>
</div>


<div id="banner<?php echo $module; ?>" class="banners row">
	<?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
	<div class="col-sm-6">
		<div class="banner-box">
			<a class="clearfix" href="<?php echo $banner['link']; ?>">
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
				<?php if ($banner['description']) { ?>
				<div class="s-desc"><?php echo $banner['description']; ?></div>
				<?php } ?>
			</a>
		</div>
	</div>
	<?php } else { ?>
	<div class="col-sm-6">
		<div class="banner-box">
			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
			<?php if ($banner['description']) { ?>
			<div class="s-desc"><?php echo $banner['description']; ?></div>
			<?php } ?>
		</div>
	</div>
	<?php } ?>
	<?php } ?>
</div>

