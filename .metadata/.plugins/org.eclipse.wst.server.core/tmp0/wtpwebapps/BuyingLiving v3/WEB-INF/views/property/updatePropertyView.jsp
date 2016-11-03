<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<!--<![endif]-->
<html lang="en-US" class=" js_active  vc_desktop  vc_transform  vc_transform " style="height: auto;"><head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>New Room | Buying Living</title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://themes.fruitfulcode.com/zoner/xmlrpc.php">
	<meta name="robots" content="noindex,follow">
<link rel="alternate" type="application/rss+xml" title="Zoner » Feed" href="http://themes.fruitfulcode.com/zoner/feed/">
<link rel="alternate" type="application/rss+xml" title="Zoner » Comments Feed" href="http://themes.fruitfulcode.com/zoner/comments/feed/">
<link rel="alternate" type="application/rss+xml" title="Zoner » Register Comments Feed" href="http://themes.fruitfulcode.com/zoner/register/feed/">
		<script type="text/javascript" async="" src="http://www.google-analytics.com/ga.js"></script><script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"http:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-includes\/js\/wp-emoji-release.min.js?ver=201a87ed354d4d101903f99fa0251b3d"}};
			!function(a,b,c){function d(a){var c=b.createElement("canvas"),d=c.getContext&&c.getContext("2d");return d&&d.fillText?(d.textBaseline="top",d.font="600 32px Arial","flag"===a?(d.fillText(String.fromCharCode(55356,56806,55356,56826),0,0),c.toDataURL().length>3e3):("simple"===a?d.fillText(String.fromCharCode(55357,56835),0,0):d.fillText(String.fromCharCode(55356,57135),0,0),0!==d.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script><script src="http://themes.fruitfulcode.com/zoner/wp-includes/js/wp-emoji-release.min.js?ver=201a87ed354d4d101903f99fa0251b3d" type="text/javascript"></script>
				<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=2266aed1d1ad1c546afc98030e20eba0&amp;libraries=services"></script><script charset="UTF-8" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/3.4.6/1459909306865/open.js"></script><script charset="UTF-8" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/libs/1441176450396/services.js"></script>
				<script type="text/javascript" src="resources/js/jquery-2.2.2.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
					

					var ptType = "${pt.propertyType}";
					if(ptType=='월세'){
						$('#newroomprice').attr('placeholder','보증금');
						$('#propertyType').attr('value','월세');
						$('<input type="text" class="form-control" id="monthfee" name="monthfee" placeholder="월세" required value="${pt.monthfee }">').appendTo('#newroomdiv2');
						$('#newroomdiv2').after('<span style="font-size: 20px" id="div2remove">만원</span>');
					}
					
					if("${pt.roomoption}" != null){
						
						var ptRoomOption = "${pt.roomoption}";
						//alert(ptRoomOption);
						var splitCode = ptRoomOption.split(",");
						for(var i in splitCode){
							$('input[name=roomoption][value='+splitCode[i]+']').attr('checked',true);
						}
					
					}
					
					$(document).on('click','#msgBox',function(event){
						   event.preventDefault();
						   var sendId = $(this).attr("sendId");
						   window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');
						});
					
					
					$('#prp_tp1').on('click', function(){
					$('#newroomdiv2').empty();
					$('#div2remove').remove();

						$('#newroomprice').attr('placeholder','전세');
						$('#propertyType').attr('value','전세');
					});
					
					$('#prp_tp2').on('click', function(){
						$('#newroomdiv2').empty();
						$('#div2remove').remove();
						$('#newroomprice').attr('placeholder','보증금');
						$('#propertyType').attr('value','월세');
						$('<input type="text" class="form-control" id="monthfee" name="monthfee" placeholder="월세" required value="${pt.monthfee }">').appendTo('#newroomdiv2');
						$('#newroomdiv2').after('<span style="font-size: 20px" id="div2remove">만원</span>');
					})
					
					$('#prp_tp3').on('click', function(){
						$('#newroomdiv2').empty();
						$('#div2remove').remove();

						$('#newroomprice').attr('placeholder','매매가');
						$('#propertyType').attr('value','매매');
						
					});
					
					
					$('#backToMyPage').on('click', function(){
						//alert('backToMyPage');
						event.preventDefault();
						window.location.href="myPage";
					});
					
				});
					
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
<link rel="stylesheet" id="zoner-custom-config-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-options/patterns/css/admin-config.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="dsidx-css" href="http://cdn4.diverse-cdn.com/api/combo-css/config=dsidxpress.css/0e43ba" type="text/css" media="all">
<link rel="stylesheet" id="contact-form-7-css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-gmap-custom-scroll-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/css/jquery.mCustomScrollbar.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-gmap-style-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsCss/gmap.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-fontAwesom-css" href="resources/font/font-awesome-4.5.0/css/font-awesome.min.css" type="text/css" media="all">
<link rel="stylesheet" id="zoner-fontElegantIcons-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/fonts/ElegantIcons.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-bootstrap-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-bootstrap-social-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/css/bootstrap-social-buttons.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-bootstrap-select-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/bootstrap-select.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-magnific-css-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/magnific-popup.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-slider-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.slider.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-owl.carousel-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/owl.carousel.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-jgrowl-css" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/css/jquery.jgrowl.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="zoner-style-css" href="resources/css/zoner-child/style-zoner-child.css" type="text/css" media="all">
<link rel="stylesheet" id="newroom-search" href="resources/css/newroom_search.css" type="text/css" media="all">
<style id="zoner-style-inline-css" type="text/css">
a { color:#1396e2; }a:hover { color:#2a6496; }a:active { color:#2a6496;}@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2),only screen and (min-resolution: 2dppx) {.navbar .navbar-header .navbar-brand.nav.logo { display: none; }.navbar .navbar-header .navbar-brand.nav.logo.retina { display: inline-block; width:50%;}}.page-sub-page #page-content::after {background: -moz-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f1f1f1), color-stop(80%, #ffffff));background: -webkit-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -o-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -ms-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: linear-gradient(to bottom, #f1f1f1 0%, #ffffff 80%);filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#f1f1f1", endColorstr="#ffffff",GradientType=0 );} .navigation { background-color:#FFFFFF;}.leaflet-div-icon { background-image:url(http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/images/icons/marker.png);} .horizontal-search .search-box-wrapper{background-color:#1396e2;}.advanced-search,.advanced-search header h3,.horizontal-search .search-box-wrapper .search-box .advanced-search-toggle {color:#ffffff;}.navigation .navbar .navbar-nav > li a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li:hover > a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li.current_page_item > a, .navigation .navbar .navbar-nav > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-parent > a, .navigation .navbar .navbar-nav > li.current_page_parent > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li.active a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation li a:hover {background-color:#1396e2;color:#ffffff;}.navigation .navbar .navbar-nav > li .child-navigation > li:hover > a, .navigation .navbar .navbar-nav > li .child-navigation > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li .child-navigation > li .child-navigation > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > .child-navigation li.current-menu-item > a {background-color:#1396e2;color:#ffffff; }.navigation .navbar .navbar-nav > li .child-navigation {background-color:#f3f3f3; }.navigation .navbar .navbar-nav > li > .child-navigation > li:first-child a:after {border-color: transparent transparent #f3f3f3 transparent;}.navigation .navbar .navbar-nav > li > .child-navigation.position-bottom > li:last-child > a:after, border-color: #f3f3f3 transparent transparent;} .navigation .navbar .navbar-nav > li .child-navigation li a {border-color:rgba(#000000,0.1); }.navigation .navbar .navbar-nav > li a:after {background-color:#1396e2; }.blog-posts .blog-post .blog-post-content p, .container p {filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);opacity: 0.7;}#page-footer .inner #footer-copyright {color:#ffffff;}#page-footer .inner #footer-copyright {background-color:#073855;}#page-footer .inner .property-thumbnail {background-color:#1396e2;}.page-id-2597 .breadcrumb, .page-id-2597 h1 {display:none !important;}#section-50 h2 {text-align:center !important;}.header-variations section.zoner-variations {padding:0 0 60px 0;}.header-variations .center {text-align: center;}.header-variations .no-border {border: medium none !important;}.header-variations hr {border-color: rgba(0, 0, 0, 0.1);}.header-variations h2 {border-bottom: 1px solid rgba(0, 0, 0, 0.1);font-size: 24px;margin-bottom: 35px;margin-top: 10px;}.header-variations h3 { color: #012548; font-size: 20px; font-weight: normal; margin-bottom: 0; }.header-variations h4 { margin-top: 5px; margin-bottom: 0; font-size: 14px;}.header-variations .item {bottom: 0;display: block;margin: 15px 0;position: relative;text-align: center;transition: all 0.2s ease 0s;}.header-variations a {color: #1396e2;outline: medium none !important;transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548; }.header-variations .arrow { -webkit-transition: .2s; display: block; margin-top: 10px; position: relative; left: 0; transition: .2s; }.header-variations .description { display: none; -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.2); font-size: 12px; background-color: #ececec; box-shadow: 0 1px 1px rgba(0,0,0,.2); position: absolute; color: #2a2a2a; padding: 5px 10px; top: -45px; }.header-variations.description:after { bottom: -7px; content: ""; height: 0; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent #ececec transparent transparent; position: absolute; right: 0; width: 0; }.header-variations .logo { padding: 30px 0 15px; text-align: center; }.header-variations .item { -webkit-transition: .2s; transition: .2s; display: block; margin: 15px 0; text-align: center; position: relative; bottom: 0; }.header-variations .item:hover { bottom: 5px; }.header-variations .item img { max-width: 100%; }.header-variations .item img {max-width: 100%;}.header-variations a h1, .pheader-variations a h2, .header-variations a h3, .header-variations a h4 { color: #073855; transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548;}.header-variations a:hover { text-decoration: none;}@media (max-width: 767px) {.header-variations .item { margin-bottom: 60px; }}
</style>
<link rel="stylesheet" id="js_composer_front-css" href="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<link rel="stylesheet" id="redux-google-fonts-zoner_config-css" href="http://fonts.googleapis.com/css?family=Roboto%3A400%2C300&amp;ver=201a87ed354d4d101903f99fa0251b3d" type="text/css" media="all">
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery-migrate.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://cdn3.diverse-cdn.com/api/combo-js/config=dsidxpress.js/05cd0d?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="https://checkout.stripe.com/checkout.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<link rel="https://api.w.org/" href="http://themes.fruitfulcode.com/zoner/wp-json/">
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://themes.fruitfulcode.com/zoner/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://themes.fruitfulcode.com/zoner/wp-includes/wlwmanifest.xml"> 

<link rel="canonical" href="http://themes.fruitfulcode.com/zoner/register/">
<link rel="shortlink" href="http://themes.fruitfulcode.com/zoner/?p=468">
<link rel="alternate" type="application/json+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fregister%2F">
<link rel="alternate" type="text/xml+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fregister%2F&amp;format=xml">
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
		<meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress.">
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
		(document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(wfscr);
		for (var i = 0; i < evts.length; i++) {
			removeEvent(evts[i], logHuman);
		}
	};
	for (var i = 0; i < evts.length; i++) {
		addEvent(evts[i], logHuman);
	}
})('//themes.fruitfulcode.com/zoner/?wordfence_logHuman=1&hid=0B57D82044B5847D0B86F80D98535B8E');
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
				</script>				<script type="text/javascript">
				if (typeof localdsidx == "undefined" || !localdsidx) { var localdsidx = {}; };
				localdsidx.pluginUrl = "/zoner/wp-content/plugins/dsidxpress/";
				localdsidx.homeUrl = "http://themes.fruitfulcode.com/zoner";
				</script><link rel="shortcut icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-16x16.png">
<link rel="apple-touch-icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-57x57.png"> 
<link rel="apple-touch-icon" sizes="114x114" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-114x114.png "> 
<link rel="apple-touch-icon" sizes="72x72" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-72x72.png"> 
<link rel="apple-touch-icon" sizes="144x144" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-144x144.png"> 
<style type="text/css" title="dynamic-css" class="options-output">body{background-color:#ffffff;background-repeat:inherit;background-size:inherit;background-attachment:inherit;}body{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h1{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:28px;}h2{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:24px;}h3{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:18px;}h4{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h5{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h6{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}p{font-family:Roboto;text-align:inherit;line-height:20px;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}a{color:#1396e2;}a:hover{color:#2a6496;}a:active{color:#2a6496;}</style><noscript>&lt;style type="text/css"&gt; .wpb_animate_when_almost_visible { opacity: 1; }&lt;/style&gt;</noscript><script type="text/javascript" async="" src="//themes.fruitfulcode.com/zoner/?wordfence_logHuman=1&amp;hid=0B57D82044B5847D0B86F80D98535B8E&amp;r=0.4623603882542382"></script></head>

<body class="page page-id-468 page-template-default group-blog masthead-fixed page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive" data-offset="90" data-target=".navigation" data-spy="scroll" id="page-top">
	<div id="page" class="hfeed site wrapper">
		
		


 		<jsp:include page="../navigation.jsp"></jsp:include>
		<!-- /.navigation -->

		
				<div id="page-content" class="site-main">
		<!-- Breadcrumb --><div class="container"><ol class="breadcrumb"><li><a href="http://themes.fruitfulcode.com/zoner" title="Zoner" rel="home" class="trail-begin">Home</a></li>  <li class="active"><span class="trail-end">Register</span></li></ol></div>				
		
		<section class="wpb_row vc_row-fluid">
		
		
		
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">

				<article id="post-468" class="post-468 page type-page status-publish hentry">
					<section id="content" class="content">
						<header class="">
							<h1>매물 수정하기</h1>
						</header>
						<section id="legal" class="legal">
						</section>
						</section>
						
							<section class="vc_row wpb_row vc_row-fluid block">
							
													<!-- .legal -->
					</section>
				</article>
							
								
						</div>
					</div>
				</div>
			</section>				
												
												
										<c:if test="${not empty pt }">
												<div class="big-detail" align="center">
												<form role="form" action="updateProperty" id="form-create-account" class=" form-create-account" name="form-create-account" method="post" style="width: 1100px" enctype="multipart/form-data" novalidate="novalidate">
													<input type="hidden" id="propertyNo" name="propertyNo" value="${pt.propertyNo }">
													<input type="hidden" id="lati" name="lati" value="${pt.lati }">
													<input type="hidden" id="longti" name="longti" value="${pt.longti }">
													<input type="hidden" id="approval" name="approval" value="${pt.approval }">													
												
													<h2><i class="fa fa-map-marker" aria-hidden="true"></i> 위치 정보</h2>
														
														
														<table class="newRoom">
														<tbody><tr>
															<th style="width:400px"><label>도로명, 건물명 지번에 대해 <br>
															통합검색이 가능합니다.</label> </th>
															<th rowspan="6" style="width:700px ; height:500px">
															<div class="map_wrap">
															<div id="smallmap" style="width: 700px; height: 400px; position: relative; overflow: hidden; background: url(&quot;http://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);">
															 <ul id="placesList"></ul>
															 <div id="pagination"></div>
															
															<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L3/1959/916.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -173px; top: 311px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L3/1959/917.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 83px; top: 311px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L3/1959/918.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 339px; top: 311px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L3/1959/919.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 595px; top: 311px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L3/1960/916.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -173px; top: 55px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L3/1960/917.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 83px; top: 55px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L3/1960/918.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 339px; top: 55px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L3/1960/919.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 595px; top: 55px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L3/1961/916.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -173px; top: -201px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L3/1961/917.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 83px; top: -201px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L3/1961/918.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 339px; top: -201px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L3/1961/919.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 595px; top: -201px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; position: absolute; width: 3500px; height: 2000px; left: -1400px; top: -800px;" viewBox="0 0 3500 2000"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; height: 17px; cursor: pointer; width: 38px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/m_bi.png" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 52px;"><div style="color: rgb(0, 0, 0);">50m</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/scalebar.png" style="position: absolute; width: 164px; height: 40px; max-width: none; top: 0px; left: -82px;"></div></div><div style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L2/3919/1835.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363.75px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L2/3919/1836.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 427.75px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L2/3919/1837.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 491.75px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L2/3919/1838.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 555.75px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L2/3920/1835.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363.75px; top: 120px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L2/3920/1836.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 427.75px; top: 120px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L2/3920/1837.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 491.75px; top: 120px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L2/3920/1838.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 555.75px; top: 120px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L2/3921/1835.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363.75px; top: 56px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L2/3921/1836.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 427.75px; top: 56px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L2/3921/1837.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 491.75px; top: 56px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L2/3921/1838.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 555.75px; top: 56px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 64px; height: 64px;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L4/979/457.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -84px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L4/979/458.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 172px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L4/979/459.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 428px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L4/979/460.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 684px; top: 184px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L4/980/457.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -84px; top: -72px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L4/980/458.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 172px; top: -72px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L4/980/459.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 428px; top: -72px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L4/980/460.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 684px; top: -72px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/59soon/L4/981/457.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -84px; top: -328px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/59soon/L4/981/458.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 172px; top: -328px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/59soon/L4/981/459.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 428px; top: -328px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/59soon/L4/981/460.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 684px; top: -328px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; position: absolute; left: -1400px; top: -800px; width: 3500px; height: 2000px;" viewBox="0 0 3500 2000"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; height: 17px; cursor: pointer; width: 38px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/m_bi.png" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 52px;"><div style="color: rgb(0, 0, 0);">100m</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/scalebar.png" style="position: absolute; width: 164px; height: 40px; max-width: none; top: 0px; left: -82px;"></div></div><div style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
															</div>
															</th>
															</tr>														
														<tr>
														<th style="width:400px">		
														<div class="input-group">
														주소입력:					
														<input type="text" id="search_addr" name="search_addr" placeholder="예) 개포동 12-2 , 강남구 삼성동" ><span class="input-group-btn"><button class="btn btn-default search" id="search_bt" type="button" style="top:10px"><i class="fa fa-search"></i></button></span></div>
															</th>
															
															</tr><tr><th><input type="text" id="address" name="address" readonly="readonly" value="${pt.address }"></th>
															<th></th></tr>
															<tr><th>건물명:
															<input type="text" id="danji" name="danji" readonly="readonly" value="${pt.danji }">
															</th>
															</tr><tr>
															<th>상세주소 (동, 호수):<input type="text" id="detailaddr" name="detailaddr" value="${pt.detailaddr }"></th><th></th>
															</tr>
															<tr>
															<th><label>검색해도 주소가 없는 경우에는 <br>
															이메일로 문의해주세요.</label> </th><th></th>
															</tr>
													
														</tbody></table>
														<br> <br>
														
														<div id="floatingbasket" style="width:1100px;height:300px">
														
														<div id="floatingdiv" style="float: left; overflow: auto; margin: 25px; width:520px; height:370px">
														<h2><i class="fa fa-home" aria-hidden="true"></i> 기본 정보</h2>
														<table class="newroom-info">
														
														<tbody><tr><th colspan="2">														
														<div class="form-group">
															<label for="ca-login-name">주거 형태:</label>
															<select name="builtType"> 
																<option value="아파트" <c:if test="${pt.builtType =='아파트'}">selected</c:if> >아파트</option>
																<option value="연립" <c:if test="${pt.builtType =='연립'}">selected</c:if> >연립-다세대(빌라)</option>
																<option value="주택" <c:if test="${pt.builtType =='주택'}">selected</c:if> >주택</option>
															</select>
														<!-- 	<input
																type="text" class="form-control" id="ca-login-name"
																name="builtType" placeholder="원룸, 아파트, 빌라" value="" required > -->
														</div>
														</th></tr>
														<tr><th colspan="2">
														<!-- /.form-group -->
														<div class="form-group">
															<label for="ca-first-name">거래 종류:</label>
															<div class="widget_tag_cloud">
															<div class="tagcloud">
														<a id="prp_tp1" class="tag-link-187" style="font-size: 14pt;">전세</a>
														<a id="prp_tp2" class="tag-link-187" style="font-size: 14pt;">월세</a>
														<a id="prp_tp3" class="tag-link-187" style="font-size: 14pt;">매매</a>	</div></div>
														<input type="hidden" id="propertyType" name="propertyType" value="${pt.propertyType }">
														</div>
														</th></tr>
														<tr>
														<th> <div style="width: 60% ; display: inline-block;"> 
														<input type="number" class="form-control" id="newroomprice" name="price" required="" aria-required="true" value="${pt.price }"> 
															</div><span style="font-size: 20px">만원</span></th>
															<th> <div style="width: 60%; display: inline-block;" id="newroomdiv2"> 
															</div> </th>
															<th></th>
															
														</tr>
														<tr><th style="width: 33%">
														<!-- /.form-group -->
														<div class="form-group">
															<label for="ca-last-name">건물 층수:</label><input type="number" class="form-control" id="floor" name="floor" value="${pt.floor }" required="" style="width: 100px;" aria-required="true" >
														</div>
														</th>
														<th style="width: 33%"><div class="form-group">
															<label for="ca-login-name">전용면적:</label><input type="number" class="form-control" id="area" name="area" required="" style="width: 100px;" aria-required="true" value="${pt.area }">
														</div>
														</th><th style="width: 33%"><div class="form-group">
															<label for="ca-login-name">대지면적:</label><input type="number" class="form-control" id="land_area" name="land_area" required="" style="width: 100px;" aria-required="true" value="${pt.land_area }">
														</div></th>
														</tr>														
														</tbody></table>
														</div>
														 <br>
														
														<div id="floatingdiv2" style="float: left; overflow: auto; margin: 10px;">
														<h2><i class="fa fa-search" aria-hidden="true"></i> 추가 정보</h2>
														<table class="newroom-info">
														<tbody><tr><th>														
														<div class="form-group" style="width:100%">
															<label for="ca-login-name">관리비:</label><input type="number" id="maintenance" name="maintenance" value="${pt.maintenance }" required="" aria-required="true" > 
														</div>
														</th><th style="width:100px">  <span style="font-size: 20px">만원</span> </th>
														<th> <div class="form-group" style="width:70%">
															<label for="ca-login-name">건축년도:</label>
															<input type="number" id="builtyear" name="builtyear" required="" aria-required="true" value="${pt.builtyear }"> 
														</div></th></tr>
														<tr><th colspan="2">
														<!-- /.form-group -->
														<div class="form-group">
															<label for="ca-first-name">입주 가능일:</label>
															<input type="date" class="ipju" id="movedate" name="movedate" style="line-height: 18px" value="${pt.movedate.substring(0,10) }">
															</div></th>
														</tr>
														<tr>
														<th colspan="3"> <div class="form-group">
															<label for="ca-login-name">옵션:</label>
															냉장고<input type="checkbox" name="roomoption" value="냉장고">
															에어컨<input type="checkbox" name="roomoption" value="에어컨">
															세탁기<input type="checkbox" name="roomoption" value="세탁기">
															침대<input type="checkbox" name="roomoption" value="침대">
															TV<input type="checkbox" name="roomoption" value="TV">
															가스레인지<input type="checkbox" name="roomoption" value="가스레인지"><br>
															전자레인지<input type="checkbox" name="roomoption" value="전자레인지">
															인덕션<input type="checkbox" name="roomoption" value="인덕션">
															
														</div></th>
														</tr>
														</tbody></table> 
														</div>
														</div>
														
														<br><br><br><br>	
														<br>	
														<br>	
																								
														
														<div id="not " class="nothing" style="width:1100px" align="center">
														<h2><i class="fa fa-newspaper-o" aria-hidden="true"></i> 상세 설명</h2>
														<table style="width: 1100px">
														<tbody><tr><th style="text-align:center; width:300px">														
															<label>매물 제목</label>
														</th>
														<th style="margin: 5px; padding: 5px">  <input type="text" id="title" name="title" required="" aria-required="true" value="${pt.title }"> 
														</th></tr>
														<tr><th style="text-align:center;">
															<label>상세 내용</label>
															</th>
															<th style="margin: 5px; padding: 5px">
															<textarea rows="20" cols="110" id="content" name="content">${pt.content }</textarea>
															</th>
															</tr><tr>
															<th style="text-align:center;">사진 업로드</th>
															<th><input type="file" multiple="multiple" id="picture" accept="image/*" value=""></th>
														</tr>
														</tbody></table> <br>
														
													
														
														<button style="font-size: 30px" type="submit" class="btn btn-default" id="account-submit">매물 수정</button> &nbsp;	
														<button id="backToMyPage" style="font-size: 30px"  class="btn btn-default">취소</button> 						
														</div>
													</form>
													</div>
										</c:if>			
													
													
													
												</div>
								
							
				<!-- #post-## -->
			
	</div>
	
	<!-- Footer -->
	<jsp:include page="../BLfooter.jsp"></jsp:include>

	
<!-- #page -->

<script type="text/javascript">
		var container = document.getElementById('smallmap');
		var options = {
			center: new daum.maps.LatLng(37.476264,127.056742),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
</script>

<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=201a87ed354d4d101903f99fa0251b3d-2014.06.20"></script>
<script type="text/javascript">
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","recaptchaEmpty":"Please verify that you are not a robot.","sending":"Sending ...","cached":"1"};
/* ]]> */
</script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript">
/* <![CDATA[ */
var zonerRegisterUserForm = {"valid_email_mess":"Please enter your unique email","valid_login_mess":"Please enter your unique login"};
/* ]]> */
</script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/registerForm.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/comment-reply.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/bootstrap/js/bootstrap.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/bootstrap-select.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/holder.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/icheck.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/smoothscroll.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/owl.carousel.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.validate.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="resources/js/daummap/newroom.js"></script>
<script type="text/javascript">
/* <![CDATA[ */
var LangGlobal = {"name":"en_US"};
/* ]]> */
</script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jq-validation-translate/langs.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.placeholder.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.jgrowl.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript">
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":[],"icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"0","zoner_ajax_nonce":"cd77756610","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment."};
/* ]]> */
</script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.mCustomScrollbar.concat.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.cookie.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript">
/* <![CDATA[ */
var zonerSignIn = {"valid_email_mess":"Please enter valid email address","valid_pass_mess":"Please enter valid password","frg_pass_button_text":"Send Me Password","zoner_created_user":"","zoner_message_created_user":"Thank you for registering. Please check your mail."};
/* ]]> */
</script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/libs/theme-shortcodes/zoner-shortcodes/patternsJs/signIn.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/wp-embed.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/core.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/widget.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/position.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/menu.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/ui/autocomplete.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>
<script type="text/javascript" src="http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=201a87ed354d4d101903f99fa0251b3d"></script>


<!-- Dynamic page generated in 2.263 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2016-04-10 15:57:50 -->

<!-- Compression = gzip -->
<!-- super cache --><div id="dsidx_cboxOverlay" style="display: none;"></div><div id="dsidx_colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="dsidx_cboxWrapper"><div><div id="dsidx_cboxTopLeft" style="float: left;"></div><div id="dsidx_cboxTopCenter" style="float: left;"></div><div id="dsidx_cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="dsidx_cboxMiddleLeft" style="float: left;"></div><div id="dsidx_cboxContent" style="float: left;"><div id="dsidx_cboxTitle" style="float: left;"></div><div id="dsidx_cboxCurrent" style="float: left;"></div><button type="button" id="dsidx_cboxPrevious"></button><button type="button" id="dsidx_cboxNext"></button><button id="dsidx_cboxSlideshow"></button><div id="dsidx_cboxLoadingOverlay" style="float: left;"></div><div id="dsidx_cboxLoadingGraphic" style="float: left;"></div></div><div id="dsidx_cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="dsidx_cboxBottomLeft" style="float: left;"></div><div id="dsidx_cboxBottomCenter" style="float: left;"></div><div id="dsidx_cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>