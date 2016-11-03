<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<!--<![endif]-->
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>New Room | Buying Living</title>
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="http://themes.fruitfulcode.com/zoner/xmlrpc.php">
	<meta name='robots' content='noindex,follow' />
<link rel="alternate" type="application/rss+xml" title="Zoner &raquo; Feed" href="http://themes.fruitfulcode.com/zoner/feed/" />
<link rel="alternate" type="application/rss+xml" title="Zoner &raquo; Comments Feed" href="http://themes.fruitfulcode.com/zoner/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="Zoner &raquo; Register Comments Feed" href="http://themes.fruitfulcode.com/zoner/register/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"http:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-includes\/js\/wp-emoji-release.min.js?ver=201a87ed354d4d101903f99fa0251b3d"}};
			!function(a,b,c){function d(a){var c=b.createElement("canvas"),d=c.getContext&&c.getContext("2d");return d&&d.fillText?(d.textBaseline="top",d.font="600 32px Arial","flag"===a?(d.fillText(String.fromCharCode(55356,56806,55356,56826),0,0),c.toDataURL().length>3e3):("simple"===a?d.fillText(String.fromCharCode(55357,56835),0,0):d.fillText(String.fromCharCode(55356,57135),0,0),0!==d.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
				<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=2266aed1d1ad1c546afc98030e20eba0&libraries=services"></script>
				<script type="text/javascript" src="resources/js/jquery-2.2.2.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
					
			    	$('#property_submit').attr("disabled","disabled");
					
					$('#property_submit').on('click', function() {
						if(!($("#Chk_personal_agree").is(":checked") && $("#Chk_personal_agree").is(":checked"))){
							alert('약관에 동의해주세요.'); 
							return false;
						} 
						
						if($(':checked[name=roomoption]').length <1){
							alert('방 옵션을 선택해 주세요');
							return false;
						}else{
							
						$('#propertyform').submit();	
						}
						
						
					});
					
					$(document).on('click','#msgBox',function(event){
						   event.preventDefault();
						   var sendId = $(this).attr("sendId");
						   window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');
						});
					
					
					$('#prp_tp1').on('click', function(){
						$('#prp_tp1').css('background-color','#1396e2');
						$('#prp_tp2').css('background-color','#f3f3f3');
						$('#prp_tp3').css('background-color','#f3f3f3');
					$('#newroomdiv2').empty();
					$('#div2remove').remove();

						$('#newroomprice').attr('placeholder','전세');
						$('#propertyType').attr('value','전세');
					});
					
					$('#prp_tp2').on('click', function(){
						$('#prp_tp2').css('background-color','#1396e2');
						$('#prp_tp1').css('background-color','#f3f3f3');
						$('#prp_tp3').css('background-color','#f3f3f3');
						
						$('#newroomdiv2').empty();
						$('#div2remove').remove();
						$('#newroomprice').attr('placeholder','보증금');
						$('#propertyType').attr('value','월세');
						$('<input type="text" class="form-control" id="monthfee" name="monthfee" placeholder="월세" required >').appendTo('#newroomdiv2');
						$('#newroomdiv2').after('<span style="font-size: 20px" id="div2remove">만원</span>');
					})
					
					$('#prp_tp3').on('click', function(){
						$('#prp_tp3').css('background-color','#1396e2');
						$('#prp_tp2').css('background-color','#f3f3f3');
						$('#prp_tp1').css('background-color','#f3f3f3');
						$('#newroomdiv2').empty();
						$('#div2remove').remove();

						$('#newroomprice').attr('placeholder','매매가');
						$('#propertyType').attr('value','매매');
						
					});
					
				});
				
				function pictureslimit(){
					 $('#demo').innerHTML= '';
					 $('#property_submit').removeAttr("disabled","disabled");
					 
				    var x = document.getElementById("picture");
				    var txt = "";
				    var totalSize = 0; 
				    
				    if(x.files.length > 2 && x.files.length<16){
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
				    	$('#property_submit').attr("disabled","disabled");
				    	alert("첨부 사진은 3~15장 까지 입니다.");
				    }
				    
				}
				
				function enterpress(){
					if(event.keyCode==13){
						$('#search_bt').click();
					}
				}
				
				function p2m2(text){
				var v = document.getElementById('P'+text).value; 
				v = v.replace(/,|\s/g,''); 
				v = parseFloat(v) * 3.3058; 
				document.getElementById(text).value = parseFloat(v.toFixed(4));
					
				}
				function m22p(text){
					var v = document.getElementById(text).value; 
					v = v.replace(/,|\s/g,''); 
					v = parseFloat(v) / 3.3058; 
					document.getElementById('P'+text).value = parseFloat(v.toFixed(4));
					
				}
					
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
<link rel='stylesheet' id='zoner-style-css'  href='resources/css/zoner-child/style-zoner-child.css' type='text/css' media='all' />
<link rel='stylesheet' id='newroom-search' href='resources/css/newroom_search.css' type='text/css' media='all' />
<style id='zoner-style-inline-css' type='text/css'>
a { color:#1396e2; }a:hover { color:#2a6496; }a:active { color:#2a6496;}@media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2),only screen and (min-resolution: 2dppx) {.navbar .navbar-header .navbar-brand.nav.logo { display: none; }.navbar .navbar-header .navbar-brand.nav.logo.retina { display: inline-block; width:50%;}}.page-sub-page #page-content::after {background: -moz-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f1f1f1), color-stop(80%, #ffffff));background: -webkit-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -o-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: -ms-linear-gradient(top, #f1f1f1 0%, #ffffff 80%);background: linear-gradient(to bottom, #f1f1f1 0%, #ffffff 80%);filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#f1f1f1", endColorstr="#ffffff",GradientType=0 );} .navigation { background-color:#FFFFFF;}.leaflet-div-icon { background-image:url(http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/images/icons/marker.png);} .horizontal-search .search-box-wrapper{background-color:#1396e2;}.advanced-search,.advanced-search header h3,.horizontal-search .search-box-wrapper .search-box .advanced-search-toggle {color:#ffffff;}.navigation .navbar .navbar-nav > li a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li:hover > a { color:#2a2a2a; }.navigation .navbar .navbar-nav > li.current_page_item > a, .navigation .navbar .navbar-nav > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-parent > a, .navigation .navbar .navbar-nav > li.current_page_parent > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li.active a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation a {color:#2a2a2a;}.navigation .navbar .navbar-nav > li .child-navigation li a:hover {background-color:#1396e2;color:#ffffff;}.navigation .navbar .navbar-nav > li .child-navigation > li:hover > a, .navigation .navbar .navbar-nav > li .child-navigation > li.current-menu-ancestor > a, .navigation .navbar .navbar-nav > li .child-navigation > li .child-navigation > li.current-menu-item > a, .navigation .navbar .navbar-nav > li.current-menu-ancestor > .child-navigation li.current-menu-item > a {background-color:#1396e2;color:#ffffff; }.navigation .navbar .navbar-nav > li .child-navigation {background-color:#f3f3f3; }.navigation .navbar .navbar-nav > li > .child-navigation > li:first-child a:after {border-color: transparent transparent #f3f3f3 transparent;}.navigation .navbar .navbar-nav > li > .child-navigation.position-bottom > li:last-child > a:after, border-color: #f3f3f3 transparent transparent;} .navigation .navbar .navbar-nav > li .child-navigation li a {border-color:rgba(#000000,0.1); }.navigation .navbar .navbar-nav > li a:after {background-color:#1396e2; }.blog-posts .blog-post .blog-post-content p, .container p {filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);opacity: 0.7;}#page-footer .inner #footer-copyright {color:#ffffff;}#page-footer .inner #footer-copyright {background-color:#073855;}#page-footer .inner .property-thumbnail {background-color:#1396e2;}.page-id-2597 .breadcrumb, .page-id-2597 h1 {display:none !important;}#section-50 h2 {text-align:center !important;}.header-variations section.zoner-variations {padding:0 0 60px 0;}.header-variations .center {text-align: center;}.header-variations .no-border {border: medium none !important;}.header-variations hr {border-color: rgba(0, 0, 0, 0.1);}.header-variations h2 {border-bottom: 1px solid rgba(0, 0, 0, 0.1);font-size: 24px;margin-bottom: 35px;margin-top: 10px;}.header-variations h3 { color: #012548; font-size: 20px; font-weight: normal; margin-bottom: 0; }.header-variations h4 { margin-top: 5px; margin-bottom: 0; font-size: 14px;}.header-variations .item {bottom: 0;display: block;margin: 15px 0;position: relative;text-align: center;transition: all 0.2s ease 0s;}.header-variations a {color: #1396e2;outline: medium none !important;transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548; }.header-variations .arrow { -webkit-transition: .2s; display: block; margin-top: 10px; position: relative; left: 0; transition: .2s; }.header-variations .description { display: none; -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.2); font-size: 12px; background-color: #ececec; box-shadow: 0 1px 1px rgba(0,0,0,.2); position: absolute; color: #2a2a2a; padding: 5px 10px; top: -45px; }.header-variations.description:after { bottom: -7px; content: ""; height: 0; border-style: solid; border-width: 0 10px 10px 10px; border-color: transparent #ececec transparent transparent; position: absolute; right: 0; width: 0; }.header-variations .logo { padding: 30px 0 15px; text-align: center; }.header-variations .item { -webkit-transition: .2s; transition: .2s; display: block; margin: 15px 0; text-align: center; position: relative; bottom: 0; }.header-variations .item:hover { bottom: 5px; }.header-variations .item img { max-width: 100%; }.header-variations .item img {max-width: 100%;}.header-variations a h1, .pheader-variations a h2, .header-variations a h3, .header-variations a h4 { color: #073855; transition: all 0.2s ease 0s;}.header-variations a:hover h3, .header-variations a:hover h4 { color: #012548;}.header-variations a:hover { text-decoration: none;}@media (max-width: 767px) {.header-variations .item { margin-bottom: 60px; }}
</style>
<link rel='stylesheet' id='js_composer_front-css'  href='http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<link rel='stylesheet' id='redux-google-fonts-zoner_config-css'  href='http://fonts.googleapis.com/css?family=Roboto%3A400%2C300&#038;ver=201a87ed354d4d101903f99fa0251b3d' type='text/css' media='all' />
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-includes/js/jquery/jquery-migrate.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://cdn3.diverse-cdn.com/api/combo-js/config=dsidxpress.js/05cd0d?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='https://checkout.stripe.com/checkout.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<link rel='https://api.w.org/' href='http://themes.fruitfulcode.com/zoner/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://themes.fruitfulcode.com/zoner/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://themes.fruitfulcode.com/zoner/wp-includes/wlwmanifest.xml" /> 

<link rel="canonical" href="http://themes.fruitfulcode.com/zoner/register/" />
<link rel='shortlink' href='http://themes.fruitfulcode.com/zoner/?p=468' />
<link rel="alternate" type="application/json+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fregister%2F" />
<link rel="alternate" type="text/xml+oembed" href="http://themes.fruitfulcode.com/zoner/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fthemes.fruitfulcode.com%2Fzoner%2Fregister%2F&#038;format=xml" />
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
				</script>
<link rel="shortcut icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-16x16.png"/>
<link rel="apple-touch-icon" href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-57x57.png"> 
<link rel="apple-touch-icon" sizes="114x114" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-114x114.png "> 
<link rel="apple-touch-icon" sizes="72x72" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-72x72.png"> 
<link rel="apple-touch-icon" sizes="144x144" 	href="http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/admin/zoner-framework/../zoner-options/patterns/favicon/favicon-144x144.png"> 
<style type="text/css" title="dynamic-css" class="options-output">body{background-color:#ffffff;background-repeat:inherit;background-size:inherit;background-attachment:inherit;}body{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h1{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:28px;}h2{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:24px;}h3{font-family:Roboto;font-weight:300;font-style:normal;color:#5a5a5a;font-size:18px;}h4{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h5{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}h6{font-family:Roboto;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}p{font-family:Roboto;text-align:inherit;line-height:20px;font-weight:400;font-style:normal;color:#5a5a5a;font-size:14px;}a{color:#1396e2;}a:hover{color:#2a6496;}a:active{color:#2a6496;}</style><noscript><style type="text/css"> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript></head>
</head>
<body class="page page-id-468 page-template-default group-blog masthead-fixed page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive" data-offset="90" data-target=".navigation" data-spy="scroll" id="page-top">
	
	<div id="page" class="hfeed site wrapper">
		
		<jsp:include page="../navigation.jsp"></jsp:include>


		
				<div id="page-content" class="site-main">
		<!-- <!-- Breadcrumb --><div class="container"><ol class="breadcrumb"><li><a href="http://themes.fruitfulcode.com/zoner" title="Zoner" rel="home" class="trail-begin">Home</a></li>  <li class="active"><span class="trail-end">Register</span></li></ol></div>		
		
		
		
		
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">

				<article id="post-468"
					class="post-468 page type-page status-publish hentry">
					<section id="content" class="content">
						<header class="">
							<h1>매물 등록</h1>
						</header>
						<section id="legal" class="legal">
						</section>
						</section>
						
							<section class="vc_row wpb_row vc_row-fluid block">
							
													<!-- .legal -->
					</section>
				</article>
							
								<div class="container">	
									<div class="row">
													
									<div
								class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1447239994670">
								
								<div class="wpb_column vc_column_container vc_col-sm-12">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<h2
												style="text-align: center; font-family: Roboto; font-weight: 300; font-style: normal"
												class="vc_custom_heading">이용약관 (필수)</h2>
											<div class="vc_empty_space" style="height: 1px">
												<span class="vc_empty_space_inner"></span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div
								class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1447240029319">
								<div class="centcont">
								<div class="wpb_column vc_column_container vc_col-sm-4">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="feature-box equal-height"
												style="height: 363px; width: 100%;">
												<figure class="icon">
													<i class="fa fa-archive"></i>
												</figure>
												<aside class="description">
													<header>
														<h3>서비스 이용약관</h3>
													</header>
													<table>
														<tr>
															<td><textarea cols="30" rows="8"
																	style="height: 173px; width: 239px;">제1조 (목적)
														
본 약관은 (주)니가사는그집(이하 “회사”라 함)이 운영하는 인터넷 사이트 및 모바일 어플리케이션(이하 “니가사는그집”이라 함)에서 제공하는 제반 서비스의 이용과 관련하여 회사와 이용자 및 이용자간의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
								제2조 (정의)
								
									1. 니가사는그집:  회사가 컴퓨터 등 정보통신설비를 이용하여 서비스를 제공할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 인터넷 사이트 및 모바일 어플리케이션을 운영하는 사업자의 의미로도 사용합니다.
									2. 이용자: 니가사는그집에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
									3. 회원: 회사에 개인정보를 제공하여 회원등록을 한 자로서, 니가사는그집의 정보를 지속적으로 제공받으며, 회사가 제공하는 니가사는그집의 서비스를 계속적으로 이용할 수 있는 자를 말합니다. 회사는 서비스의 원활한 제공을 위해 회원의 등급을 회사 내부의 규정에 따라 나눌 수 있습니다.<br />
									4. 비회원: 회원으로 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.
									5. 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인한 회원 본인의 이메일 주소를 말합니다.
									6. 비밀번호: 회원의 동일성 확인과 회원정보의 보호를 위하여 회원이 설정하고 회사가 승인한 문자나 숫자의 조합을 말합니다.
									7. 서비스: 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 니가사는그집의 서비스를 의미합니다.
									8. 게시판: 그 명칭, 형태, 위치와 관계없이 회원 및 비회원 이용자에게 공개할 목적으로 부호•문자•음성•음향•화상•동영상 등의 정보 (이하 "게시물"이라 합니다)를 회원이 게재할 수 있도록 회사가 제공하는 서비스 상의 가상공간을 말합니다.
									9. 별칭: 인터넷사이트에서 아이디와 함께, 또는 아이디를 대신하여 회원을 식별하기 위하여 이용자의 신청과 회사의 승인에 의하여 설정되는 숫자와 문자의 조합을 말합니다.
									10. 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
									위 항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.
							
							  제3조 (약관 등의 명시와 설명 및 개정)
								
									1. 회사는 본 약관의 내용을 이용자가 쉽게 알 수 있도록 니가사는그집 인터넷 사이트 및 모바일 어플리케이션에 공지합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
									2. 회사는 “약관의 규제에 관한 법률”, “정보 통신망 이용 촉진 및 정보보호 등에 관한 법률” 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
									3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 이용자가 알기 쉽도록 표시하여 공지합니다.
									4. 회사가 약관을 개정할 경우에는 변경된 약관은 공지된 시점부터 그 효력이 발생하며, 이용자는 약관이 변경된 후에도 본 서비스를 계속 이용함으로써 변경 후의 약관에 대해 동의를 한 것으로 간주됩니다.
								
							  제4조 (약관의 해석)
								
									1. 회사는 서비스운영을 위해 별도의 운영정책을 마련하여 운영할 수 있으며, 회사는 니가사는그집 인터넷 사이트 및 모바일 어플리케이션에 운영정책을 사전 공지 후 적용합니다.
									2. 본 약관에서 정하지 아니한 사항이나 해석에 대해서는 별도의 운영정책, 관계법령 또는 상관례에 따릅니다.
								
							  제5조 (서비스의 제공 및 변경)
								
									1. 회사가 제공하는 서비스는 다음과 같습니다
									1) 부동산 매물 등에 관한 정보제공 서비스
									2) 부동산 매물 등록 서비스
									3) 부동산 중개업소 추천 등 기타 관련 서비스
									2. 회사가 제공하는 서비스의 내용을 기술적 사양의 변경 등의 이유로 변경할 경우에는 그 사유를 이용자에게 통지하거나, 이용자가 알아볼 수 있도록 공지사항으로 게시합니다.
								
						</textarea></td>
														</tr>
														<tr>
															<td><input type="checkbox" id="Chk_basic_agree"
																required> 이용약관에 동의합니다(필수)</td>
														</tr>

													</table>
													<br />
												</aside>

											</div>
										</div>
									</div>
								</div>
								
								<div class="wpb_column vc_column_container vc_col-sm-4">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="feature-box equal-height "
												style="height: 363px; width: 100%;">
												<figure class="icon">
													<i class="fa fa-archive"></i>
												</figure>
												<aside class="description">
													<header>
														<h3>개인정보 수집 및 이용 동의</h3>
													</header>
													<table>
														<tr>
															<td><textarea cols="30" rows="8"
																	style="overflow: scroll;">(주)니가사는그집은 서비스 제공을 위해서 아래와 같이 개인정보를 수집합니다. 
  정보주체는 본개인정보의 수집 및 이용에 관한 동의를 거부하실권리가 있으나, 서비스제공에 필요한 최소한의 개인 정보 이므로 동의를 해주셔야 서비스를 이용하실 수 있습니다.
• 수집하려는 개인 정보 항목: 이메일
• 개인정보의 수집 목적: 회원제 서비스 이용, 개인식별, 가입의사 확인, 고지사항 전달
• 개인정보의 보유기간: 회원 탈퇴 후  즉각 삭제
						</textarea></td>
														</tr>
														<tr>
															<td><input type="checkbox" id="Chk_personal_agree"
																required>개인정보 수집 및 이용에 동의합니다(필수)</td>
														</tr>

													</table>
												</aside>
											</div>
										</div>
									</div>
								</div>
								</div>
</div></div>
							</div>
					
												<div class="big-detail" align="center">
												<form role="form" action="newroom" id="propertyform"
														class=" form-create-account" name="form-create-account"
														method="post" style="width: 100%" enctype="multipart/form-data">
													<input type="hidden" id="lati" name="lati" value="">
							
													<input type="hidden" id="longti" name="longti" value="">
													<input type="hidden" id="approval" name="approval" value="N">													
												
													<h2><i class="fa fa-map-marker" aria-hidden="true"></i> 위치 정보</h2>
														
														
														<table class="newRoom" >
															<tr>
															<th rowspan="4" style="width:65%" class="mb_map">
															<div class="map_wrap" style="height:400px">
															<div id="smallmap" style="width:100% ; height:400px" >
															 <ul id="placesList"></ul>
															 <div id="pagination"></div>
															</div>
															</div>
															</th>	
																												
														<th style="width:35%" class="mb_text">		
														<div class="input-group">
														주소입력:					
														<input type="text" id="search_addr"
															name="search_addr" placeholder="예) 개포동 12-2 , 강남구 삼성동"  onkeypress="enterpress()"/><span class="input-group-btn"><button class="btn btn-default search" id="search_bt" type="button" style="top:10px"><i class="fa fa-search"></i></button></span></div>
															</th></tr>
															
															<tr><th class="mb_text"><input type="text" id="address" name="address" readonly="readonly"></th>
															</tr>
															<tr><th class="mb_text">건물명:
															<input type="text" id="danji" name="danji" readonly="readonly">
															</th>
															<tr>
															<th class="mb_text">상세주소 (동, 호수):<input type="text" id="detailaddr" name="detailaddr" required/></th>
															</tr>
														</table>
														<br/> <br/>
														
														<div id="floatingbasket" style="width:100%;height:300px">
														
														<div id="floatingdiv" style="float: left; width:100%; ">
														<h2><i class="fa fa-home" aria-hidden="true"></i> 기본 정보</h2>
														<table class="newroom-info">
														<tr><th >														
														<div class="form-group">
															<label for="ca-login-name">주거 형태:</label>
															<select name="builtType">
																<option value="아파트">아파트</option>
																<option value="연립">연립-다세대(빌라)</option>
																<option value="주택">주택</option>
															</select>
														</div>
														</th></tr>
														<tr><th colspan="2">
														<!-- /.form-group -->
														<div class="form-group" >
															<label for="ca-first-name">거래 종류:</label>
															<div class="widget_tag_cloud">
															<div class="tagcloud">
														<a id="prp_tp1" class='tag-link-187'  style='font-size: 14pt;'>전세</a>
														<a  id="prp_tp2" class='tag-link-187'  style='font-size: 14pt;'>월세</a>
														<a id="prp_tp3"  class='tag-link-187'  style='font-size: 14pt;'>매매</a>	</div></div>
														<input type="hidden" id="propertyType" name="propertyType" value="전세">
														</div>
														</tr>
														<tr>
														<th> <div style="width: 60% ; display: inline-block;" > 
														<input type="number" class="form-group" id="newroomprice" name="price" required /> 
															</div><span style="font-size: 20px">만원</span></th>
															<th > <div style="width: 60%; display: inline-block;"  id="newroomdiv2"> 
															</div> </th>
														</tr>
														<tr><th>														
														<div class="form-group" style="width: 60% ; display: inline-block;">
															<label for="ca-login-name">관리비:</label><input
																type="number" id="maintenance"
																name="maintenance" value="" required > 
														</div><span style="font-size: 20px">만원</span>
														</th>
														<th> <div class="form-group" style="width:70%">
															<label for="ca-login-name">건축년도:</label>
															<input type="number" id="builtyear"
																name="builtyear" required > 
														</div></th></tr>																											
														</table>
														</div>
														 <br/>
														
														<div id="floatingdiv2" style="float: left; overflow: auto; margin: 10px;">
														<h2><i class="fa fa-search" aria-hidden="true"></i> 추가 정보</h2>
														<table class="newroom-info">
														<tr>
														<th style="width: 33%"><div class="form-group" style="width: 60% ; display: inline-block;">
															<label for="ca-login-name">전용면적:</label><input
																type="number" class="form-control" id="area"
																name="area" required style="width: 100px;" onkeyup="m22p('area')"></div><span>&nbsp;m
																					<sup>2</sup></span>
														
														</th><th style="width: 33%;"><div class="form-group" style="width: 60% ; display: inline-block;">
															<label for="ca-login-name">대지면적:</label><input
																type="number" class="form-control" id="land_area"
																name="land_area" required style="width: 100px;" onkeyup="m22p('land_area')" ></div><span>&nbsp; m
																					<sup>2</sup></span>
														</th>
														<th style="width: 33%">
														<!-- /.form-group -->
														<div class="form-group">
															<label for="ca-last-name">건물 층수:</label><input
																type="number" class="form-control" id="floor"
																name="floor" value="" required style="width: 100px;">
														</div>
														</th>
														</tr>
														<tr>
														<th style="width: 33%"><div class="form-group" style="width: 60% ; display: inline-block;">
															<input
																type="number" class="form-control" id="Parea"
																required style="width: 100px;" onkeyup="p2m2('area')"></div><span>&nbsp; 평</span>
														
														</th><th style="width: 33%"><div class="form-group" style="width: 60% ; display: inline-block;">
															<input
																type="number" class="form-control" id="Pland_area"
															    required style="width: 100px;" onkeyup="p2m2('land_area')"></div><span>&nbsp; 평</span>
														</th>
														</tr>		
														
														<tr><th colspan="2">
														<!-- /.form-group -->
														<div class="form-group" >
															<label for="ca-first-name">입주 가능일:</label>
															<input type="date" class="ipju" id="movedate" name="movedate" style="line-height: 18px">
															</div></th>
														</tr>
														<tr>
														<th colspan="3"> <div class="form-group">
															<label for="ca-login-name">옵션:</label>
															해당없음<input type="checkbox" name="roomoption" value="해당없음">
															냉장고<input type="checkbox" name="roomoption" value="냉장고">
															에어컨<input type="checkbox" name="roomoption" value="에어컨">
															세탁기<input type="checkbox" name="roomoption" value="세탁기">
															침대<input type="checkbox" name="roomoption" value="침대">
															TV<input type="checkbox" name="roomoption" value="TV">
															가스레인지<input type="checkbox" name="roomoption" value="가스레인지"><br/>
															전자레인지<input type="checkbox" name="roomoption" value="전자레인지">
															인덕션<input type="checkbox" name="roomoption" value="인덕션">
															
														</div></th>
														</tr>
														</table> 
														</div>
														</div>
														
														<br/><br/><br/><br/>	
														<br/>	
														<br/>	
																								
														
														<div id="not " class="nothing" style="width:100%" align="center">
														<h2><i class="fa fa-newspaper-o" aria-hidden="true"></i> 상세 설명</h2>
														
														<table style="width: 100%">
														<tr><th style="text-align:center; width:300px">	
															<label >매물 제목</label>
														</th>
														<th style="margin: 5px; padding: 5px">  <input type="text" class="mbdetail" id="title" name="title" required > 
														</th></tr>
														<tr><th style="text-align:center;" >
															<label >상세 내용</label>
															</th>
															<th style="margin: 5px; padding: 5px" >
															<textarea rows="20" cols="110" id="mcontent" name="content" class="mbdetail" ></textarea>
															</th>
															</tr><tr>
															<th style="text-align:center;">사진 업로드</th>
															<th><input type="file" multiple="multiple" id="picture" name="picture" onchange="pictureslimit()" accept="image/*" >  사진은 3장 이상 15장 이하 업로드 하셔야합니다.</th>
													</tr>
													<tr>
													<th></th><th><p id="demo"></th>
													</tr>
														</table> <br/>
														
													
														
														<input style="font-size: 30px" type="button" class="btn btn-default" id="property_submit" value="매물등록">						
														</div>
													</form>
													</div>
													
												</div>
									</div>
					</div>
				</div>
							
				<!-- #post-## -->
			
	</div>
	
	<!-- Footer -->
	<jsp:include page="../BLfooter.jsp"></jsp:include>
	 

<!-- #page -->

<script type='text/javascript'>
		var container = document.getElementById('smallmap');
		var options = {
			center: new daum.maps.LatLng(37.476264,127.056742),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
</script>

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
//마커를 담을 배열입니다

var infowindow = new daum.maps.InfoWindow({zIndex:1});

var geocoder = new daum.maps.services.Geocoder();

var markers = [];
var mapContainer = document.getElementById('smallmap');
var mapOption = {
	center: new daum.maps.LatLng(37.476264,127.056742),
	level: 3
};



// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places();

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다

$(function(){
	$('#search_bt').on('click', function(){
		var search_addr = $('#search_addr').val();

		   if (!search_addr.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }
		ps.keywordSearch(search_addr , placesSearchCB); 
	})
	
});


function placesSearchCB (status, data, pagination) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(null);
	}
	infowindow.close();
	markers = [];
	
    if (status === daum.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new daum.maps.LatLngBounds();

        for (var i=0; i<data.places.length; i++) {
            displayMarker(data.places[i]);    
            bounds.extend(new daum.maps.LatLng(data.places[i].latitude, data.places[i].longitude));
        }       
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    }else{
		var search_addr = $('#search_addr').val();
		
    	geocoder.addr2coord(search_addr, function(status, result) {
    	    // 정상적으로 검색이 완료됐으면 
    	     if (status === daum.maps.services.Status.OK) {
    	        var bounds = new daum.maps.LatLngBounds();
				
    	        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
    	        // 결과값으로 받은 위치를 마커로 표시합니다
    	        var marker = new daum.maps.Marker({
    	            map: map,
    	            position: coords
    	        });
    	        bounds.extend(coords);
    	        map.setBounds(bounds);
    	        markers.push(marker);
    	        
    	        daum.maps.event.addListener(marker, 'click', function() {
    	        	$('#address').attr('value',result.addr[0].title);
    	        	$('#lati').attr('value',result.addr[0].lat);
    	        	$('#longti').attr('value',result.addr[0].lng);
    	        	if(result.addr[0].buildingAddress == '')
    	        		$('#danji').val('단독주택');	        		
    	        	else
    	        		$('#danji').attr('value',result.addr[0].buildingAddress);
    	        	
    	            infowindow.setContent('<div style="padding:5px;font-size:12px;">' + result.addr[0].title +' '+result.addr[0].buildingAddress + '</div>');
    	            infowindow.open(map, marker);
    	        	
    	        });
    	        
    	     }else{
				alert('검색 결과가 없습니다');    	    	 
    	     }
    	});
    	
    }
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.latitude, place.longitude) 
    });
    markers.push(marker);
    // 마커에 클릭이벤트를 등록합니다
    daum.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
//    	phone:032-623-8117
//    	newAddress:서울 서초구 서초대로32길 11
//    	imageUrl:http://cfile78.uf.daum.net/image/1951DF0C4BD142C0144882
//    	direction:
//    	zipcode:137841
//    	placeUrl:http://place.map.daum.net/12007747
//    	id:12007747
//    	title:케나즈
//    	distance:
//    	category:문화,예술 > 도서 > 인터넷서점
//    	address:서울 서초구 방배1동 892-1
//    	longitude:126.9972139117296
//    	latitude:37.488156018123114
//    	addressBCode:1165010100      place 데이터 예시
    	$('#address').attr('value',place.address);
    	$('#lati').attr('value',place.latitude);
    	$('#longti').attr('value',place.longitude);
    	$('#danji').attr('value',place.title);
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.title + '</div>');
        infowindow.open(map, marker);
    });
}
</script>
<script type='text/javascript'>
/* <![CDATA[ */
var LangGlobal = {"name":"en_US"};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jq-validation-translate/langs.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.placeholder.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.jgrowl.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":[],"icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"0","zoner_ajax_nonce":"cd77756610","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment."};
/* ]]> */
</script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/custom.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.mCustomScrollbar.concat.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/markerwithlabel_packed.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/jquery.cookie.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme//assets/js/leaflet.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
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
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
</body>
<script type="text/javascript">
if(screen.width < 700){
	$('.mb_map').css('float','left').css('width','100%');
	$('.mb_text').css('float','left').css('width','100%');
	$('#floatingdiv').css('width','100%');
	$('.form-control').css('width','100%');
	$('#mcontent').attr('cols',35);
}else{
	$('#floatingdiv').css('width','50%');
	$(".centcont").css('padding-left','20%');
}

</script>
</html>
<!-- Dynamic page generated in 2.263 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2016-04-10 15:57:50 -->

<!-- Compression = gzip -->
<!-- super cache -->