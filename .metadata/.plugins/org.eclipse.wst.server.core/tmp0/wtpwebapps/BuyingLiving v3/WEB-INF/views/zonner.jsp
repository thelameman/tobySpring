<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 7]>

<html class="ie ie7" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Homepage | B&L</title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback"
	href="http://themes.fruitfulcode.com/zoner/xmlrpc.php">
<meta name='robots' content='noindex,follow' />
<link rel="alternate" type="application/rss+xml"
	title="Zoner &raquo; Feed"
	href="http://themes.fruitfulcode.com/zoner/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Zoner &raquo; Comments Feed"
	href="http://themes.fruitfulcode.com/zoner/comments/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Zoner &raquo; Homepage Comments Feed"
	href="http://themes.fruitfulcode.com/zoner/homepage/feed/" />
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"http:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-includes\/js\/wp-emoji-release.min.js?ver=201a87ed354d4d101903f99fa0251b3d"}};
			!function(a,b,c){function d(a){var c=b.createElement("canvas"),d=c.getContext&&c.getContext("2d");return d&&d.fillText?(d.textBaseline="top",d.font="600 32px Arial","flag"===a?(d.fillText(String.fromCharCode(55356,56806,55356,56826),0,0),c.toDataURL().length>3e3):("simple"===a?d.fillText(String.fromCharCode(55357,56835),0,0):d.fillText(String.fromCharCode(55356,57135),0,0),0!==d.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=2266aed1d1ad1c546afc98030e20eba0&libraries=services,clusterer""></script>
<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDSKnc0zJv56WDGUNeBa68F4wE3XHEKmuY">
	</script>
<script src="resources/js/jquery-2.2.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('.spinner').hide();
		$('#msgNew').hide();

		// ajax 실행 및 완료시 'Loading 이미지'의 동작을 컨트롤하자.
		$('#search').ajaxStart(function()
		{
			// 로딩이미지의 위치 및 크기조절
			
			$('.spinner').css('position', 'absolute');
			$('.spinner').css('z-index', '10000');
			//$(this).show();
			$('.spinner').fadeIn(500);
			$('.spinner').show();
		}).ajaxStop(function()
		{
			//$(this).hide();
			$('.spinner').fadeOut(500);
			$('.spinner').hide();
		});

		if('${loginId}'.length > 0){
		setInterval(function(){newMSGcheck();},2000);
		}
	});
	
	function newMSGcheck(){
		
		if('${loginId}'.length > 0){
			$.ajax({
			method : "get",
			url : "newMSGcheck",
			data : "loginId="+'${loginId}',
			dataType : 'text',
			success : function(response){
				if(response ==="success"){
					$('#msgNew').show();
				}else if(response==="fail"){
					$('#msgNew').hide();
				}
					
			}
			});
		}
	}
	
</script>

<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='zoner-custom-config-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-options/patterns/css/admin-config.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='dsidx-css'
	href='http://cdn4.diverse-cdn.com/api/combo-css/config=dsidxpress.css/0e43ba'
	type='text/css' media='all' />
<link rel='stylesheet' id='contact-form-7-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-gmap-custom-scroll-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/css/jquery.mCustomScrollbar.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-gmap-style-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsCss/gmap.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-fontAwesom-css'
	href='resources/font/font-awesome-4.5.0/css/font-awesome.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-fontElegantIcons-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/fonts/ElegantIcons.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-social-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap-social-buttons.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-select-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/bootstrap-select.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-magnific-css-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/magnific-popup.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-slider-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.slider.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-owl.carousel-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/owl.carousel.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-jgrowl-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.jgrowl.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='zoner-style-css'
	href='resources/css/zoner-child/style-zoner-child.css' type='text/css'
	media='all' />
<style id='zoner-style-inline-css' type='text/css'>
a {
	color: #1396e2;
}

a:hover {
	color: #2a6496;
}

a:active {
	color: #2a6496;
}

@media only screen and (-webkit-min-device-pixel-ratio: 2) , only screen and
		(min-device-pixel-ratio: 2) , only screen and (min-resolution: 2dppx)
	{
	.navbar .navbar-header .navbar-brand.nav.logo {
		display: none;
	}
	.navbar .navbar-header .navbar-brand.nav.logo.retina {
		display: inline-block;
		width: 50%;
	}
}

.page-sub-page #page-content::after {
	background: -moz-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f1f1f1),
		color-stop(80%, #ffffff));
	background: -webkit-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);
	background: -o-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);
	background: -ms-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);
	background: linear-gradient(to bottom, #f1f1f1 0%, #ffffff 80%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#f1f1f1",
		endColorstr="#ffffff", GradientType=0);
}

.navigation {
	background-color: #FFFFFF;
}

.leaflet-div-icon {
	background-image:
		url(http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/images/icons/marker.png);
}

.horizontal-search .search-box-wrapper {
	background-color: #1396e2;
}

.advanced-search, .advanced-search header h3, .horizontal-search .search-box-wrapper .search-box .advanced-search-toggle
	{
	color: #ffffff;
}

.navigation .navbar .navbar-nav>li a {
	color: #2a2a2a;
}

.navigation .navbar .navbar-nav>li:hover>a {
	color: #2a2a2a;
}

.navigation .navbar .navbar-nav>li.current_page_item>a, .navigation .navbar .navbar-nav>li.current-menu-item>a,
	.navigation .navbar .navbar-nav>li.current-menu-parent>a, .navigation .navbar .navbar-nav>li.current_page_parent>a,
	.navigation .navbar .navbar-nav>li.current-menu-ancestor>a, .navigation .navbar .navbar-nav>li.active a
	{
	color: #2a2a2a;
}

.navigation .navbar .navbar-nav>li .child-navigation a {
	color: #2a2a2a;
}

.navigation .navbar .navbar-nav>li .child-navigation li a:hover {
	background-color: #1396e2;
	color: #ffffff;
}

.navigation .navbar .navbar-nav>li .child-navigation>li:hover>a,
	.navigation .navbar .navbar-nav>li .child-navigation>li.current-menu-ancestor>a,
	.navigation .navbar .navbar-nav>li .child-navigation>li .child-navigation>li.current-menu-item>a,
	.navigation .navbar .navbar-nav>li.current-menu-ancestor>.child-navigation li.current-menu-item>a
	{
	background-color: #1396e2;
	color: #ffffff;
}

.navigation .navbar .navbar-nav>li .child-navigation {
	background-color: #f3f3f3;
}

.navigation .navbar .navbar-nav>li>.child-navigation>li:first-child a:after
	{
	border-color: transparent transparent #f3f3f3 transparent;
}

.navigation .navbar .navbar-nav>li .child-navigation li a {
	border-color: rgba(#000000, 0.1);
}

.navigation .navbar .navbar-nav>li a:after {
	background-color: #1396e2;
}

.blog-posts .blog-post .blog-post-content p, .container p {
	filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
	opacity: 0.7;
}

#page-footer .inner #footer-copyright {
	color: #ffffff;
}

#page-footer .inner #footer-copyright {
	background-color: #073855;
}

#page-footer .inner .property-thumbnail {
	background-color: #1396e2;
}

.page-id-2597 .breadcrumb, .page-id-2597 h1 {
	display: none !important;
}

#section-50 h2 {
	text-align: center !important;
}

.header-variations section.zoner-variations {
	padding: 0 0 60px 0;
}

.header-variations .center {
	text-align: center;
}

.header-variations .no-border {
	border: medium none !important;
}

.header-variations hr {
	border-color: rgba(0, 0, 0, 0.1);
}

.header-variations h2 {
	border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	font-size: 24px;
	margin-bottom: 35px;
	margin-top: 10px;
}

.header-variations h3 {
	color: #012548;
	font-size: 20px;
	font-weight: normal;
	margin-bottom: 0;
}

.header-variations h4 {
	margin-top: 5px;
	margin-bottom: 0;
	font-size: 14px;
}

.header-variations .item {
	bottom: 0;
	display: block;
	margin: 15px 0;
	position: relative;
	text-align: center;
	transition: all 0.2s ease 0s;
}

.header-variations a {
	color: #1396e2;
	outline: medium none !important;
	transition: all 0.2s ease 0s;
}

.header-variations a:hover h3, .header-variations a:hover h4 {
	color: #012548;
}

.header-variations .arrow {
	-webkit-transition: .2s;
	display: block;
	margin-top: 10px;
	position: relative;
	left: 0;
	transition: .2s;
}

.header-variations .description {
	display: none;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	font-size: 12px;
	background-color: #ececec;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	position: absolute;
	color: #2a2a2a;
	padding: 5px 10px;
	top: -45px;
}

.header-variations.description:after {
	bottom: -7px;
	content: "";
	height: 0;
	border-style: solid;
	border-width: 0 10px 10px 10px;
	border-color: transparent #ececec transparent transparent;
	position: absolute;
	right: 0;
	width: 0;
}

.header-variations .logo {
	padding: 30px 0 15px;
	text-align: center;
}

.header-variations .item {
	-webkit-transition: .2s;
	transition: .2s;
	display: block;
	margin: 15px 0;
	text-align: center;
	position: relative;
	bottom: 0;
}

.header-variations .item:hover {
	bottom: 5px;
}

.header-variations .item img {
	max-width: 100%;
}

.header-variations .item img {
	max-width: 100%;
}

.header-variations a h1, .pheader-variations a h2, .header-variations a h3,
	.header-variations a h4 {
	color: #073855;
	transition: all 0.2s ease 0s;
}

.header-variations a:hover h3, .header-variations a:hover h4 {
	color: #012548;
}

.header-variations a:hover {
	text-decoration: none;
}

@media ( max-width : 767px) {
	.header-variations .item {
		margin-bottom: 60px;
	}
}

//여기서부터 map부분 css입니다 . 
#layer_fixed {
	height: 200px;
	width: 400px;
	color: #555;
	font-size: 12px;
	position: fixed;
	left: 20px;
	top: 20px;
	z-index: 999;
	-webkit-box-shadow: 0 1px 2px 0 #777;
	box-shadow: 0 1px 2px 0 #777;
	background-color: white;
	top: 20px;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 40px;
	height: 55px;
}

/* #category li .category_bg { */
/* 	background: */
/* 		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) */
/* 		no-repeat; */
/* } */
#category li .bank {
	background: url('resources/img/bank.png');
}

#category li .mart {
	background: url('resources/img/mart.png');
}

#category li .school {
	background: url('resources/img/school.png');
}

#category li .daycare {
	background: url('resources/img/child.png');
}

#category li .cafe {
	background: url('resources/img/cafe.png');
}

#category li .store {
	background: url('resources/img/conv.png');
}

#category li .subway {
	background: url('resources/img/subway.png');
}

#category li .cultural {
	background: url('resources/img/culture.png');
}

#category li .public {
	background: url('resources/img/public.png');
}

#category li .estate {
	background: url('resources/img/property.png');
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 100px;
	left: 270px;
	bottom: 0;
	width: 350px;
	height: 300px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
	display: none;
}

.bg_white {
	background: #fff;
}


#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	color: #777;
}

.overlaybox {
	position: relative;
	width: 295px;
	height: 350px;
	background: url('resources/img/placeOverlayRe.png') no-repeat;
	padding: 15px 10px;
}

.overlaybox div, ul {
	overflow: hidden;
	margin: 0;
	padding: 0;
}

.overlaybox li {
	list-style: none;
}

.overlaybox .boxtitle {
	width: 70%;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 8px;
}
/* {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;} */
.overlaybox .first {
	position: relative;
	width: 245px;
	height: 136px;
	background: url('') no-repeat;
	margin-bottom: 8px;
	top: -40px;
	left: -5px;
}

.first .text {
	color: #fff;
	font-weight: bold;
}

.triangle {
	position: absolute;
	width: 55px;
	height: 55px;
	top: -3px;
	left: 0px;
	background: url('resources/img/type.PNG') no-repeat;
	font-size: 15px;
	color: #fff;
	font-weight: bold;
	margin: 10px;
}

.triangle span {
	position: inherit;
	top: 5px;
	left: 8px;
}

#boxtitle {
	position: relative;
	z-index: 5;
	left: 45px;
	top: -2px;
	color: white;
	background: rgba(0, 0, 0, 0.4);
}

.close {
	position: absolute;
	top: 15px;
	right: -28px;
	width: 30%;
	height: 17px;
	background: url('resources/img/close.png') no-repeat;
	z-index: 10;
}

.close:hover {
	
}

.spinner {
	background-position: center center;
	background: url('resources/img/500.gif') no-repeat;
	background-size: 120px 120px;
	position: fixed;
	width: 120px;
	height: 120px;
	top: 50%;
	left: 50%;
}

.first .movietitle {
	position: absolute;
	width: 100%;
	bottom: 0px;
	background: rgba(0, 0, 0, 0.4);
	padding: 7px 15px;
	font-size: 14px;
}

.overlaybox ul {
	position: relative;
	bottom: 45px;
	width: 247px;
}

.overlaybox li {
	position: relative;
	margin-bottom: 13px;
	padding: 5px 10px;
	line-height: 1;
}

.overlaybox li span {
	display: inline-block;
}

.overlaybox li .number {
	font-weight: bold;
	font-size: 14px;
}

.overlaybox li .title {
	font-size: 23px;
	margin-top: 2px;
}

.overlaybox ul .arrow {
	position: absolute;
	margin-top: 8px;
	right: 25px;
	width: 5px;
	height: 3px;
	background:
		url('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png')
		no-repeat;
}

.overlaybox li .up {
	background-position: 0 -40px;
}

.overlaybox li .down {
	background-position: 0 -60px;
}

.overlaybox li .count {
	position: absolute;
	margin-top: 5px;
	right: 15px;
	font-size: 10px;
}

.overlaybox li:hover {
	
}

.overlaybox li:hover .up {
	background-position: 0 0px;
}

.overlaybox li:hover .down {
	background-position: 0 -20px;
}
</style>
<link rel='stylesheet' id='js_composer_front-css'
	href='http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<link rel='stylesheet' id='redux-google-fonts-zoner_config-css'
	href='http://fonts.googleapis.com/css?family=Roboto%3A400%2C300&#038;ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
<script type='text/javascript'
	src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'
	src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery-migrate.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'
	src='http://cdn3.diverse-cdn.com/api/combo-js/config=dsidxpress.js/05cd0d?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<!-- <script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?v=3&#038;libraries=places&#038;ver=201a87ed354d4d101903f99fa0251b3d'></script> -->
<script type='text/javascript'
	src='https://checkout.stripe.com/checkout.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<link rel='https://api.w.org/'
	href='http://themes.fruitfulcode.com/zoner/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://themes.fruitfulcode.com/zoner/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://themes.fruitfulcode.com/zoner/wp-includes/wlwmanifest.xml" />

<link rel="canonical"
	href="http://themes.fruitfulcode.com/zoner/homepage/" />
<link rel='shortlink' href='http://themes.fruitfulcode.com/zoner/?p=48' />
<link rel="alternate" type="application/json+oembed"
	href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fhomepage%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fhomepage%2F&#038;format=xml" />
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
<meta name="generator"
	content="Powered by Visual Composer - drag and drop page builder for WordPress." />
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]-->
<!--[if IE  8]><link rel="stylesheet" type="text/css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/vc-ie8.min.css" media="screen"><![endif]-->
<script type="text/javascript">
			/* <![CDATA[ */
			(function() {
				if (!window.mc4wp) {
					window.mc4wp = {
						listeners: [],
						forms    : {
							on: function (event, callback) {
								window.mc4wp.listeners.push({
									event   : event,
									callback: callback
								});
							}
						}
					}
				}
			})();
			/* ]]> */
		</script>
<script type="text/javascript">
(function(url){
	if(/(?:Chrome\/26\.0\.1410\.63 Safari\/537\.31|WordfenceTestMonBot)/.test(navigator.userAgent)){ return; }
	var addEvent = function(evt, handler) {
		if (window.addEventListener) {
			document.addEventListener(evt, handler, false);
		} else if (window.attachEvent) {
			document.attachEvent('on' + evt, handler);
		}
	};
	var removeEvent = function(evt, handler) {
		if (window.removeEventListener) {
			document.removeEventListener(evt, handler, false);
		} else if (window.detachEvent) {
			document.detachEvent('on' + evt, handler);
		}
	};
	var evts = 'contextmenu dblclick drag dragend dragenter dragleave dragover dragstart drop keydown keypress keyup mousedown mousemove mouseout mouseover mouseup mousewheel scroll'.split(' ');
	var logHuman = function() {
		var wfscr = document.createElement('script');
		wfscr.type = 'text/javascript';
		wfscr.async = true;
		wfscr.src = url + '&r=' + Math.random();
	//	(document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(wfscr);
		for (var i = 0; i < evts.length; i++) {
			removeEvent(evts[i], logHuman);
		}
	};
	for (var i = 0; i < evts.length; i++) {
		addEvent(evts[i], logHuman);
	}
})('//themes.fruitfulcode.com/zoner/?wordfence_logHuman=1&hid=5FAF7819DD6D343D57A70140DECBEB07');
</script>
<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-56748446-1']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script');
					ga.type = 'text/javascript';
					ga.async = true;
					ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(ga, s);
			})();
		</script>

<script type="text/javascript">
				if (typeof localdsidx == "undefined" || !localdsidx) { var localdsidx = {}; };
				localdsidx.pluginUrl = "/zoner/wp-content/plugins/dsidxpress/";
				localdsidx.homeUrl = "http://themes.fruitfulcode.com/zoner";
				</script>
<script type="text/javascript">
				if (typeof localdsidx == "undefined" || !localdsidx) { var localdsidx = {}; };
				localdsidx.pluginUrl = "/zoner/wp-content/plugins/dsidxpress/";
				localdsidx.homeUrl = "http://themes.fruitfulcode.com/zoner";
				</script>
<link rel="shortcut icon"
	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-16x16.png" />
<link rel="apple-touch-icon"
	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-114x114.png ">
<link rel="apple-touch-icon" sizes="72x72"
	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-72x72.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-144x144.png">
<style type="text/css" title="dynamic-css" class="options-output">
body {
	background-color: #ffffff;
	background-repeat: inherit;
	background-size: inherit;
	background-attachment: inherit;
}

body {
	font-family: Roboto;
	font-weight: 400;
	font-style: normal;
	color: #5a5a5a;
	font-size: 14px;
}

h1 {
	font-family: Roboto;
	font-weight: 300;
	font-style: normal;
	color: #5a5a5a;
	font-size: 28px;
}

h2 {
	font-family: Roboto;
	font-weight: 300;
	font-style: normal;
	color: #5a5a5a;
	font-size: 24px;
}

h3 {
	font-family: Roboto;
	font-weight: 300;
	font-style: normal;
	color: #5a5a5a;
	font-size: 18px;
}

h4 {
	font-family: Roboto;
	font-weight: 400;
	font-style: normal;
	color: #5a5a5a;
	font-size: 14px;
}

h5 {
	font-family: Roboto;
	font-weight: 400;
	font-style: normal;
	color: #5a5a5a;
	font-size: 14px;
}

h6 {
	font-family: Roboto;
	font-weight: 400;
	font-style: normal;
	color: #5a5a5a;
	font-size: 14px;
}

p {
	font-family: Roboto;
	text-align: inherit;
	line-height: 20px;
	font-weight: 400;
	font-style: normal;
	color: #5a5a5a;
	font-size: 14px;
}

a {
	color: #1396e2;
}

a:hover {
	color: #2a6496;
}

a:active {
	color: #2a6496;
}
</style>
<style type="text/css" data-type="vc_shortcodes-custom-css">
.vc_custom_1447239994670 {
	margin-bottom: 0px !important;
}

.vc_custom_1447240029319 {
	padding-bottom: 0px !important;
}

.vc_custom_1447240051606 {
	margin-bottom: 0px !important;
}

blockquote, body, button, code, dd, div, dl, dt, fieldset, form, h1, h2,
	h3, h4, h5, h6, input, legend, li, ol, p, pre, select, td, textarea, th,
	ul {
	margin: 0;
	padding: 0
}

.pin {
	width: 3pc;
	height: 52px;
	text-align: center;
	color: #fff;
	box-sizing: border-box;
	z-index: 10;
	overflow: visible !important
}

.pin.selected {
	z-index: 100;
	opacity: 1;
	filter: alpha(opacity = 100);
	transform-origin: center center;
	-webkit-transform-origin: center center;
	-moz-transform-origin: center center;
	-ms-transform-origin: center center;
	animation-duration: 1.5s;
	animation-name: bounce;
	animation-iteration-count: infinite;
	-webkit-animation-duration: 1.5s;
	-webkit-animation-name: bounce;
	-webkit-animation-iteration-count: infinite;
	-moz-animation-duration: 1.5s;
	-moz-animation-name: bounce;
	-moz-animation-iteration-count: infinite;
	-ms-animation-duration: 1.5s;
	-ms-animation-name: bounce;
	-ms-animation-iteration-count: infinite
}

.pin {
	display: inline-block;
	overflow: hidden;
	width: 51px;
	height: 57px;
	background-image: url(resources/img/bghg.png);
	background-position: -91px -369px;
	line-height: 999em;
	vertical-align: top
}

.pin>.area {
	display: block;
	margin-top: 11px;
	font-size: 11px;
	font-weight: 200;
	color: hsla(0, 0%, 100%, .8);
	height: auto;
	line-height: 1
}

.pin>.price {
	margin-top: 2px;
	display: block;
	font-weight: 600;
	font-size: 14px;
	height: auto;
	line-height: 1
}

.pin>.time {
	display: block;
	margin-top: 0px;
	font-size: 11px;
	font-weight: 200;
	color: hsla(0, 0%, 100%, .8);
	height: auto;
	line-height: 1
}
</style>
<noscript>
	<style type="text/css">
.wpb_animate_when_almost_visible {
	opacity: 1;
}
</style>
</noscript>
</head>
<body
	class="page page-id-48 page-template-default group-blog masthead-fixed page-sub-page page-legal map-google navigation-fixed-top wpb-js-composer js-comp-ver-4.9 vc_responsive"
	data-offset="90" data-target=".navigation" data-spy="scroll"
	id="page-top">
	<div class="spinner"></div>
	<div id="page" class="hfeed site wrapper">
		<jsp:include page="navigation.jsp"></jsp:include>



		<div class="container">
			<div class="geo-location-wrapper">
				<span class="btn geo-location"><i class="fa fa-map-marker"></i><span
					class="text">Find My Position</span></span>
			</div>
		</div>

		<!-- Map -->
		<div id="map"></div>
		<ul id="category" style="right: 10px; top: 680px;" >
			<li id="BK9" data-order="0" class="mobcate" ><span class="category_bg bank"></span><strong>은행</strong>
			</li>
			<li id="MT1" data-order="1" class="mobcate"><span class="category_bg mart"></span><strong>마트</strong>
			</li>
			<li id="SC4" data-order="2" class="mobcate"><span class="category_bg school"></span><strong>학교</strong>
			</li>
			<li id="PS3" data-order="3" class="mobcate"><span class="category_bg daycare"></span><strong>유치원</strong>
			</li>
			<li id="CE7" data-order="4" class="mobcate"><span class="category_bg cafe"></span><strong>카페</strong>
			</li>
			<li id="CS2" data-order="5" class="mobcate"><span class="category_bg store"></span><strong>편의점</strong>
			</li>
			<li id="SW8" data-order="6" class="mobcate"><span class="category_bg subway"></span><strong>지하철</strong>
			</li>
			<li id="CT1" data-order="7" class="mobcate"><span class="category_bg cultural"></span><strong>문화</strong>
			</li>
			<li id="PO3" data-order="8" class="mobcate"><span class="category_bg public"></span><strong>관공서</strong>
			</li>
			<li id="AG2" data-order="9" class="mobcate"><span class="category_bg estate"></span><strong>부동산</strong>
			</li>
		</ul>
		
		
		<div id="menu_wrap" class="bg_white">
			<ul id="placesList"></ul>
			<div id="pagination"></div>
		</div>
		<script>
		if(screen.width < 700){
			$('#map').css("height","400px");
			$("#category").css('top','50%').css('position','inherit').css('left','0px');
			$('.mobcate').css({'width':'10%','left':'0px','font-size':'13px'});
		}else{
			
			
		}
		
		// 경도와 위도를 통하여 거리를 구하는 메소드 결과값 1=1km로 나타남
		function calcDist(lat1, lng1, lat2, lng2) {
			var x = (Math.cos(lat1) * 6400 * 2 * 3.14 / 360) * (lng1 - lng2)
			var y = 111 * (lat1 - lat2)
			var dist = (x * x) + (y * y);
			return Math.sqrt(dist);
		}

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div

		//맵생성
		mapOption = {
			center : new daum.maps.LatLng(37.56719, 126.98328), // 지도의 중심좌표
			level : 3, // 지도의 확대 레벨
			mapTypeId : daum.maps.MapTypeId.ROADMAP
		// 지도종류
		};
		var map = new daum.maps.Map(mapContainer, mapOption);

		//검색 객체를 생성
		var ps = new daum.maps.services.Places(map);
		//키워드 검색 마커가 저장되어질 배열
		var keyMarkers = [];
		var geocoder = new daum.maps.services.Geocoder();
		  var clusterer = new daum.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 5
			//texts : getTexts
		// 클러스터 할 최소 지도 레벨 
		});  
		var p = 0;
		 
		$(function() {
			$("#category").hide();
			//전체 Property를 불러오는 ajax
			$.ajax({
				type : 'post',
				url : 'AllPropertyList',
				dataType : "json",
				success : function(data) {
					allPropertyList(data);
				},
				error : function(data) {
				}
			});
			$(document).on('click','#roadView', function(e) {
					e.preventDefault();  
		            var x = $(this).attr('x');
		            var y = $(this).attr('y');
		            var url = "roadView?x="+x+"&y="+y;  
		            window.open(url, "_blank");  
		        });  

			$("#searchKeyword").on("click", function() {
				p=0;
				hideMarkers();
				removeKeyMarker();
				removeMarker();
				searchKeyword('origins');
// 				$("#menu_wrap").css("display","block");
			})
			$("#searchKeyword2").on("click", function() {
				p=1;
				hideMarkers();
				removeKeyMarker();
				removeMarker();
				searchKeyword('origins2');
// 				$("#menu_wrap").css("display","block");
			})


			$(document).on('click','.jibun gray', function(event) {
				event.preventDefault();
				if(p==0){
				$("#origins").val($(this).attr('add'))
				}else if(p==1){
					$("#origins2").val($(this).attr('add'))
				}
				$("#menu_wrap").css("display","none");
				
			});
			
			$(document).on('click','.close', function() {
				placeOverlay.setMap(null);
				
			})	
			
			
			$(document).on('click','#addCart', function(event) {
				event.preventDefault();
			var propertyNo = $(this).attr('no');
			$.ajax({
				url : 'addCart',
				type : 'post',
				dataType : 'text',
				data : {
					propertyNo : propertyNo
				},
				success: function(data) {
					if(data==0){
						alert("중복된 물건이 있거나 로그인이 필요합니다.");
					}else{
						alert("장바구니 등록에 성공하였습니다.");
					}
				},
				error: function(data) {
					alert(data);
				}
			})
			})
			$(document).on('click','#message',function(event){
				event.preventDefault();
				var sendId =$(this).attr('sendId');
				var receiveId=$(this).attr('receiveId');
				if(sendId==""){
					alert('로그인이 필요합니다.');
					$(location).attr('href','loginView');
				}else{
					window.open('selectOneMsgBox?sendId='+sendId+'&receiveId='+receiveId,'pop','resizable=yes scrollbars=yes top=200 left=200 width=600 height=800');
				}
			})
			
			$(document).on('click','#msgbox',function(event){
				event.preventDefault();
				var sendId = $(this).attr("sendId");
				if(sendId==""){
					alert('로그인이 필요합니다.');
					$(location).attr('href','loginView');
				}else{
				window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');}
			})
			//카테고리 오버레이 숨김
			
			//Property를 나타내는 마커를 집어넣는 배열의 초기화
			var markers = [];
			//클릭되어지는 마커의 위도 경도를 초기화함
			var gps = new daum.maps.LatLng(37.56719, 126.98328);

			var x = [];
			var y = [];
			var propertytype = null;
			var area = null;
			var price = null;
			var name = null;
			var customOverlay =null;
			var customOverlays = [];
			var index=0;
			//커스텀 오버레이 설정
			
			var placeOverlay = new daum.maps.CustomOverlay({
				zIndex : 2,
				xAnchor: 4,
			    yAnchor: -2
			}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
			camarkers = [], // 마커를 담을 배열입니다
			currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
			// 장소 검색 객체를 생성합니다
			var center = new daum.maps.LatLng(37.56719, 126.98328);
			
			 function getTexts( overlay ) {
				overlay
			    }


			var circle = null;
			var circles = [];

			// 지도 타입 변경 컨트롤을 생성한다
			var mapTypeControl = new daum.maps.MapTypeControl();

			// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
			map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

			// 지도에 확대 축소 컨트롤을 생성한다
			var zoomControl = new daum.maps.ZoomControl();

			// 지도의 우측에 확대 축소 컨트롤을 추가한다
			map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
			// 지도에 idle 이벤트를 등록합니다
			//daum.maps.event.addListener(map, 'idle', searchPlaces);

			// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
			contentNode.className = 'placeinfo_wrap';

			// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
			// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
			addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
			addEventHandle(contentNode, 'touchstart',
					daum.maps.event.preventMap);

			// 커스텀 오버레이 컨텐츠를 설정합니다
			placeOverlay.setContent(contentNode);

			// 각 카테고리에 클릭 이벤트를 등록합니다
			addCategoryClickEvent();

			
			// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
			function addEventHandle(target, type, callback) {
				if (target.addEventListener) {
					target.addEventListener(type, callback);
				} else {
					target.attachEvent('on' + type, callback);
				}
			}

			// 카테고리 검색을 요청하는 함수입니다
			function searchPlaces() {
				if (!currCategory) {
					return;
				}

				// 커스텀 오버레이를 숨깁니다 
				placeOverlay.setMap(null);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				ps.categorySearch(currCategory, placesSearchCB, {
					useMapBounds : true
				});
			}

			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(status, data, pagination) {
				if (status === daum.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
					displayPlaces(data.places);
				} else if (status === daum.maps.services.Status.ZERO_RESULT) {
					// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

				} else if (status === daum.maps.services.Status.ERROR) {
					// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

				}
			}

			// 지도에 마커를 표출하는 함수입니다
			function displayPlaces(places) {
				// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
				// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
				var order = document.getElementById(currCategory).getAttribute(
						'data-order');

				for (var i = 0; i < places.length; i++) {

					var m = calcDist(center.getLat(), center.getLng(),
							places[i].latitude, places[i].longitude);
					if (m < 0.5) {
						var camarker = addMarker(new daum.maps.LatLng(
								places[i].latitude, places[i].longitude), order);
						// 마커와 검색결과 항목을 클릭 했을 때
						// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
						(function(camarker, place) {
							daum.maps.event.addListener(camarker, 'click',
									function() {
										displayPlaceInfo(place);
									});
						})(camarker, places[i]);
					} else {
						var camarker = addMarker2(new daum.maps.LatLng(
								places[i].latitude, places[i].longitude), order);
						(function(camarker, place) {
							daum.maps.event.addListener(camarker, 'click',
									function() {
										displayPlaceInfo(place);
									});
						})(camarker, places[i]);
					}
					// 마커를 생성하고 지도에 표시합니다

				}
			}

			// 마커의 주변 500m이내에 편의시설 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, order) {
				var imageSrc = 'resources/img/'+order+'.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new daum.maps.Size(35, 45), // 마커 이미지의 크기
				imgOptions = {
					offset : new daum.maps.Point(11, 28)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
						imgOptions), camarker = new daum.maps.Marker({
							zIndex: -1,
					position : position, // 마커의 위치
					image : markerImage

				});

				camarker.setMap(map); // 지도 위에 마커를 표출합니다
				camarkers.push(camarker); // 배열에 생성된 마커를 추가합니다

				return camarker;
			}

			// 마커의 주변 500m밖의 편의시설 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker2(position, order) {
				var imageSrc = 'resources/img/s'+order+'.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new daum.maps.Size(35, 45), // 마커 이미지의 크기
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				markerImage = new daum.maps.MarkerImage(imageSrc, imageSize), camarker = new daum.maps.Marker(
						{
							position : position, // 마커의 위치
							image : markerImage

						});

				camarker.setMap(map); // 지도 위에 마커를 표출합니다
				camarkers.push(camarker); // 배열에 생성된 마커를 추가합니다

				return camarker;
			}

			// 지도 위에 표시되고 있는 편의시설 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < camarkers.length; i++) {
					camarkers[i].setMap(null);
				}
				camarkers = [];
			}
			function removeCircle() {
				for (var i = 0; i < circles.length; i++) {
					circles[i].setMap(null);
				}
				circles = [];
			}

			// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
			function displayPlaceInfo(place) {
				var content = '<div class="placeinfo">'
						+ '   <a class="title" href="" target="_blank" title="' + place.title + '">'
						+ place.title + '</a>';
				if (place.newAddress) {
					content += '    <span title="' + place.newAddress + '">'
							+ place.newAddress
							+ '</span>'
							+ '  <span class="jibun" title="' + place.address + '">(지번 : '
							+ place.address + ')</span>';
				} else {
					content += '    <span title="' + place.address + '">'
							+ place.address + '</span>';
				}

				content += '    <span class="tel">' + place.phone + '</span>'
						+ '</div>' + '<div class="after"></div>';

				contentNode.innerHTML = content;
				placeOverlay.setPosition(new daum.maps.LatLng(place.latitude,
						place.longitude));
				placeOverlay.setMap(map);
			}
			$(document).on('click','#boxtitle', function() {
				var x = $(this).attr('x');
				var y = $(this).attr('y');
				var latLng = new daum.maps.LatLng(x,y)
				index=index+1;
				for(var i =0; i<customOverlays.length;i++){
					if(customOverlays[i].getPosition().getLat()==latLng.getLat()&&customOverlays[i].getPosition().getLng()==latLng.getLng()){
						customOverlays.splice(i-1,i);
					}
						}
				$.ajax({
				url : 'changeOverlay',
				type : 'post',
				dataType : 'json',
				data : {
					x : x,
					y : y
				},
				success: function(data) {
					if(index<data.length){
					addOverlay(data[index], x, y, map);
					displayPropertyInfo(data[index],x,y);
					}else{
						index=0;
						addOverlay(data[index], x, y, map);
						displayPropertyInfo(data[index],x,y);
					}
				},
				error: function(data) {
				}
			})
			})
			function displayPropertyInfo(place, x, y) {
				var content = '<div class="overlaybox">' +
			    '    <div class="boxtitle" >'+'<div id="boxtitle" x="'+place.lati+'" y="'+place.longti+'" "style:width:200px">'+place.danji+' '+place.floor+'층</div>' +
			    '    <div class="close" title="닫기"></div>' + '</div>'+
			    '    <div class="first" style="background: url(/img/'+place.pic_temp+'); background-size:cover; no-repeat " >'+
			    '<div class="triangle text"><span>'+place.propertyType+'</span></div> '
			    if(place.propertyType=='월세'){
			    	if(Math.floor(place.price/10000)!=0){
					    content+='        <div class="movietitle text">보증금 '+Math.floor(place.price/10000)+'억 '
					    }else{
					    	content+='<div class="movietitle text">보증금 '
					    }
					    if((place.price-Math.floor(place.price/10000)*10000)!=0){
					    content += (place.price-Math.floor(place.price/10000)*10000)+' 만원 / 월세 '+place.monthfee+'만원</div>'
					    }else{
					    	content += '원 / 월세: '+place.monthfee+'만 원</div>'
					    }
			    }else if(place.propertyType=='매매'){
			    	if(Math.floor(place.price/10000)!=0){
			    content+='        <div class="movietitle text"> 매매가 '+Math.floor(place.price/10000)+' 억 '
			    }else{
			    	content+='<div class="movietitle text">매매가 '
			    }
			    if((place.price-Math.floor(place.price/10000)*10000)!=0){
			    content += (place.price-Math.floor(place.price/10000)*10000)+' 만 원</div>'
			    }else{
			    	content += '원</div>'
			    }
			    }else{
			    	if(Math.floor(place.price/10000)!=0){
					    content+='        <div class="movietitle text">전세가 '+Math.floor(place.price/10000)+'억 '
					    }else{
					    	content+='<div class="movietitle text">전세가 '
					    }
					    if((place.price-Math.floor(place.price/10000)*10000)!=0){
					    content += (place.price-Math.floor(place.price/10000)*10000)+'만원</div>'
					    }else{
					    	content += '원</div>'
					    }
			    }
			    content +=
			    '    </div>' +
			    '    <ul>' +
			    '        <li class="up">' +
			    '            <span class="number"><span style="color:#1396e2">평수</span> '+Math.floor(place.area*0.3025)+'평 ('+place.area+ 'm<sup>2</sup>)</span>'
			    if(place.land_area!=0){
			    content+=
			    	'            <span class="number"><span style="color:#1396e2"> 토지평수</span> '+Math.floor(place.land_area*0.3025)+' 평</span>'
			    }
			    			
			    content+='        </li>' +
			    '        <li>' +
			    '            <span class="number"><span style="color:#1396e2">형태 </span> '+place.builtType+'</span>' +
			    '        </li>' +
			    '        <li>' +
			    '            <span class="number">'+place.address+'</span>' +
			    '        </li>' +
			    '        <li>' +
			    '    	 <a href="" class="title" id="detailView">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>' +
			    '            <a href="" class="title" id="contact">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>' +
			    '            <a href="" class="title" id="addCart" no="'+place.propertyNo+'">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</span>' +
			    
			    '        </li>' +
			    '    </ul>' +
			    '</div>';
			    
				contentNode.innerHTML = content;
				placeOverlay.setPosition(new daum.maps.LatLng(x, y));
				placeOverlay.setMap(map);
				
				$.ajax({
					url : 'detailView',
					type : 'post',
					dataType : 'json',
					data : {
						propertyNo : place.propertyNo
					},
					success: function(data) {
						var convertContent = data.property.content.replace(/\n/g, "<BR>")
						var image="";
						var title = '<h1>'+data.property.propertyType+'<h1>'
						title+= '<figure>'+data.property.address+' '+data.property.danji+'<figure>'
						$('#hideDetail').removeAttr('hidden');
						
						var text ='<header><h2>상세 정보</h2></header>'
						+'<dl><dt>상세주소: </dt><dd>'+data.property.address+' '+data.property.danji
						+'</dd><dt>매매가: </dt><dd><span class="tag price">'
						 if(place.propertyType=='월세'){
						    	if(Math.floor(place.price/10000)!=0){
								    text+='보증금: '+Math.floor(place.price/10000)+' 억 '
								    }else{
								    	text+='보증금:'
								    }
								    if((place.price-Math.floor(place.price/10000)*10000)!=0){
								    text += (place.price-Math.floor(place.price/10000)*10000)+' 만 원 / 월세: '+place.monthfee+' 만 원</span>'
								    }else{
								    	text += ' 원 / 월세: '+place.monthfee+' 만 원</span>'
								    }
						    }else{
						if(Math.floor(data.property.price/10000)!=0){
						text+= Math.floor(data.property.price/10000)+' 억 '
						}
						if((data.property.price-(Math.floor(data.property.price/10000)*10000))!=0){
						text+=(data.property.price-(Math.floor(data.property.price/10000)*10000))+ ' 만 원</span>'
						}else{
						text+=	'원</span>'
						}
						}
						text+='</dd><dt>거래형태: </dt><dd>'+data.property.propertyType
						+'</dd><dt>주거형태: </dt><dd>'+data.property.builtType
						+'</dd><dt>면적: </dt><dd>'+Math.floor(data.property.area*0.3025)
						+' 평 '+'('+data.property.area+'m<sup>2</sup>)</dd><dt>층: </dt><dd>'+data.property.floor
						+' 층</dd><dt>건축년도: </dt><dd>'+data.property.builtyear+' 년</dd>'
						+'<dt></dt><dd><a href="" id="roadView" x="'+data.property.lati+'" y="'+data.property.longti+'">로드뷰 보기</a><br>'
						var pno = data.property.propertyNo;
						
						if(screen.width < 700){
						text +='<a href="kakao='+place.propertyNo+'">카카오톡 공유</a></dd>'
						}
						
						if(data.infoList.length>1){
						text+= '<a href="http://rt.molit.go.kr/srh/srh.do?cmd=rtSearch&menuGubun=A&srhType=LOC#20324236,'+data.infoList[0]+','+data.infoList[1]+','+data.infoList[2]+',,,'+data.infoList[3]+',2016,1,1"> 국토교통부 실거래가</a>'
								}
						var content = '<header><h2>'+data.property.title+'</h2></header><p>'
						content+= convertContent+'</p>'
						
						if(data.broker!=null){
						var seller = '<header><h2>판매자 정보<h2></header><div class="row"><section class="agent-form"><aside id="" class="agent-info clearfix">'
						if(data.brokerPic!=null){
						seller += '<figure>'+'<img alt="" src="/img/'+data.brokerPic.pic_temp+'">'+'</figure>'
						}
						
						seller += '<div class="agent-contact-info"><header><h2><dl><dt>부동산 :</dt><dd>'+data.broker.officeName+'</dd></dl></h2><header>'
						seller += '<dl><dt>ID :</dt><dd><a href="" id="message" sendId="${loginId}" receiveId="'+data.broker.brokerId+'">'+data.broker.brokerId+'</a></dd>'
						seller += '<dt>사무실 연락처 :</dt><dd>'+data.broker.officeTel+'</dd>'
						seller += '<dt>소속 공인중개사 :</dt><dd>'+data.broker.name+'</dd>'
						seller += '<dt>개인 연락처 :</dt><dd>'+data.broker.phone+'</dd>'
						seller += '<dt>사무실 주소 :</dt><dd>'+data.broker.address+'</dd>'
						seller += '<dt>E-mail:</dt><dd><a href="mailto:'+data.broker.email+'">'+data.broker.email+'</a></dd></dl>'
						seller += '<hr><a href="" class="link-arrow">상세 정보</a>'
						}else if(data.customer!=null){
							var seller = '<header><h2>판매자 정보<h2></header><div class="row"><section class="agent-form"><aside id="" class="agent-info clearfix">'
								seller += '<div class="agent-contact-info"><header><h2><dl><dt>이름 :</dt><dd>'+data.customer.name+'</dd></dl></h2><header>'
								seller += '<dl>'
								seller += '<dl><dt>ID :</dt><dd><a href="" id="message" sendId="${loginId}" receiveId="'+data.customer.custId+'">'+data.customer.custId+'</a></dd>'
								seller += '<dt>개인 연락처 :</dt><dd>'+data.customer.phone+'</dd>'
								seller += '<dt>E-mail:</dt><dd><a href="mailto:'+data.customer.email+'">'+data.customer.email+'</a></dd></dl>'
								seller += '<hr><a href="" class="link-arrow">상세 정보</a>'
						}
						
						
						var option = '<header><h2>옵션</h2></header><ul class="list-unstyled property_features-list">'
						for(var i=0;i<data.option.length;i++){
							option+='<li>'+data.option[i]+'</li>'	
						}
						option+='</ul>'
						
						$("#property_features").html(option);
						$("#description").html(content);	
						$(".property-title").html(title);
						$("#quick-summary").html(text);
						$("#contact-agent").html(seller);
						$('#property-gallery-518').load('newOwl?propertyNo='+data.property.propertyNo,data.property.propertyNo);
	
					},
					error : function(data) {
						
					}
				})
			}
			
			

			function PlaceInfo(place) {
				var content = '<div class="placeinfo">'
						+ '   _$tag______________________________________________________________________________________'
						+ place.title + '_$ta';
				if (place.newAddress) {
					content += '    _$tag__________________________________'
							+ place.newAddress
							+ '_$tag__'
							+ '  _$tag_____________________________________________(지번 : '
							+ place.address + ')_$tag__';
				} else {
					content += '    _$tag_______________________________'
							+ place.address + '_$tag__';
				}

				content += '    _$tag_____________' + place.phone + '_$tag__'
						+ '_$tag_' + '_$tag_______________$tag_';

				contentNode.innerHTML = content;
				placeOverlay.setPosition(new daum.maps.LatLng(place.getLat(),
						place.getLng()));
				placeOverlay.setMap(map);
			}

			// 각 카테고리에 클릭 이벤트를 등록합니다
			function addCategoryClickEvent() {
				var category = document.getElementById('category'), children = category.children;

				for (var i = 0; i < children.length; i++) {
					children[i].onclick = onClickCategory;
				}
			}

			// 카테고리를 클릭했을 때 호출되는 함수입니다
			function onClickCategory() {
				var id = this.id, className = this.className;
				map.setCenter(new daum.maps.LatLng(center.getLat(), center
						.getLng()));
				placeOverlay.setMap(null);

				if (className === 'on') {

					currCategory = '';
					changeCategoryClass();
					removeMarker();
				} else {
					currCategory = id;
					changeCategoryClass(this);
					searchPlaces();
				}
			}

			// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
			function changeCategoryClass(el) {
				var category = document.getElementById('category'), children = category.children, i;

				for (i = 0; i < children.length; i++) {
					children[i].className = '';
				}

				if (el) {
					el.className = 'on';
				}
			}

		

			//검색시 결과를 가져오는 ajax
			$("#search").on("click", function() {
				
				var origins = $('#origins').val();
				var origins2 = $('#origins2').val();
				var arriveTime = $('#arrive_time').val();
				var x = 0;
				var y = 0;
				var property_status = $("#property_status").val();
				var area = $("#area-input").val();
				var property_type = $("#property_type").val();
				var price = $("#price-input").val();
				var keyword = $("#sb-keyword").val();
				$("#menu_wrap").css("display","none");
				removeCircle();
				placeOverlay.setMap(null);
				clusterer.clear();
				delOverlay();
				if(origins==null||origins.length==0){
					if(origins2.length!=0){
						alert("목적지 1을 먼저 입력해주세요.");
					}else{
				$.ajax({
					url : 'searchProperty',
					type : 'post',
					dataType : 'json',
					data : {
						propertyType : property_status,
						builtType : property_type,
						area : area,
						price : price,
						keyword : keyword
					},
					success : function(data) {
						hideMarkers();
						removeKeyMarker()
						removeMarker()
						delOverlay();
						allPropertyList(data);
					},
					error : function(data) {

					}
				})}}else{
					geocoder
					.addr2coord(
							origins,
							function(status, result) {
								// 정상적으로 검색이 완료됐으면
								if (status === daum.maps.services.Status.OK) {
									x = result.addr[0].lat;
									y = result.addr[0].lng;
									if(origins2.length==0){
									$.ajax({
												url : 'distance',
												type : 'get',
												dataType : 'json',
												data : {
													x : x,
													y : y,
													arriveTime : arriveTime,
													origin : origins,
													propertyType : property_status,
													builtType : property_type,
													area : area,
													price : price,
													keyword : keyword
												},
												success : function(data) {
													removeKeyMarker()
													removeMarker()
													hideMarkers();
													var coords = new daum.maps.LatLng(
															x,
															y);
													// 마커가 지도 위에 표시되도록 설정합니다
													var marker = new daum.maps.Marker(
																{
																	map : map,
																	position : coords,
																// 마커이미지 설정
																});
													markers
															.push(marker);
													marker
															.setMap(map);
													distanceList(data.resultList, data.timeList);
												},
												error : function(data) {
													}
											})
								}else{
									geocoder
									.addr2coord(
											origins2,
											function(status2, result2) {
												if (status2 === daum.maps.services.Status.OK) {
												x2 = result2.addr[0].lat;
												y2 = result2.addr[0].lng;
												$
												.ajax({
													url : 'distance2',
													type : 'get',
													dataType : 'json',
													data : {
														x : x,
														y : y,
														x2 : x2,
														y2 : y2,
														arriveTime : arriveTime,
														origin : origins,
														propertyType : property_status,
														builtType : property_type,
														area : area,
														price : price,
														keyword : keyword
													},
													success : function(
															data) {
														
														removeKeyMarker()
														removeMarker()
														hideMarkers();
														var coords = new daum.maps.LatLng(
																x,
																y);
														var coords2 =new daum.maps.LatLng(
																x2,
																y2); 
														var marker = new daum.maps.Marker(
																{
																	map : map,
																	position : coords,
																// 마커이미지 설정
																});
														var marker2 = new daum.maps.Marker(
																{
																	map : map,
																	position : coords2,
																// 마커이미지 설정
																});
														// 마커가 지도 위에 표시되도록 설정합니다
														markers
																.push(marker);
														markers.push(marker2);
														marker
																.setMap(map);
														marker2.setMap(map);
														allPropertyList(data);
													},
													error : function(
															data) {

													}
												})
											}})
								}
								}})}
			})

			//Property마커를 전부 삭제한다
			function hideMarkers() {
				setMarkers(null);
			}

			//마커를 맵에 띄우거나 삭제하는 메소드
			function setMarkers(map) {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(map);
				}
			}
			function setOverlay(map) {
				for (var i = 0; i < customOverlays.length; i++) {
					customOverlays[i].setMap(map);
				}
			}
			function delOverlay() {
				setOverlay(null);
			}
			
			var coords = new daum.maps.LatLng(0, 0)
			//Property 마커의 목록 전부를 불러온다
			function allPropertyList(data) {
				var propertyList = data;
				delOverlay();
				customOverlays = [];
				var geocoder = new daum.maps.services.Geocoder();
				// 주소로 좌표를 검색합니다

				for (var i = 0; i < propertyList.length; i++) {
					var text = propertyList[i].address;
					x = [];
					y = [];
					x.push(propertyList[i].lati)
					y.push(propertyList[i].longti)
					var coords = new daum.maps.LatLng(x, y);
					var imageSrc = 'resources/img/clear.png', // 마커이미지의 주소입니다
					imageSize = new daum.maps.Size(0, 0), // 마커이미지의 크기입니다
					imageOprion = {
						offset : new daum.maps.Point(0, 0)
					}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
					// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
					var markerImage = new daum.maps.MarkerImage(imageSrc,
							imageSize, imageOprion), markerPosition = new daum.maps.LatLng(
							x, y); // 마커가 표시될 위치입니다

					// 결과값으로 받은 위치를 마커로 표시합니다
					var marker = new daum.maps.Marker({
						position : coords,
					// 마커이미지 설정
					});
							marker.setImage(markerImage);
					addOverlay(propertyList[i], x, y, map);
					markers.push(marker);
					//marker.setMap(map);
					// 마커가 지도 위에 표시되도록 설정합니다
					searchPlaces();
				}
				clusterer.clear();
				clusterer.addMarkers(customOverlays);
			}
			
			function distanceList(data, timeList) {
				var propertyList = data;
				delOverlay();
				customOverlays = [];
				var geocoder = new daum.maps.services.Geocoder();
				// 주소로 좌표를 검색합니다

				for (var i = 0; i < propertyList.length; i++) {
					var text = propertyList[i].address;
					x = [];
					y = [];
					x.push(propertyList[i].lati)
					y.push(propertyList[i].longti)
					var coords = new daum.maps.LatLng(x, y);
					var imageSrc = 'resources/img/clear.png', // 마커이미지의 주소입니다
					imageSize = new daum.maps.Size(0, 0), // 마커이미지의 크기입니다
					imageOprion = {
						offset : new daum.maps.Point(0, 0)
					}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
					// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
					var markerImage = new daum.maps.MarkerImage(imageSrc,
							imageSize, imageOprion), markerPosition = new daum.maps.LatLng(
							x, y); // 마커가 표시될 위치입니다

					// 결과값으로 받은 위치를 마커로 표시합니다
					var marker = new daum.maps.Marker({
						position : coords,
					// 마커이미지 설정
					});
							marker.setImage(markerImage);
					addOverlay2(propertyList[i],timeList[i], map);
					markers.push(marker);
					//marker.setMap(map);
					// 마커가 지도 위에 표시되도록 설정합니다
					searchPlaces();
				}
				clusterer.clear();
				clusterer.addMarkers(customOverlays);
			}
			
			function addOverlay(property,x,y,map) {
				var content = '<div id="pin" class="pin selected" lati="'+property.lati+'" longti="'+property.longti+'" index="'+index+'" style="position: relative;  ">'+
				'<div class="area">'+Math.floor(property.area*0.3025)+"평"+'</div>'+
				'<div class="price">'+property.price/10000+"억"+'</div>'+
				'</div>'
			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new daum.maps.LatLng(property.lati, property.longti);  

			// 커스텀 오버레이를 생성합니다
			customOverlay = new daum.maps.CustomOverlay({
			    position: position,
			    content: content,
			    xAnchor: 0,
			    yAnchor: 1
			    
			});

			// 커스텀 오버레이를 지도에 표시합니다
			customOverlay.setMap(map);
			customOverlays.push(customOverlay);
			
			
			}
			
			function addOverlay2(property,distance,map) {
				var content = '<div id="pin" class="pin selected" lati="'+property.lati+'" longti="'+property.longti+'" index="'+index+'" style="position: relative;  ">'+
				'<div class="area" style ="margin-top: 7px">'+Math.floor(property.area*0.3025)+"평"+'</div>'+
				'<div class="price" style = "margin-top: -1px">'+property.price/10000+"억"+'</div>'+
				'<div class="time" style="position: relative; margin-top:0px">'+Math.round(distance/60)+'분'+'</div>'+
				'</div>'
			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new daum.maps.LatLng(property.lati, property.longti);  

			// 커스텀 오버레이를 생성합니다
			customOverlay = new daum.maps.CustomOverlay({
			    position: position,
			    content: content,
			    xAnchor: 0,
			    yAnchor: 1
			    
			});

			// 커스텀 오버레이를 지도에 표시합니다
			customOverlay.setMap(map);
			customOverlays.push(customOverlay);
			
			
			}
			
			function addMarkerEvent(marker, circle) {
				daum.maps.event.addListener(customOverlay, 'click', function() {
					var property_status = $("#property_status").val();
					var area = $("#area-input").val();
					var property_type = $("#property_type").val();
					var price = $("#price-input").val();
					$("#category").show();
					removeCircle();
					gps = marker.getPosition();
					$.ajax({
						url : 'click',
						type : 'post',
						dataType : 'json',
						data : {
							x : gps.getLat(),
							y : gps.getLng(),
							propertyType : property_status,
							builtType : property_type,
							area : area,
							price : price

						},
						success : function(data) {
							var temp = 0;
							displayPropertyInfo(data[temp], gps.getLat(), gps
									.getLng());
							
							
								
									
						},
						error : function(data) {
						}
					})
					
					var moveLatLon = new daum.maps.LatLng(gps.getLat(), gps.getLng()-0.0006);
						    
						    map.panTo(moveLatLon);
					

					center = gps;
					map.setCenter(gps);
					removeMarker()
					onClickCategory();
					circle = new daum.maps.Circle({
						center : new daum.maps.LatLng(gps.getLat(), gps.getLng()), // 지도의 중심 좌표
						radius : 450, // 원의 반지름 (단위 : m)
						fillColor : '#dc6464', // 채움 색
						fillOpacity : 0.5, // 채움 불투명도
						strokeWeight : 3, // 선의 두께
						strokeColor : '#FF0000', // 선 색
						strokeOpacity : 0.9, // 선 투명도 
						strokeStyle : 'solid' // 선 스타일
					});
					circle.setMap(map);
					circles.push(circle);
				});
			}
			$(document).on('click','#pin', function() {
				var property_status = $("#property_status").val();
				var area = $("#area-input").val();
				var property_type = $("#property_type").val();
				var price = $("#price-input").val();
				$("#category").show();
				removeCircle();
				var x = $(this).attr("lati");
				var y = $(this).attr("longti");
				index = $(this).attr("index");
				var propertyNo = null;
				$.ajax({
					url : 'click',
					type : 'post',
					dataType : 'json',
					data : {
						x : x,
						y : y,
						propertyType : property_status,
						builtType : property_type,
						area : area,
						price : price

					},
					success : function(data) {
						if(index<data.length){
						displayPropertyInfo(data[index], x, y)

						}else{
							index=0;
							displayPropertyInfo(data[index], x, y)
							
						}
						map.panBy(0,-180);            
						
					},
					error : function(data) {
					}
				})


				center = new daum.maps.LatLng(x, y);
				map.setCenter(center);
				removeMarker()
				onClickCategory();
				circle = new daum.maps.Circle({
					center : new daum.maps.LatLng(x, y), // 지도의 중심 좌표
					radius : 450, // 원의 반지름 (단위 : m)
					fillColor : '#000000', // 채움 색
					fillOpacity : 0.1, // 채움 불투명도
					strokeWeight : 3, // 선의 두께
					strokeColor : '#7f7f7f', // 선 색
					strokeOpacity : 0.9, // 선 투명도 
					strokeStyle : 'solid' // 선 스타일
				});
				circle.setMap(map);
				circles.push(circle);
			})
		});
		$(document).on('click','#contact',function(event){
			event.preventDefault();
			$('html, body').stop().animate({'scrollTop':1900},700);
		})
		
		$(document).on('click','#detailView',function(event){
			event.preventDefault();
			$('html, body').stop().animate({'scrollTop':850},700);
		})

		var infowindow = new daum.maps.InfoWindow({
			zIndex : 1
		});
		
		// 키워드로 장소를 검색합니다

		// 키워드 검색을 요청하는 함수입니다
		function searchKeyword(target) {

			var keyword = document.getElementById(target).value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchKey);
		}
		

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchKey(status, data, pagination) {
			if (status === daum.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayKeyPlaces(data.places);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === daum.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === daum.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}
		function panTo(x,y) {
			
			alert(x);
			alert(y);
		    // 이동할 위도 경도 위치를 생성합니다 
		                
		}        

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayKeyPlaces(places) {
			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new daum.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			removeKeyMarker();
			// 지도에 표시되고 있는 마커를 제거합니다

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new daum.maps.LatLng(places[i].latitude,
						places[i].longitude), marker = addKeyMarker(
						placePosition, i), itemEl = getListItem(i, places[i],
						marker); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					daum.maps.event.addListener(marker, 'click', function(mouseEvent) {
						searchDetailAddrFromCoords(marker.getPosition() , function(status, result) {
					        if (status === daum.maps.services.Status.OK) {
					        	if(p==0){
					         $("#origins").val(result[0].jibunAddress.name);
					         }else if(p==1){
					        	 $("#origins2").val(result[0].jibunAddress.name);
					         }
					        	
					        }   
					    });
					
					});
					daum.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					daum.maps.event.addListener(marker, 'mouseout',

					function() {
						infowindow.close();
					});
					
					

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].title);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}
		function searchAddrFromCoords(coords, callback) {
		    // 좌표로 행정동 주소 정보를 요청합니다
		    geocoder.coord2addr(coords, callback);         
		}
		function searchDetailAddrFromCoords(coords, callback) {
		    // 좌표로 법정동 상세 주소 정보를 요청합니다
		    geocoder.coord2detailaddr(coords, callback);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var elle = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.title + '</h5>';

			if (places.newAddress) {
				itemStr += '   <p class="jibun gray" add="'+places.newAddress+'" id="address_"'+index+'>'
						+ places.newAddress
						+ '</p>'
						+ '   <p class="jibun gray" add="'+places.address+'" id="address_"'+index+'>'
						+ places.address + '</p>'
			} else {
				itemStr += '<p class="jibun gray" add="'+places.address+'" id="address_"'+index+'>'
						+ places.address + '</p>';
			}

			itemStr += '  <span class="tel">'
					+ places.phone
					+ '</span>'
					+ '</div>';
			;

			elle.innerHTML = itemStr;
			elle.className = 'item';

			return elle;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addKeyMarker(position, idx, title) {
			var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new daum.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new daum.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new daum.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});
			marker.setMap(map); // 지도 위에 마커를 표출합니다
			keyMarkers.push(marker); // 배열에 생성된 마커를 추가합니다
			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeKeyMarker() {
			for (var i = 0; i < keyMarkers.length; i++) {
				keyMarkers[i].setMap(null);
			}
			keyMarkers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var elle = document.createElement('a');
				elle.href = "#";
				elle.innerHTML = i;

				if (i === pagination.current) {
					elle.className = 'on';
				} else {
					elle.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(elle);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>
		<!-- end Map -->



		<!-- Search Box -->

		<div class="search-box-wrapper" style="">
			<div class="search-box-inner">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4">
							<div class="search-box map">
								<form role="form" id="form-map" class="form-map form-search"
									action="http://themes.fruitfulcode.com/zoner/properties/"
									method="GET">
									<h2>Search Your Property</h2>


									<input type="hidden" id="filter_property"
										name="filter_property" value="d4cbc5ae4f" />
									<div class="form-group">
										<input type="text" class="form-control" id="sb-keyword"
											name="sb-keyword" value="" placeholder="Keyword" />
									</div>

									<!-- 			<div class="form-group"> -->
									<!-- 				<select id="property_country" class="property_country" name="sb-country"> -->
									<!-- 					<option value="">Country</option> -->
									<!-- 					<option value="AT" >Austria</option><option value="FR" >France</option><option value="PL" >Poland</option><option value="ES" >Spain</option><option value="GB" >United Kingdom (UK)</option><option value="US" >United States (US)</option>				</select> -->
									<!-- 			</div>/.form-group -->
									<div class="form-group" style="height: 40px">
										<div class="form-group" style="width: 50%; float: left;">
											<select id="property_status" class="property_status"
												name="sb-status">
												<option value="">거래형태</option>
												<option value="매매">매매</option>
												<option value="전세">전세</option>
												<option value="월세">월세</option>
											</select>
										</div>
										<!-- /.form-group -->

										<div class="form-group" style="width: 50%; float: left;">
											<select id="property_type" class="property_type"
												name="sb-type">
												<option value="">Type</option>
												<option value="아파트">아파트</option>
												<option value="연립">연립-다세대</option>
												<option value="주택">단독-다가구</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="price-range">
											<input id="area-input" class="area-input" type="text"
												name="sb-area" value="0;80">
										</div>
									</div>

									<div class="form-group">
										<div class="price-range">
											<input id="price-input" class="price-input" type="text"
												name="sb-price" value="0;500000">
										</div>
									</div>
									<div class="form-group" style="margin-bottom: 50px;">
										<input type="text" id="origins" class="origins" name="sb-dest"
											placeholder="목적지1을 입력해주세요"> <input type="text"
											id="origins2" class="origins" name="sb-dest"
											placeholder="목적지2를 입력해주세요"> <select id="arrive_time"
											class="arrive_time" name="sb-time">
											<option value="">도착 시간</option>
											<option value="10">10분</option>
											<option value="20">20분</option>
											<option value="30">30분</option>
											<option value="40">40분</option>
											<option value="50">50분</option>
											<option value="60">1시간</option>
										</select> <input type="button" id="searchKeyword"
											class="btn btn-default" value="목적지1검색"
											style="width: 50%; float: left;"> <input
											type="button" id="searchKeyword2" class="btn btn-default"
											value="목적지2검색" style="width: 50%; float: left;">
									</div>

									<div class="form-group">
										<button type="button" class="btn btn-default" id="search">검
											색</button>
									</div>
									<!-- /.form-group -->
								</form>
								<!-- /#form-map -->
							</div>
							<!-- /.search-box.map -->
						</div>
						<!-- /.col-md-3 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container -->
			</div>
			<!-- /.search-box-inner -->
		</div>
		<!-- end Search Box -->

		<div id="page-content" class="site-main">
			<!-- Breadcrumb -->
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="http://themes.fruitfulcode.com/zoner"
						title="Zoner" rel="home" class="trail-begin">Home</a></li>
					<li class="active"><span class="trail-end">Homepage</span></li>
				</ol>
			</div>
			<section class="wpb_row vc_row-fluid" id="hideDetail" hidden>
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12">

							<article id="post-48"
								class="post-48 page type-page status-publish hentry">
								<section id="content" class="content">
									<header class="">
										<h1>상세 정보</h1>
									</header>


								</section>
			</section>
			</section>
			</article>
		</div>


		<section class="wpb_row vc_row-fluid">
			<div class="container">
				<div class="row">

					<div class="col-md-9 col-sm-9">

						<article id="post-518">
							<section id="property-detail">
								<header class="property-title"> </header>


								<section id="property-gallery-518" class="property-gallery">
								</section>


								<div class="row">
									<div class="col-md-4 col-sm-12">
										<section id="quick-summary" class="clearfix"></section>
										<!-- /#quick-summary -->
									</div>

									<div class="col-md-8 col-sm-12">
										<section id="description"></section>
										<section id="property_features"></section>
										<!-- /#property_features -->
										<!-- <section id="floor-plans">
												<div class="floor-plans">
													<header>
														<h2>Floor Plans</h2>
													</header>
													<a
														href="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/plan_original_111710.jpg"
														class="image-popup"><img alt=""
														src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/plan_original_111710-212x155.jpg"></a>

												</div>
											</section>
											/#floor-plans -->
										<section id="contact-agent"></section>
									</div>
								</div>
							</section>
						</article>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- #main -->

	<!-- Footer -->
	<jsp:include page="BLfooter.jsp"></jsp:include>

	</div>
	<!-- #page -->

	<link rel='stylesheet'
		id='vc_google_fonts_roboto100100italic300300italicregularitalic500500italic700700italic900900italic-css'
		href='//fonts.googleapis.com/css?family=Roboto%3A100%2C100italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic&#038;ver=201a87ed354d4d101903f99fa0251b3d'
		type='text/css' media='all' />
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=201a87ed354d4d101903f99fa0251b3d-2014.06.20'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","recaptchaEmpty":"Please verify that you are not a robot.","sending":"Sending ...","cached":"1"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var zonerRegisterUserForm = {"valid_email_mess":"Please enter your unique email","valid_login_mess":"Please enter your unique login"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/registerForm.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/comment-reply.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/js/bootstrap.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/bootstrap-select.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/holder.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/icheck.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript' src='resources/js/smoothscroll.js'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/owl.carousel.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.validate.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var LangGlobal = {"name":"en_US"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jq-validation-translate/langs.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.placeholder.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.jgrowl.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='resources/js/jquery.magnific-popup.min.js'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<!-- <script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d'></script> -->
	<!-- <script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/infobox.js?ver=201a87ed354d4d101903f99fa0251b3d'></script> -->
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.markercluster.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerclusterer.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<!-- <script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom-map.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script> -->
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":"[{\"title\":\"2001 Kossuth St\",\"address\":\"Indiana, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/lafayette\\\/\\\" title=\\\"Lafayette\\\">Lafayette<\\\/a>, 2001 Kossuth St, IN 47905\",\"price\":\"$600,000\",\"lat\":\"40.40988635378934\",\"lng\":\"-86.87392959259034\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/2001-kossuth-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/20626010444_dd43fe3ebc_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/vineyard.png\"},{\"title\":\"298 N Franklin St\",\"address\":\"Kentucky, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/madisonville\\\/\\\" title=\\\"Madisonville\\\">Madisonville<\\\/a>, 298 N Franklin St, KY 42431\",\"price\":\"$560,000\",\"lat\":\"37.3328235\",\"lng\":\"-87.49570270000004\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/298-n-franklin-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/20747890453_5c1b3149f2_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"419 Heritage Way\",\"address\":\"Idaho, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/cascade\\\/\\\" title=\\\"Cascade\\\">Cascade<\\\/a>, 419 Heritage Way, ID 83611\",\"price\":\"Price on request\",\"lat\":\"44.5170959\",\"lng\":\"-116.04735629999999\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/419-heritage-way\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22170691606_4e3124e075_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"1469 Clayton St\",\"address\":\"Utah, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/salt-lake-city\\\/\\\" title=\\\"Salt Lake City\\\">Salt Lake City<\\\/a>, 1469 Clayton St, UT 84104\",\"price\":\"Price on request\",\"lat\":\"40.73738458684524\",\"lng\":\"-111.92742327116395\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1469-clayton-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22010564328_180deb3832_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"455 Brewster Ave\",\"address\":\"Nebraska, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/brewster\\\/\\\" title=\\\"Brewster\\\">Brewster<\\\/a>, 455 Brewster Ave, NE 68821\",\"price\":\"Price on request\",\"lat\":\"41.939042033714784\",\"lng\":\"-99.86658597144162\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/455-brewster-ave\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22319253688_4735abf1d5_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/villa.png\"},{\"title\":\"5494 North-West 86th St\",\"address\":\"Iowa, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/johnston\\\/\\\" title=\\\"Johnston\\\">Johnston<\\\/a>, 5494 NW 86th St, IA 50131\",\"price\":\"$490,000\",\"lat\":\"41.65992274263721\",\"lng\":\"-93.73582614760744\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/5494-north-west-86th-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22429148870_460e90615b_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"1510 Doctor Martin Luther King Jr Drive\",\"address\":\"Arkansas, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/little-rock\\\/\\\" title=\\\"Little Rock\\\">Little Rock<\\\/a>, 1510 Doctor M.L.K. Jr, AR 72202\",\"price\":\"$500,000\",\"lat\":\"34.73615433519195\",\"lng\":\"-92.28962315396728\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1510-doctor-martin-luther-king-jr-drive\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22698641040_679047d2c2_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"516 E Palmetto St\",\"address\":\"South Carolina, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/florence\\\/\\\" title=\\\"Florence\\\">Florence<\\\/a>, 516 E Palmetto St, SC 29506\",\"price\":\"$150,000\",\"lat\":\"34.1938524059588\",\"lng\":\"-79.75888589682006\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/516-e-palmetto-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22869603797_f9bdf34a15_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"725 Seigle Ave\",\"address\":\"North Carolina, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/charlotte\\\/\\\" title=\\\"Charlotte\\\">Charlotte<\\\/a>, 725 Seigle Ave, NC 28204\",\"price\":\"$100,000\",\"lat\":\"35.23381744112782\",\"lng\":\"-80.8142875886719\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/725-seigle-ave\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/23351940986_0c44d991fe_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"Osiedle domk\\u00f3w szeregowych w Rudzie \\u015al\\u0105skiej\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/katowice\\\/\\\" title=\\\"Katowice\\\">Katowice<\\\/a>, Katowicka 18, 41-706\",\"price\":\"z\u0142120,000\",\"lat\":\"50.26967767848073\",\"lng\":\"18.87014579311517\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/osiedle-domk%c3%b3w-szeregowych-w-rudzie-%c5%9bl%c4%85skiej\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/11\\\/DSCN0648-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"4 bedroom detached house for sale\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 78 swan lane, cv2 4ga\",\"price\":\"\u20ac2,000\",\"lat\":\"52.4136916\",\"lng\":\"-1.514918\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/4-bedroom-detached-house-for-sale\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/86-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"Iglesia Chiquitana en Alquiler\",\"address\":\"Por Ahi, 00000\",\"price\":\"$805\",\"lat\":\"-22.605648190950884\",\"lng\":\"-58.863388920654245\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/iglesia-chiquitana-en-alquiler\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/DSC00567-Custom-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"HABITACI\\u00d3N PRINCIPAL (Botafoc)\",\"address\":\"Baleares, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/ibiza\\\/\\\" title=\\\"Ibiza\\\">Ibiza<\\\/a>, 49 Via P\\u00fanica, Ibiza, Balearic Islands, Espa\\u00f1a, 07800\",\"price\":\"\u20ac150\",\"lat\":\"38.9067339\",\"lng\":\"1.4205982999999378\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/se-alquila-habitaci%c3%b3n-principal-botafoc\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/02-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"ThemeStarz Property\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/viena\\\/\\\" title=\\\"Viena\\\">Viena<\\\/a>, Main Street 3, 123\",\"price\":\"$4,580\",\"lat\":\"48.21652479161182\",\"lng\":\"16.369269873510802\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/themestarz-property\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/property-02.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"9\\\/11 Memorial and Museum\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 180 Greenwich Street New York\",\"price\":\"$285,000\",\"lat\":\"40.706089120055346\",\"lng\":\"-74.00196838000477\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/911-memorial-and-museum\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/911-memorial-07-440x294.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/construction-site.png\"},{\"title\":\"4068 Diamond Street\",\"address\":\"Alabama, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Diamond Street, 10002\",\"price\":\"$35,000\",\"lat\":\"40.69310447668314\",\"lng\":\"-73.98620033074951\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/4068-diamond-street\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/04\\\/thumbnail_16-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"1028 Henery Street\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Bridge St, 10002\",\"price\":\"$28,000\",\"lat\":\"40.69756216559081\",\"lng\":\"-73.99306678582764\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1028-henery-street\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/11\\\/Childrens-Room-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"3398 Lodgeville Road\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Bridge St, 10002\",\"price\":\"$28,000\",\"lat\":\"40.70172674410699\",\"lng\":\"-73.98469829370117\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/3398-lodgeville-road\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_11.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"17 St George\u2019s Square\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 17 St George's Square, SW1V\",\"price\":\"$160,000\",\"lat\":\"51.489215392503425\",\"lng\":\"-0.13537311364746074\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/17-st-georges-square\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/awesome-mansion1-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"34 Queen Anne\u2019s Gate\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 34 Queen Anne's Gate, SW1H\",\"price\":\"$500,000\",\"lat\":\"51.500697618909946\",\"lng\":\"-0.13364577104186992\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/34-queen-annes-gate\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_12.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"County Hall\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, Lambeth, SE1\",\"price\":\"$400,000\",\"lat\":\"51.50167938535641\",\"lng\":\"-0.11952662278758908\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/county-hall\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_11.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"Brittany Point\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, Lambeth, SE11\",\"price\":\"$450\",\"lat\":\"51.48972978331253\",\"lng\":\"-0.11159801293945293\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/brittany-point\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_91.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"30 Warner St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 30 Warner St, EC1R 5EX\",\"price\":\"$97,000\",\"lat\":\"51.5233530018723\",\"lng\":\"-0.11047148515319805\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/30-warner-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_10.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"75 High Holborn\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 75 High Holborn, WC1V 6LS\",\"price\":\"$80,000\",\"lat\":\"51.517905521410455\",\"lng\":\"-0.11636161614990215\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/75-high-holborn\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_9.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"7 Arundel St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 7 Arundel St, WC2R 3DA\",\"price\":\"$90,001\",\"lat\":\"51.511832\",\"lng\":\"-0.1142982999999731\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/7-arundel-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_8.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"10 Kingsway\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 10 Kingsway\",\"price\":\"$50,000\",\"lat\":\"51.51375271507068\",\"lng\":\"-0.11754178811645488\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/10-kingsway\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/21182077749_c8a552cf69_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/vineyard.png\"},{\"title\":\"1 Catton St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 1 Catton St, WC1R 4AB\",\"price\":\"$89,999\",\"lat\":\"51.517832082786384\",\"lng\":\"-0.11992358972167949\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1-catton-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/03\\\/Home-1-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"Pushkin House\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 5A Bloomsbury Square, WC1A 2TA\",\"price\":\"$980\",\"lat\":\"51.5182147\",\"lng\":\"-0.12314409999999043\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/pushkin-house\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_5.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"1234 High Holborn\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 1234 High Holborn, WC1A 1NU\",\"price\":\"$90,000\",\"lat\":\"51.51657693163256\",\"lng\":\"-0.12420975972747783\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1234-high-holborn\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22429148870_460e90615b_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"37 Great Russell St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 37 Great Russell St\",\"price\":\"$58,000\",\"lat\":\"51.517792025305276\",\"lng\":\"-0.1272245626602171\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/37-great-russell-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_3.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"159 Charing Cross Rd\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 159 Charing Cross Rd, WC2H\",\"price\":\"$76,000\",\"lat\":\"51.51598606392943\",\"lng\":\"-0.13284110833751583\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/159-charing-cross-rd\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_2.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"St Floor Wingate House\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 93-107 Shaftesbury Ave, W1D 5DY\",\"price\":\"$100,000\",\"lat\":\"51.51271111582853\",\"lng\":\"-0.13048076440429668\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/st-floor-wingate-house\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_1.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"987 Cantebury Drive\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/paris\\\/\\\" title=\\\"Paris\\\">Paris<\\\/a>, Golden Valley, MN 55427, 69001\",\"price\":\"$1,213,333\",\"lat\":\"48.8588589\",\"lng\":\"2.3470599\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/987-cantebury-drive-2\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_8.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"}]","icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"1","max_price":"500000","default_currency":"만(원)","header_variations":"3","zoner_ajax_nonce":"4d82809304","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment."};
/* ]]> */
</script>
	<script type='text/javascript' src='resources/js/custom.min.js'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.mCustomScrollbar.concat.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.cookie.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var zonerSignIn = {"valid_email_mess":"Please enter valid email address","valid_pass_mess":"Please enter valid password","frg_pass_button_text":"Send Me Password","zoner_created_user":"","zoner_message_created_user":"Thank you for registering. Please check your mail."};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/signIn.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/wp-embed.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/core.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/widget.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/position.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/menu.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/autocomplete.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
</body>
<!-- <script type="text/javascript">
if(screen.width < 700){
	$("#category").css('top','50%').css('position','inherit').css('left','0px');
	$('.mobcate').css({'width':'10%','left':'0px','font-size':'13px'});
}else{
	$("#category").css('top','55%').css('position','absolute').css('left','40%');
}
</script> -->
</html>