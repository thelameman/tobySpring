<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<title>${ptotal.danji } | B&L</title>
	<meta name='robots' content='noindex,follow' />
		<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=2266aed1d1ad1c546afc98030e20eba0&libraries=services"></script>
	
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"http:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-includes\/js\/wp-emoji-release.min.js?ver=201a87ed354d4d101903f99fa0251b3d"}};
			!function(a,b,c){function d(a){var c=b.createElement("canvas"),d=c.getContext&&c.getContext("2d");return d&&d.fillText?(d.textBaseline="top",d.font="600 32px Arial","flag"===a?(d.fillText(String.fromCharCode(55356,56806,55356,56826),0,0),c.toDataURL().length>3e3):("simple"===a?d.fillText(String.fromCharCode(55357,56835),0,0):d.fillText(String.fromCharCode(55356,57135),0,0),0!==d.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
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
<link rel='stylesheet' id='zoner-custom-config-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-options/patterns/css/admin-config.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='dsidx-css'  href='http://cdn4.diverse-cdn.com/api/combo-css/config=dsidxpress.css/0e43ba' type='text/css' media='all' />
<link rel='stylesheet' id='contact-form-7-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-gmap-custom-scroll-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/css/jquery.mCustomScrollbar.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-gmap-style-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsCss/gmap.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-fontAwesom-css'  href='resources/font/font-awesome-4.5.0/css/font-awesome.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-fontElegantIcons-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/fonts/ElegantIcons.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-social-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap-social-buttons.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-bootstrap-select-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/bootstrap-select.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-magnific-css-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/magnific-popup.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-slider-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.slider.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-owl.carousel-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/owl.carousel.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-jgrowl-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.jgrowl.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='zoner-style-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner-child/style.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<style id='zoner-style-inline-css' type='text/css'>
a { color:#1396e2; }a:hover { color:#2a6496; }a:active { color:#2a6496;}@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2),only screen and (min-resolution: 2dppx) {.navbar .navbar-header .navbar-brand.nav.logo { display: none; }.navbar .navbar-header .navbar-brand.nav.logo.retina { display: inline-block; width:50%;}}.page-sub-page #page-content::after {background: -moz-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f1f1f1), color-stop(80%, #ffffff));background: -webkit-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -o-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -ms-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: linear-gradient(to bottom, #f1f1f1 0%, #ffffff 80%);filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#f1f1f1", endColorstr="#ffffff",GradientType=0 );} .navigation { background-color:#FFFFFF;}.leaflet-div-icon { background-image:url(http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/images/icons/marker.png);} .horizontal-search .search-box-wrapper{background-color:#1396e2;}.advanced-search,.advanced-search header h3,.horizontal-search .search-box-wrapper .search-box .advanced-search-toggle {color:#ffffff;}.navigation .navbar .navbar-nav > li a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li:hover > a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li.current_page_item > a, .navigation .navbar .navbar-nav > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-parent > a, .navigation .navbar .navbar-nav > li.current_page_parent > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li.active a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation li a:hover {background-color:#1396e2;color:#ffffff;}.navigation .navbar .navbar-nav > li .child-navigation > li:hover > a, .navigation .navbar .navbar-nav > li .child-navigation > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li .child-navigation > li .child-navigation > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > .child-navigation li.current-menu-item > a {background-color:#1396e2;color:#ffffff; }.navigation .navbar .navbar-nav > li .child-navigation {background-color:#f3f3f3; }.navigation .navbar .navbar-nav > li > .child-navigation > li:first-child a:after {border-color: transparent transparent #f3f3f3 transparent;}.navigation .navbar .navbar-nav > li > .child-navigation.position-bottom > li:last-child > a:after, border-color: #f3f3f3 transparent transparent;} .navigation .navbar .navbar-nav > li .child-navigation li a {border-color:rgba(#000000,0.1); }.navigation .navbar .navbar-nav > li a:after {background-color:#1396e2; }.blog-posts .blog-post .blog-post-content p, .container p {filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);opacity: 0.7;}#page-footer .inner #footer-copyright {color:#ffffff;}#page-footer .inner #footer-copyright {background-color:#073855;}#page-footer .inner .property-thumbnail {background-color:#1396e2;}.page-id-2597 .breadcrumb, .page-id-2597 h1 {display:none !important;}#section-50 h2 {text-align:center !important;}.header-variations section.zoner-variations {padding:0 0 60px 0;}.header-variations .center {text-align: center;}.header-variations .no-border {border: medium none !important;}.header-variations hr {border-color: rgba(0, 0, 0, 0.1);}.header-variations h2 {border-bottom: 1px solid rgba(0, 0, 0, 0.1);font-size: 24px;margin-bottom: 35px;margin-top: 10px;}.header-variations h3 { color: #012548; font-size: 20px; font-weight: normal; margin-bottom: 0; }.header-variations h4 { margin-top: 5px; margin-bottom: 0; font-size: 14px;}.header-variations .item {bottom: 0;display: block;margin: 15px 0;position: relative;text-align: center;transition: all 0.2s ease 0s;}.header-variations a {color: #1396e2;outline: medium none !important;transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548; }.header-variations .arrow { -webkit-transition: .2s; display: block; margin-top: 10px; position: relative; left: 0; transition: .2s; }.header-variations .description { display: none; -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.2); font-size: 12px; background-color: #ececec; box-shadow: 0 1px 1px rgba(0,0,0,.2); position: absolute; color: #2a2a2a; padding: 5px 10px; top: -45px; }.header-variations.description:after { bottom: -7px; content: ""; height: 0; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent #ececec transparent transparent; position: absolute; right: 0; width: 0; }.header-variations .logo { padding: 30px 0 15px; text-align: center; }.header-variations .item { -webkit-transition: .2s; transition: .2s; display: block; margin: 15px 0; text-align: center; position: relative; bottom: 0; }.header-variations .item:hover { bottom: 5px; }.header-variations .item img { max-width: 100%; }.header-variations .item img {max-width: 100%;}.header-variations a h1, .pheader-variations a h2, .header-variations a h3, .header-variations a h4 { color: #073855; transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548;}.header-variations a:hover { text-decoration: none;}@media (max-width: 767px) {.header-variations .item { margin-bottom: 60px; }}
</style>
<link rel='stylesheet' id='redux-google-fonts-zoner_config-css'  href='http://fonts.googleapis.com/css?family=Roboto%3A400%2C300&#038;ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery-migrate.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://cdn3.diverse-cdn.com/api/combo-js/config=dsidxpress.js/05cd0d?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?v=3&#038;libraries=places&#038;ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='https://checkout.stripe.com/checkout.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<link rel='https://api.w.org/' href='http://themes.fruitfulcode.com/zoner/wp-json/' />

<link rel="alternate" type="application/json+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fproperty%2F30-warner-st%2F" />
<link rel="alternate" type="text/xml+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fproperty%2F30-warner-st%2F&#038;format=xml" />
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
		<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress."/>
<!--[if lte IE 9]><link rel="stylesheet" type="text/css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen"><![endif]--><!--[if IE  8]><link rel="stylesheet" type="text/css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/vc-ie8.min.css" media="screen"><![endif]-->		<script type="text/javascript">
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
		<!-- <script type="text/javascript">
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
})('//themes.fruitfulcode.com/zoner/?wordfence_logHuman=1&hid=88D9CB4A3DFA855EF3BCEF998EB24AEA');
</script> -->
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
				</script>				<script type="text/javascript">
				if (typeof localdsidx == "undefined" || !localdsidx) { var localdsidx = {}; };
				localdsidx.pluginUrl = "/zoner/wp-content/plugins/dsidxpress/";
				localdsidx.homeUrl = "http://themes.fruitfulcode.com/zoner";
				</script><link rel="shortcut icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-16x16.png"/>
<link rel="apple-touch-icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-57x57.png"> 
<link rel="apple-touch-icon" sizes="114x114" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-114x114.png "> 
<link rel="apple-touch-icon" sizes="72x72" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-72x72.png"> 
<link rel="apple-touch-icon" sizes="144x144" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-144x144.png"> 
<style type="text/css" title="dynamic-css" class="options-output">body{background-color:#ffffff;background-repeat:inherit;background-size:inherit;background-attachment:inherit;}body{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h1{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:28px;}h2{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:24px;}h3{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:18px;}h4{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h5{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h6{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}p{font-family:Roboto;text-align:inherit;line-height:20px;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}a{color:#1396e2;}a:hover{color:#2a6496;}a:active{color:#2a6496;}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript>
<script src="resources/js/jquery-2.2.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	
	if(screen.width < 700){
		var text = '<a href="kakao='+${ptotal.propertyNo }+'">카카오톡 공유</a>'
			$("#kakao").html(text);
		
	}
	
	var propertyType = '${ptotal.propertyType}';
	var price = ${ptotal.price};
	var monthfee = ${ptotal.monthfee};
	var text='';
	if(propertyType=='월세'){
	if(Math.floor(price/10000)!=0){
	    text+='보증금: '+Math.floor(price/10000)+' 억 '
	    }else{
	    	text+='보증금:'
	    }
	    if((price-Math.floor(price/10000)*10000)!=0){
	    text += (price-Math.floor(price/10000)*10000)+' 만 원 / 월세: '+monthfee+' 만 원'
	    }else{
	    	text += ' 원 / 월세: '+monthfee+' 만 원'
	    }
}else{
if(Math.floor(price/10000)!=0){
text+= Math.floor(price/10000)+' 억 '
}
if((price-(Math.floor(price/10000)*10000))!=0){
text+=(price-(Math.floor(price/10000)*10000))+ ' 만 원'
}else{
text+=	'원'
}
}
	$('#tagpriceblue').append(text);
	
});

function callMsgbox(text){
	var url = "selectOneMsgBox?sendId=${loginId}&receiveId="+text;
	
	window.open(url,'pop','resizable=yes scrollbars=yes');
}
	
</script>
</head>
<body class="single single-property postid-518 group-blog masthead-fixed singular page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive" data-offset="90" data-target=".navigation" data-spy="scroll" id="page-top">
	<div id="page" class="hfeed site wrapper">
		 <div id="page-content" class="site-main">
		<!-- Breadcrumb --><div class="container"><ol class="breadcrumb"><li><a href="index" title="Zoner" rel="home" class="trail-begin">Home</a></li>  <li><a href="myPage" title="Properties">MyPage</a></li>  <li class="active"><span class="trail-end">${ptotal.danji }</span></li></ol></div>
			<section class="wpb_row vc_row-fluid">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-sm-9" style="width:100%;">
				 
			<article id="post-518">
			<section id="property-detail">
						<header class="property-title">
			<h1>${ptotal.danji } - ${ptotal.propertyType }</h1>


							<figure>${ptotal.address }</figure>
			
			        </header>

	
		<section id="property-gallery-518" class="property-gallery">
			<div id="owl-carousel-310" class="owl-carousel property-carousel">
				
					<c:forEach items="${plist }" var="pic" >
						<div class="property-slide">
							<a href="/img/${pic.pic_temp }" class="image-popup">
								<div class="overlay"><h3></h3></div>
								<img alt="" src="/img/${pic.pic_temp }">
							</a>
						</div><!-- /.property-slide -->
					 </c:forEach>
			</div>
		</section>

		
				<div class="row">
					<div class="col-md-4 col-sm-12">
								<section id="quick-summary" class="clearfix">
			<header><h2>상세정보</h2></header>
				<dl>
											<dt>상세주소</dt>
						<dd>${ptotal.address }  ${ptotal.danji }</dd>
					
					
											<dt>매매가</dt>
						<dd><span class="tag price" id="tagpriceblue"></span></dd>
					
											<dt>관리비:</dt>
						<dd>${ptotal.maintenance }</dd>
											<dt>거래형태:</dt>
						<dd>${ptotal.propertyType }</dd>
					
											<dt>주거형태:</dt>
						<dd>${ptotal.builtType }</dd>
					
											<dt>면적:</dt>
						<dd><fmt:formatNumber value="${ptotal.area*0.3025 }" pattern="#.#" ></fmt:formatNumber> 평(${ptotal.area }) m<sup>2</sup></dd>
					
											<dt>층:</dt>
						<dd>${ptotal.floor }</dd>
					
											<dt>건축년도:</dt>
						<dd>${ptotal.builtyear }</dd>
					
											<dt>입주가능일:</dt>
						<dd>${ptotal.movedate.substring(0,10) }</dd>
						<dt></dt>
						<dd id="kakao"><a href="preTranfirst?propertyNo=${ptotal.propertyNo }">가계약하기</a><br>
						</dd>
					
									</dl>
						</section><!-- /#quick-summary -->
						</div>
					
					<div class="col-md-8 col-sm-12">
									<section id="description">
				<header><h2>${ptotal.title }</h2></header>
				<p>${ptotal.content }</p>
			</section><!-- /#description -->
					<section id="property_features">
				<header><h2>옵션</h2></header>
					<ul class="list-unstyled property_features-list">
					<c:forEach var="op" items="${ptotal.roomoption }"> 
						<li>${op }</li>					
						</c:forEach>
						</ul>
			</section><!-- /#property_features -->
					<section id="floor-plans">
				<div class="floor-plans">
					<header><h2>Floor Plans</h2></header>
						<a href="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/plan_original_111710.jpg" class="image-popup"><img alt="" src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/plan_original_111710-212x155.jpg"></a>

				</div>
            </section><!-- /#floor-plans -->
		
            <section id="property-map">
                <header><h2>Map</h2></header>
                <div class="property-detail-map-wrapper">
                    <div id="property-detail-map" class="property-detail-map" ></div>
                </div>
            </section><!-- /#property-map -->

            <script type="text/javascript">
            var mapContainer = document.getElementById('property-detail-map'), // 지도를 표시할 div 
            mapOption = { 
                center: new daum.maps.LatLng('${ptotal.lati}', '${ptotal.longti}'), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다 
        var markerPosition  = new daum.maps.LatLng('${ptotal.lati}', '${ptotal.longti}'); 

        // 마커를 생성합니다
        var marker = new daum.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

            </script>

					<div class="col-md-12 col-sm-12">
					<c:if test="${not empty broker }">
						        		<section id="contact-agent">
			<header><h2>판매자연락처</h2></header>
			<div class="row">
				<section class="agent-form">
					<div class="col-md-7 col-sm-12" style="width: 100%">
						<aside id="" class="agent-info clearfix">
							<figure><a ><img alt="" id="avatar-image" class="image" src="/img/${pic.pic_temp }"></a></figure>
							<div class="agent-contact-info">
								<dl>
								 <h2><dt>부동산 : </dt> <dd> ${broker.officeName }</dd></h2>
								 <dt>ID:</dt>
										<dd><a href="javascript:callMsgbox('${broker.brokerId }')">${broker.brokerId }</a></dd>
																			<dt>사무실연락처:</dt>
										<dd>${broker.officeTel }</dd>
									
																			<dt>소속 공인중개사:</dt>
										<dd>${broker.name }</dd>
									
									
																			<dt>개인연락처:</dt>
										<dd>${broker.phone }</dd>
										<dt>사무실주소:</dt>
										<dd>${broker.address }</dd>
										<dt>E-mail:</dt>
										<dd>${broker.email }</dd>
																	</dl>
								<hr>
							</div>
						</aside><!-- /.agent-info -->
					</div><!-- /.col-md-7 -->
				</section>
			</div>
		</section>
				</c:if>
				<c:if test="${not empty customer }">
						        		<section id="contact-agent">
			<header><h2>판매자연락처</h2></header>
			<div class="row">
				<section class="agent-form">
					<div class="col-md-7 col-sm-12" style="width: 100%">
						<aside id="" class="agent-info clearfix">
							<figure><a ><img alt="" id="avatar-image" class="image" src=""></a></figure>
							<div class="agent-contact-info">
							<dl>
								<h2> <dt>판매자  : </dt> <dd><a href="javascript:callMsgbox('${customer.custId }')"> ${customer.custId }</a></dd></h2>
																			<dt>연락처:</dt>
										<dd>${customer.phone }</dd>
										<dt>E-mail:</dt>
										<dd>${customer.email }</dd>
																	</dl>
								<hr>
							</div>
						</aside><!-- /.agent-info -->
					</div><!-- /.col-md-7 -->
				</section>
			</div>
		</section>
				</c:if>
				
				
		<hr class="thick">
					</div>
				</div>						
				</div>
			</section>
		</article>	
			</div>
		<!-- #main -->
	
	
</div>
</div></section></div>
<!-- Footer -->
	<jsp:include page="../BLfooter.jsp" ></jsp:include>
</div>

<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=201a87ed354d4d101903f99fa0251b3d-2014.06.20'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","recaptchaEmpty":"Please verify that you are not a robot.","sending":"Sending ...","cached":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var zonerRegisterUserForm = {"valid_email_mess":"Please enter your unique email","valid_login_mess":"Please enter your unique login"};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/registerForm.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/comment-reply.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/js/bootstrap.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/bootstrap-select.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/holder.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/icheck.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/smoothscroll.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/owl.carousel.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.validate.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var LangGlobal = {"name":"en_US"};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jq-validation-translate/langs.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.placeholder.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.jgrowl.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.raty.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.magnific-popup.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/infobox.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.markercluster.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerclusterer.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom-map.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":[],"icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"0","zoner_ajax_nonce":"599b7b12fa","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment."};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.mCustomScrollbar.concat.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.cookie.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var zonerSignIn = {"valid_email_mess":"Please enter valid email address","valid_pass_mess":"Please enter valid password","frg_pass_button_text":"Send Me Password","zoner_created_user":"","zoner_message_created_user":"Thank you for registering. Please check your mail."};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/signIn.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/wp-embed.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/core.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/widget.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/position.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/menu.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/autocomplete.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
</body>
</html>
<!-- Dynamic page generated in 3.634 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2016-04-10 10:28:45 -->

<!-- Compression = gzip -->
<!-- super cache -->