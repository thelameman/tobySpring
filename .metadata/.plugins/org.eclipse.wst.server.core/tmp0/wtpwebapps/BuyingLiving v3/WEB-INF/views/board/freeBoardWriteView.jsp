<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>게시판 글쓰기</title>
<script src="resources/js/jquery-2.2.2.min.js"></script>
<script>
	$(function(){
		
		$('#boardWrite').on('click', function(){
			//alert('글쓰기 눌림');
			
			var title = $('#title').val();
			var boardText = $('#boardText').val();
			
			if(title.length>66){
				alert('제목은 66자 미만으로 해주세요.')
				event.preventDefault();
			}
			
			if(boardText.length>1300){
				alert('내용은 1300자 미만으로 해주세요.')
				event.preventDefault();
			}
			
		});
		
	});
	
	$(document).on('click','#msgBox',function(event){
		   event.preventDefault();
		   var sendId = $(this).attr("sendId");
		   window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');
		});
	
	
	function myFunction(){
		 $('#demo').innerHTML= '';
		 $('#totalSize').innerHTML= '';
		 $('#boardWrite').removeAttr("disabled","disabled");
		 
	    var x = document.getElementById("pictures");
	    var txt = "";
	    var totalSize = 0; 
	   
	    
	    if(x.files.length<16){
	    
		    if ('files' in x) {
		        if (x.files.length == 0) {
		            txt = "첨부된 사진이 없습니다.";
		        } else {
		            for (var i = 0; i < x.files.length; i++) {
		                txt += "<br><strong>" + (i+1) + ". </strong>";
		                var file = x.files[i];
		                if ('name' in file) {
		                    txt += " 파일명 : " + file.name ;
		                }
		                if ('size' in file) {
		                    txt += " 크기: " + Math.ceil(file.size/1024) + " KB <br>";
		                    totalSize += file.size;
		                }
		            }
		            
		            $('#totalSize').html("총 파일 크기 : "+Math.ceil(totalSize/1024)+" KB");
		        }
		    } 
		    else {
		        if (x.value == "") {
		            txt += "첨부된 사진이 없습니다.";
		        } else {
		            txt += "브라우저에서 지원 하지 않는 파일입니다.";
		            txt  += "<br>파일 경로: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
		        }
		    }
		    document.getElementById("demo").innerHTML = txt;
	    }
	    else{
	    	$('#boardWrite').attr("disabled","disabled");
	    	alert("첨부 사진은 15장 까지 입니다.");
	    }
	    
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
	title="Zoner &raquo; Sign In Comments Feed"
	href="http://themes.fruitfulcode.com/zoner/sign-in/feed/" />
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
	href='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner-child/style.css?ver=201a87ed354d4d101903f99fa0251b3d'
	type='text/css' media='all' />
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
#f3f3f3transparenttransparent
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
	href="http://themes.fruitfulcode.com/zoner/sign-in/" />
<link rel='shortlink' href='http://themes.fruitfulcode.com/zoner/?p=196' />
<link rel="alternate" type="application/json+oembed"
	href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fsign-in%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fsign-in%2F&#038;format=xml" />
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

element.style {
	
}

.table>caption+thead>tr:first-child>td, .table>caption+thead>tr:first-child>th,
	.table>colgroup+thead>tr:first-child>td, .table>colgroup+thead>tr:first-child>th,
	.table>thead:first-child>tr:first-child>td, .table>thead:first-child>tr:first-child>th
	{
	border-top: 0;
}

.table>thead>tr>th {
	vertical-align: bottom;
	border-bottom: 2px solid #ddd;
}

.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 8px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 1px solid #ddd;
}

th {
	text-align: left;
}

td, th {
	padding: 0;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

user agent stylesheet
th {
	font-weight: bold;
}

user agent stylesheet
td, th {
	display: table-cell;
	vertical-align: inherit;
}

Inherited from table.table.table-striped
table {
	border-spacing: 0;
	border-collapse: collapse;
}

user agent stylesheet
table {
	display: table;
	border-collapse: separate;
	border-spacing: 2px;
	border-color: grey;
}

Inherited from body
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
}

Inherited from html
html {
	font-size: 10px;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
}

Pseudo ::before element
:after, :before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

Pseudo ::after element
:after, :before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
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
	class="page page-id-196 page-template-default group-blog masthead-fixed page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive"
	data-offset="90" data-target=".navigation" data-spy="scroll"
	id="page-top">
	<div id="page" class="hfeed site wrapper">
	<jsp:include page="../navigation.jsp"></jsp:include>
		<!-- end Navigation -->
		<div id="page-content" class="site-main">
			<!-- Breadcrumb -->
		

			<section class="wpb_row vc_row-fluid">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12">

							<article id="post-196"
								class="post-196 page type-page status-publish hentry">
								<section id="content" class="content">
									<header class="">
										<a href="freeBoardView?currentPage=1"><h1 style="margin: 30px;">자유 게시판</h1></a>
									</header>
									<section id="legal" class="legal">
										<section class="vc_row wpb_row vc_row-fluid block">
											<div class="container">
												<div class="row">
													<div class="wpb_column vc_column_container vc_col-sm-12">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">


																<form id="boardForm" name="boardForm" action="freeBoardWrite" method="post"
																	enctype="multipart/form-data">
																	<input type="hidden" name="userId" value="${loginId }">
																	<input type="hidden" name="category" value="freeBoard">
																	<!-- <h2 class="sub-header">게시글 작성하기</h2> -->
																	<div class="form-group">
																	<div class="table-responsive">
																		<table class="table table-striped">
																			<thead>
																				<tr>
																					<td align="center">제목</td>
																					<td><input type="text" id="title" name="title" required></td>
																				</tr>
																				<tr>
																					<td align="center">내용</td>
																					<td><textarea id="boardText" name="boardText" cols="80%;" rows="5" style="padding: 10px;" class="form-control" required placeholder="내용을 입력 하세요" ></textarea></td>
																				</tr>
																				<tr>
																					<td align="center">이미지 업로드</td>
																					<td><input type="file" id="pictures" name="file" multiple accept="jpg|gif|png"  onchange="myFunction()"><p id="totalSize"></p> <p id="demo"></p> 
																						<span>10M 이하의 사진만 허용 됩니다.</span></td>
																				</tr>
																			</thead>
																		</table>
																	</div>
																	</div>
																	<div class="form-group clearfix">
																			<a href="freeBoardView?currentPage=1"> 
																				<input id="boardWriteCancel" type="button" value="취소" class="btn pull-right btn-default" style="margin-left: 15px;">
																			</a> 
																			<input id="boardWrite" type="submit" value="글쓰기" class="btn pull-right btn-default">
																	</div>
																</form>

															</div>
														</div>
													</div>
													<input type="hidden" id="signin" name="signin" value="726cbf7b6d" />
													<input type="hidden" name="_wp_http_referer" value="/zoner/sign-in/" />
													<div class="wpb_column vc_column_container vc_col-sm-6" style="width: 90%;">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<div class="wpb_single_image wpb_content_element vc_align_center">

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
				</div>
			</section>
		</div>
		<!-- #main -->

		<!-- Footer -->
		<jsp:include page="../BLfooter.jsp"></jsp:include>

	</div>
	<!-- #page -->

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
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/smoothscroll.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
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
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":[],"icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"0","zoner_ajax_nonce":"75c263ed0f","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment.","gm_or_osm":"0"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.mCustomScrollbar.concat.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.cookie.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
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