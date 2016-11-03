<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>마이페이지</title>
<script src="resources/js/jquery-2.2.2.min.js"></script>
<script>
$(function(){
	
	$('.fa-times').on('click',function(){
		//alert('x pushed');
		var propertyNo = $(this).attr('propertyNo');
		//alert(propertyNo);
		
		var approval = confirm("등록하신 매물을 삭제 하시겠습니까?");
		
		if(approval){
			//window.location.href="deleteProperty?propertyNo="+propertyNo;
			
			$.ajax({
				method : "post",
				url : "deleteProperty",
				data : "propertyNo="+propertyNo,
				dataType : 'text',
				success : function(response){
					if(response ==="success"){
						alert("삭제 성공");
						$('#property-'+propertyNo).remove();
					}else if(response==="fail"){
						alert("삭제 실패");
					}
						
				}
			}); 
		}
	});
	
	$('.fa-pencil-square-o').on('click',function(){
		var propertyNo = $(this).attr('propertyNo');
		
		var approval = confirm("등록하신 매물을 수정하시겠습니까?");
		
		if(approval){
			window.location.href="updatePropertyView?propertyNo="+propertyNo;
		}
	});
	
	$(document).on('click','#msgBox',function(event){
		   event.preventDefault();
		   var sendId = $(this).attr("sendId");
		   window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');
		})
});

function callMsgbox(text){
	var url = "selectOneMsgBox?sendId=${loginId}&receiveId="+text;
	
	window.open(url,'pop','resizable=yes scrollbars=yes');
}

function detailView (text) {
	var url = "detailView?propertyNo=" + text;
	window.open(url, 'pop', 'resizable=yes scrollbars=yes');
}

</script>

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

.navigation

.navbar

.navbar-nav
>
li
>
.child-navigation

.position-bottom
>
li


:last-child
>
a


:after
,
border-color

:


#f3f3f3



transparent


transparent


;
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
<script type='text/javascript'
	src='https://maps.googleapis.com/maps/api/js?v=3&#038;libraries=places&#038;ver=201a87ed354d4d101903f99fa0251b3d'></script>
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
		//(document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(wfscr);
		for (var i = 0; i < evts.length; i++) {
			removeEvent(evts[i], logHuman);
		}
	};
	for (var i = 0; i < evts.length; i++) {
		addEvent(evts[i], logHuman);
	}
})('//themes.fruitfulcode.com/zoner/?wordfence_logHuman=1&hid=B9C57AA42E3A1F37EC3613665F14777D');
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
.vc_custom_1460537760112 {
	margin-top: 20px !important;
	padding-top: 30px !important;
}

.vc_custom_1447239994670 {
	margin-bottom: 0px !important;
}

.vc_custom_1447240029319 {
	padding-bottom: 0px !important;
}

.vc_custom_1447240051606 {
	margin-bottom: 0px !important;
}
</style>
<noscript>
	<style type="text/css">
.wpb_animate_when_almost_visible {
	opacity: 1;
}
</style>
</noscript>
<script src="resources/js/jquery-2.2.2.min.js" type="text/javascript"></script>
</head>
<body
	class="page page-id-48 page-template-default group-blog masthead-fixed page-sub-page page-legal map-google wpb-js-composer js-comp-ver-4.9 vc_responsive"
	data-offset="90" data-target=".navigation" data-spy="scroll"
	id="page-top">


	<div id="page" class="hfeed site wrapper">
		<jsp:include page="../navigation.jsp"></jsp:include>
		
		<div class="col-md-12 col-sm-12">

			<article id="post-48"
				class="post-48 page type-page status-publish hentry">
				<section id="content" class="content">
					<section id="legal" class="legal">
						<section data-vc-full-width="true" data-vc-full-width-init="false"
							data-vc-stretch-content="true"
							class="vc_row wpb_row vc_row-fluid block vc_custom_1460537760112 vc_row-no-padding">
							<div class="wpb_column vc_column_container vc_col-sm-12">
								<div class="vc_column-inner ">

									<div class="wpb_wrapper">
										<section id="featured-properties-0"
											class="featured-properties block carousel-full-width">
											<div class="container">
												<div id="test">
													<div class="col-md-3 col-sm-3" style="float: right;">
														<div id="sidebar" class="sidebar">
															<aside id="search-2" class="widget widget_search"
																style="z-index: 20; position: relative;">
																<h3 class="widget-title" style="text-align: center;"></h3>
																<h3 class="widget-title" style="text-align: center;">
																	<a href="updateView" onclick="updateView">정보 수정</a>
																</h3>
																<h3 class="widget-title" style="text-align: center;">
																	<a href="cartView">장바구니</a>
																</h3>
																<h3 class="widget-title" style="text-align: center;">
																	<a href="registerview">매물올리기</a>
																</h3>
															</aside>
														</div>
													</div>
													<header class="section-title">
														<h2 style="border-bottom: 0px;">내가 본 매물</h2>
													</header>
												</div>
												<c:if test="${empty sawList}">
													<p style="text-align: center;">내가 본 매물이 존재하지 않습니다.</p>
												</c:if>
												<div id="owl-carousel-0"
													class="owl-carousel featured-properties-carousel"
													style="z-index: 5;">
													<c:if test="${not empty sawList}">
														<c:forEach items="${sawList}" var="prpt">
															<div class="property big">
																<div id="property-1715" class="property">
																	<figure class="tag status">Sale
																	</figure>
																	<figure class="type" title="Apartment">
																		<img width="26px" height="26px"
																			src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/07/apartment.png"
																			alt="" />
																	</figure>
																	<div class="property-image">
																		<a href="javascript:detailView('${prpt.propertyNo }')" rel="nofolow"><img
																			class="img-responsive" src="/img/${prpt.pic_temp }"
																			alt="" /></a>
																	</div>
																	<div class="overlay">
																		<div class="info">
																			<span class="tag price"> <c:if
																					test="${prpt.price>=10000}">
																					<fmt:formatNumber
																						value="${Math.floor(prpt.price/10000)}"
																						pattern="#" /> 억 </c:if> 
																						<c:if test="${prpt.price-Math.floor(prpt.price/10000)*10000 >0 }">
																						<fmt:formatNumber
																						value="${prpt.price-Math.floor(prpt.price/10000)*10000} "
																						pattern="#" /> 만 원
																						</c:if>
<%-- 																						<c:if --%>
<%-- 																					test="${prpt.price<10000}"> --%>
<%-- 																					<fmt:formatNumber --%>
<%-- 																						value="${prpt.price-Math.floor(prpt.price/10000)*10000} " --%>
<%-- 																						pattern="#" />만 원</c:if> --%>
																			</span><a href="javascript:detailView('${prpt.propertyNo }')" rel="nofolow"><h3>${prpt.title}</h3></a>
																			<figure>${prpt.address}
																			</figure>
																		</div>
																		<ul class="additional-info">
																			<li><header>거래형태:</header>
																				<figure>${prpt.propertyType }
																				</figure></li>
																			<li><header>평수:</header>
																				<figure>
																					${prpt.area } m
																					<sup>2</sup>
																				</figure></li>
																			<li><header>층:</header>
																				<figure>${prpt.floor }
																				</figure></li>

																		</ul>
																	</div>
																</div>
																<!-- /.property -->
															</div>
														</c:forEach>
													</c:if>
												</div>
										</section>

									</div>
								</div>
							</div>
						</section>
						<div class="vc_row-full-width"></div>
						<section class="vc_row wpb_row vc_row-fluid block">
							<div class="container">
								<div class="row">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<section class="property-list">
													<header class="section-title">
														<br> <br>
														<h2>내가 올린 매물</h2>
														<c:if test="${not empty mySellingList}">
															<a target="_blank" href="mySellingAllList"
																class="link-arrow">매물 전체 보기</a>
														</c:if>
													</header>
													<section id="properties" class="properties">
														<div class="grid">
															<div class="row">
																<c:if test="${empty mySellingList}">
																	<p style="text-align: center;">내가 올린 매물이 존재하지 않습니다.</p>
																</c:if>
																<c:if test="${not empty mySellingList}">
																	<c:forEach items="${mySellingList}" var="sel" end="3">
																		<div class="col-md-3 col-sm-6"
																			id="property-${sel.propertyNo}">
																			<div id="property-521" class="property">
																			
																				<figure class="type" title="Upadte Property" style="right:45px; width:25px">
																					<i class="fa fa-pencil-square-o" aria-hidden="true" propertyNo="${sel.propertyNo }"></i>
																				</figure>
																				<figure class="type" title="Delete Property" style="width:25px">
																					<i class="fa fa-times" aria-hidden="true"
																						propertyNo="${sel.propertyNo}"></i>
																				</figure>
																				<div class="property-image">
																					<a
																						href="javascript:detailView('${sel.propertyNo }')"
																						rel="nofolow"> <img class="img-responsive"
																						src="/img/${sel.pic_temp }" alt="" />
																					</a>
																				</div>
																				<div class="overlay">
																					<div class="info">
																						<span class="tag price"> 
																									<c:if
																					test="${sel.price>=10000}">
																					<fmt:formatNumber
																						value="${Math.floor(sel.price/10000)}"
																						pattern="#" /> 억 </c:if> 
																						<c:if test="${sel.price-Math.floor(sel.price/10000)*10000 >0 }">
																						<fmt:formatNumber
																						value="${sel.price-Math.floor(sel.price/10000)*10000} "
																						pattern="#" /> 만 원
																						</c:if>
<%-- 																									<c:if --%>
<%-- 																								test="${sel.price<10000}"> --%>
<%-- 																								<fmt:formatNumber --%>
<%-- 																									value="${sel.price-Math.floor(sel.price/10000)*10000} " --%>
<%-- 																									pattern="#" />만 원</c:if> --%>
																						</span> <a href="javascript:detailView('${sel.propertyNo }')" rel="nofolow"><h3>${sel.title}</h3></a>
																						<figure>${sel.address}
																						</figure>
																					</div>
																					<ul class="additional-info">
																						<li><header>거래형태:</header>
																							<figure>${sel.propertyType }
																							</figure></li>
																						<li><header>평수:</header>
																							<figure>
																								${sel.area } m
																								<sup>2</sup>
																							</figure></li>
																						<li><header>층:</header>
																							<figure>${sel.floor }
																							</figure></li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</c:forEach>
																	<!-- /.property -->
																</c:if>
															</div>

														</div>
														<!-- end grid inner -->
													</section>
													<!-- end properties section -->
												</section>
												<div
													class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1447239994670">
													<div class="wpb_column vc_column_container vc_col-sm-12">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<br> <br>
																<h2 class="vc_custom_heading">내 글 목록</h2>
																<a target="_blank" href="freeBoardView?currentPage=1"
																	class="link-arrow" style="float: right;">게시판으로</a>
																<div class="vc_empty_space" style="height: 1px">
																	<span class="vc_empty_space_inner"> </span>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-md-12 col-sm-12">

														<article id="post-196"
															class="post-196 page type-page status-publish hentry">
															<section id="content" class="content">
																<header class=""> </header>
																<section id="legal" class="legal">
																	<section class="vc_row wpb_row vc_row-fluid block">
																		<div class="container">
																			<div class="row">
																				<div
																					class="wpb_column vc_column_container vc_col-sm-3">
																					<div class="vc_column-inner ">
																						<div class="wpb_wrapper"></div>
																					</div>
																				</div>
																				<input type="hidden" id="signin" name="signin"
																					value="726cbf7b6d" /><input type="hidden"
																					name="_wp_http_referer" value="/zoner/sign-in/" />
																				<div
																					class="wpb_column vc_column_container vc_col-sm-6"
																					style="width: 90%;">
																					<div class="vc_column-inner ">
																						<div class="wpb_wrapper">
																							<div
																								class="wpb_single_image wpb_content_element vc_align_center">

																								<div class="table-responsive">
																									<c:if test="${empty myBoardList}">
																										<p style="text-align: center;">내가 쓴 글이
																											존재하지 않습니다.</p>
																									</c:if>
																									<c:if test="${not empty myBoardList}">
																										<table class="table table-striped">
																											<thead>
																												<tr
																													style="font-size: large; font-style: oblique;">
																													<td width="10%;">글번호</td>
																													<td width="40%;">제목</td>
																													<td width="10%;">조회수</td>
																													<td width="20%;">작성일</td>
																												</tr>
																											</thead>
																											<tbody>


																												<c:forEach items="${myBoardList}"
																													var="board" end="4">
																													<tr>
																														<td>${board.boardNo }</td>
																														<td><a
																															href="freeBoardDetail?boardNo=${board.boardNo }">${board.title }
																																<c:if test="${board.replyCount > 0}">
																																	[${board.replyCount }]
																																</c:if>
																														</a></td>
																														<td>${board.hitCount }</td>
																														<td>${board.boardRegDate }</td>
																													</tr>
																												</c:forEach>

																											</tbody>
																										</table>
																									</c:if>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																	</section>
																</section>
															</section>
														</article>
													</div>
												</div>
												<div
													class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1447239994670">
													<div class="wpb_column vc_column_container vc_col-sm-12">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<br> <br>
																<h2 class="vc_custom_heading">내 가계약 목록</h2>
																<div class="vc_empty_space" style="height: 1px">
																	<span class="vc_empty_space_inner"> </span>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-md-12 col-sm-12">

														<article id="post-196"
															class="post-196 page type-page status-publish hentry">
															<section id="content" class="content">
																<header class=""> </header>
																<section id="legal" class="legal">
																	<section class="vc_row wpb_row vc_row-fluid block">
																		<div class="container">
																			<div class="row">
																				<div
																					class="wpb_column vc_column_container vc_col-sm-3">
																					<div class="vc_column-inner ">
																						<div class="wpb_wrapper"></div>
																					</div>
																				</div>
																				<input type="hidden" id="signin" name="signin"
																					value="726cbf7b6d" /><input type="hidden"
																					name="_wp_http_referer" value="/zoner/sign-in/" />
																				<div
																					class="wpb_column vc_column_container vc_col-sm-6"
																					style="width: 100%;">
																					<div class="vc_column-inner ">
																						<div class="wpb_wrapper">
																							<div
																								class="wpb_single_image wpb_content_element vc_align_center">

																								<div class="table-responsive">
																									<c:if test="${empty preList}">
																										<p style="text-align: center;">내가 한 가계약이
																											존재하지 않습니다.</p>
																									</c:if>
																									<c:if test="${not empty preList}">
																										<table class="table table-striped">
																											<thead>
																												<tr
																													style="font-size: large; font-style: oblique;">
																													<td width="10%;">가계약 번호</td>
																													<td width="30%;">주소</td>
																													<td width="10%;">거래상대</td>
																													<td width="10%;">구매/판매</td>
																													<td width="10%;">상태</td>
																													<td width="15%;">계약예정일</td>
																												</tr>
																											</thead>
																											<tbody>

																					<c:forEach items="${preList}" var="pretran">
																						<tr>
																							<td>${pretran.contNo}</td>
																							<td><a
																								href="preTranview?contNo=${pretran.contNo }">${pretran.address}
																							</a></td>
																							<c:if test="${pretran.s_id == loginId }">
																							<td><a href="javascript:callMsgbox('${pretran.b_id }')" >${pretran.b_id }</a></td>
																							<td>판매</td>
																							</c:if> 
																							<c:if test="${pretran.b_id == loginId }">
																							<td><a href="javascript:callMsgbox('${pretran.s_id }')" >${pretran.s_id }</a></td>
																							<td>구매</td></c:if>
																							<td>${pretran.status }</td>
																							<td>${pretran.con_date.substring(0,10) }</td>
																						</tr>
																					</c:forEach>

																											</tbody>
																										</table>
																									</c:if>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																	</section>
																</section>
															</section>
														</article>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
		</div>

		</section>

		</section>
		<!-- .legal -->
		</section>

		</article>

		<!-- #post-## -->
	</div>
	</div>

	<!-- Footer -->
	<jsp:include page="../BLfooter.jsp"></jsp:include>
	

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
var _wpcf7 = {"loaderUrl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","recaptchaEmpty":"Please verify that you are not a robot.","sending":"Sending ..."};
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
	<script type='text/javascript'
		src='resources/js/smoothscroll.js'></script>
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
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/infobox.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/leaflet.markercluster.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerclusterer.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom-map.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":"[{\"title\":\"2001 Kossuth St\",\"address\":\"Indiana, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/lafayette\\\/\\\" title=\\\"Lafayette\\\">Lafayette<\\\/a>, 2001 Kossuth St, IN 47905\",\"price\":\"$600,000\",\"lat\":\"40.40988635378934\",\"lng\":\"-86.87392959259034\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/2001-kossuth-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/20626010444_dd43fe3ebc_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/vineyard.png\"},{\"title\":\"298 N Franklin St\",\"address\":\"Kentucky, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/madisonville\\\/\\\" title=\\\"Madisonville\\\">Madisonville<\\\/a>, 298 N Franklin St, KY 42431\",\"price\":\"$560,000\",\"lat\":\"37.3328235\",\"lng\":\"-87.49570270000004\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/298-n-franklin-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/20747890453_5c1b3149f2_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"419 Heritage Way\",\"address\":\"Idaho, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/cascade\\\/\\\" title=\\\"Cascade\\\">Cascade<\\\/a>, 419 Heritage Way, ID 83611\",\"price\":\"Price on request\",\"lat\":\"44.5170959\",\"lng\":\"-116.04735629999999\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/419-heritage-way\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22170691606_4e3124e075_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"1469 Clayton St\",\"address\":\"Utah, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/salt-lake-city\\\/\\\" title=\\\"Salt Lake City\\\">Salt Lake City<\\\/a>, 1469 Clayton St, UT 84104\",\"price\":\"Price on request\",\"lat\":\"40.73738458684524\",\"lng\":\"-111.92742327116395\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1469-clayton-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22010564328_180deb3832_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"455 Brewster Ave\",\"address\":\"Nebraska, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/brewster\\\/\\\" title=\\\"Brewster\\\">Brewster<\\\/a>, 455 Brewster Ave, NE 68821\",\"price\":\"Price on request\",\"lat\":\"41.939042033714784\",\"lng\":\"-99.86658597144162\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/455-brewster-ave\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22319253688_4735abf1d5_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/villa.png\"},{\"title\":\"5494 North-West 86th St\",\"address\":\"Iowa, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/johnston\\\/\\\" title=\\\"Johnston\\\">Johnston<\\\/a>, 5494 NW 86th St, IA 50131\",\"price\":\"$490,000\",\"lat\":\"41.65992274263721\",\"lng\":\"-93.73582614760744\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/5494-north-west-86th-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22429148870_460e90615b_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"1510 Doctor Martin Luther King Jr Drive\",\"address\":\"Arkansas, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/little-rock\\\/\\\" title=\\\"Little Rock\\\">Little Rock<\\\/a>, 1510 Doctor M.L.K. Jr, AR 72202\",\"price\":\"$500,000\",\"lat\":\"34.73615433519195\",\"lng\":\"-92.28962315396728\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1510-doctor-martin-luther-king-jr-drive\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22698641040_679047d2c2_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"516 E Palmetto St\",\"address\":\"South Carolina, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/florence\\\/\\\" title=\\\"Florence\\\">Florence<\\\/a>, 516 E Palmetto St, SC 29506\",\"price\":\"$150,000\",\"lat\":\"34.1938524059588\",\"lng\":\"-79.75888589682006\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/516-e-palmetto-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22869603797_f9bdf34a15_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"725 Seigle Ave\",\"address\":\"North Carolina, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/charlotte\\\/\\\" title=\\\"Charlotte\\\">Charlotte<\\\/a>, 725 Seigle Ave, NC 28204\",\"price\":\"$100,000\",\"lat\":\"35.23381744112782\",\"lng\":\"-80.8142875886719\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/725-seigle-ave\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/23351940986_0c44d991fe_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"Osiedle domk\\u00f3w szeregowych w Rudzie \\u015al\\u0105skiej\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/katowice\\\/\\\" title=\\\"Katowice\\\">Katowice<\\\/a>, Katowicka 18, 41-706\",\"price\":\"z\u0142120,000\",\"lat\":\"50.26967767848073\",\"lng\":\"18.87014579311517\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/osiedle-domk%c3%b3w-szeregowych-w-rudzie-%c5%9bl%c4%85skiej\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/11\\\/DSCN0648-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"4 bedroom detached house for sale\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 78 swan lane, cv2 4ga\",\"price\":\"\u20ac2,000\",\"lat\":\"52.4136916\",\"lng\":\"-1.514918\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/4-bedroom-detached-house-for-sale\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/86-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"Iglesia Chiquitana en Alquiler\",\"address\":\"Por Ahi, 00000\",\"price\":\"$805\",\"lat\":\"-22.605648190950884\",\"lng\":\"-58.863388920654245\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/iglesia-chiquitana-en-alquiler\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/DSC00567-Custom-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"HABITACI\\u00d3N PRINCIPAL (Botafoc)\",\"address\":\"Baleares, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/ibiza\\\/\\\" title=\\\"Ibiza\\\">Ibiza<\\\/a>, 49 Via P\\u00fanica, Ibiza, Balearic Islands, Espa\\u00f1a, 07800\",\"price\":\"\u20ac150\",\"lat\":\"38.9067339\",\"lng\":\"1.4205982999999378\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/se-alquila-habitaci%c3%b3n-principal-botafoc\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/02-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"ThemeStarz Property\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/viena\\\/\\\" title=\\\"Viena\\\">Viena<\\\/a>, Main Street 3, 123\",\"price\":\"$4,580\",\"lat\":\"48.21652479161182\",\"lng\":\"16.369269873510802\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/themestarz-property\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/property-02.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"9\\\/11 Memorial and Museum\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 180 Greenwich Street New York\",\"price\":\"$285,000\",\"lat\":\"40.706089120055346\",\"lng\":\"-74.00196838000477\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/911-memorial-and-museum\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/10\\\/911-memorial-07-440x294.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/construction-site.png\"},{\"title\":\"4068 Diamond Street\",\"address\":\"Alabama, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Diamond Street, 10002\",\"price\":\"$35,000\",\"lat\":\"40.69310447668314\",\"lng\":\"-73.98620033074951\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/4068-diamond-street\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/04\\\/thumbnail_16-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"1028 Henery Street\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Bridge St, 10002\",\"price\":\"$28,000\",\"lat\":\"40.69756216559081\",\"lng\":\"-73.99306678582764\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1028-henery-street\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/11\\\/Childrens-Room-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"3398 Lodgeville Road\",\"address\":\"New York, <a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/new-york\\\/\\\" title=\\\"New York\\\">New York<\\\/a>, 110 Bridge St, 10002\",\"price\":\"$28,000\",\"lat\":\"40.70172674410699\",\"lng\":\"-73.98469829370117\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/3398-lodgeville-road\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_11.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"17 St George\u2019s Square\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 17 St George's Square, SW1V\",\"price\":\"$160,000\",\"lat\":\"51.489215392503425\",\"lng\":\"-0.13537311364746074\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/17-st-georges-square\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/awesome-mansion1-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"34 Queen Anne\u2019s Gate\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 34 Queen Anne's Gate, SW1H\",\"price\":\"$500,000\",\"lat\":\"51.500697618909946\",\"lng\":\"-0.13364577104186992\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/34-queen-annes-gate\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_12.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"County Hall\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, Lambeth, SE1\",\"price\":\"$400,000\",\"lat\":\"51.50167938535641\",\"lng\":\"-0.11952662278758908\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/county-hall\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_11.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"Brittany Point\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, Lambeth, SE11\",\"price\":\"$450\",\"lat\":\"51.48972978331253\",\"lng\":\"-0.11159801293945293\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/brittany-point\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_91.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"30 Warner St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 30 Warner St, EC1R 5EX\",\"price\":\"$97,000\",\"lat\":\"51.5233530018723\",\"lng\":\"-0.11047148515319805\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/30-warner-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_10.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"75 High Holborn\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 75 High Holborn, WC1V 6LS\",\"price\":\"$80,000\",\"lat\":\"51.517905521410455\",\"lng\":\"-0.11636161614990215\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/75-high-holborn\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_9.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"7 Arundel St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 7 Arundel St, WC2R 3DA\",\"price\":\"$90,001\",\"lat\":\"51.511832\",\"lng\":\"-0.1142982999999731\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/7-arundel-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_8.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"10 Kingsway\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 10 Kingsway\",\"price\":\"$50,000\",\"lat\":\"51.51375271507068\",\"lng\":\"-0.11754178811645488\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/10-kingsway\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/21182077749_c8a552cf69_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/vineyard.png\"},{\"title\":\"1 Catton St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 1 Catton St, WC1R 4AB\",\"price\":\"$89,999\",\"lat\":\"51.517832082786384\",\"lng\":\"-0.11992358972167949\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1-catton-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/03\\\/Home-1-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/condominium.png\"},{\"title\":\"Pushkin House\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 5A Bloomsbury Square, WC1A 2TA\",\"price\":\"$980\",\"lat\":\"51.5182147\",\"lng\":\"-0.12314409999999043\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/pushkin-house\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_5.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/single-family.png\"},{\"title\":\"1234 High Holborn\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 1234 High Holborn, WC1A 1NU\",\"price\":\"$90,000\",\"lat\":\"51.51657693163256\",\"lng\":\"-0.12420975972747783\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/1234-high-holborn\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2015\\\/11\\\/22429148870_460e90615b_k-440x330.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"},{\"title\":\"37 Great Russell St\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 37 Great Russell St\",\"price\":\"$58,000\",\"lat\":\"51.517792025305276\",\"lng\":\"-0.1272245626602171\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/37-great-russell-st\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_3.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/cottage.png\"},{\"title\":\"159 Charing Cross Rd\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 159 Charing Cross Rd, WC2H\",\"price\":\"$76,000\",\"lat\":\"51.51598606392943\",\"lng\":\"-0.13284110833751583\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/159-charing-cross-rd\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_2.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"St Floor Wingate House\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/london\\\/\\\" title=\\\"London\\\">London<\\\/a>, 93-107 Shaftesbury Ave, W1D 5DY\",\"price\":\"$100,000\",\"lat\":\"51.51271111582853\",\"lng\":\"-0.13048076440429668\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/st-floor-wingate-house\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_1.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/apartment.png\"},{\"title\":\"987 Cantebury Drive\",\"address\":\"<a href=\\\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/city\\\/paris\\\/\\\" title=\\\"Paris\\\">Paris<\\\/a>, Golden Valley, MN 55427, 69001\",\"price\":\"$1,213,333\",\"lat\":\"48.8588589\",\"lng\":\"2.3470599\",\"link\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/property\\\/987-cantebury-drive-2\\\/\",\"featured-image\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/09\\\/thumbnail_8.jpg\",\"holder-image\":\"\",\"type\":\"http:\\\/\\\/themes.fruitfulcode.com\\\/zoner\\\/wp-content\\\/uploads\\\/2014\\\/07\\\/warehouse.png\"}]","icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"2","zoner_ajax_nonce":"75c263ed0f","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment.","gm_or_osm":"0"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
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
</html>