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
<style type="text/css">
</style>
<script>
$(function(){
	if(screen.width <700){
		$('.gnbSidebar').hide();
		$('#footerside').show();
		$('#footer-thumbnails').hide();
		$('#footerquickmove').hide();
		$('#msgNew').css('top','').css('left','80%');
		$("#footercontacts").css({"width":"50%","float":"left"});
		$("#footercp").css("float","left");
	}else{
		$('.gnbSidebar').show();
		$('#footerside').hide();
	}
});


</script>
</head>
<body data-spy="scroll" id="page-top">
	<div id="page" class="hfeed site wrapper">
		<!-- Footer -->
		<footer id="page-footer"> 
			<div class="inner">

				<section id="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-md-3 col-sm-3" style="width: 50%" id="footercp">
								<aside id="text-4" class="widget widget_text">
									<h3 class="widget-title">GO５조</h3>
									<div class="textwidget">
									<!-- 	<p>Vel fermentum ipsum. Suspendisse quis molestie odio.
											Interdum et malesuada fames ac ante ipsum primis in faucibus.
											Quisque aliquet a metus in aliquet. Praesent ut turpis
											posuere, commodo odio id, ornare tortor</p> -->
											<p>2015년 8월 시작된 SC Master 30기입니다. 조장 권보성 조원 김민주, 김정, 김형래로 구성되어있으며, 
											BuyingLiving 프로젝트는 2016년 3월 말부터 5월 초까지 제작되었습니다.</p>
									</div>
								</aside>
							</div>
							<div class="col-md-3 col-sm-3" id="footercontacts">
								<aside id="text-2" class="widget widget_text">
									<h3 class="widget-title">연락처</h3>
									<div class="textwidget">
										<address>
											<strong>SC Master</strong><br /> 코엑스 4층<br />
											무역아카데미 IT교육센터<br />
										</address>
										<p>
											02) 6000-7139, 5413<br /> <a href="http://www.itmasters.org/">itmasters.org</a>
										</p>
									</div>
								</aside>
							</div>
							<div class="col-md-3 col-sm-3" id="footerquickmove">
								<aside id="nav_menu-2" class="widget widget_nav_menu">
									<h3 class="widget-title">바로가기</h3>
									<div class="menu-footer-menu-container">
										<ul id="menu-footer-menu" class="menu">
											<li id="menu-item-1721" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1721"><a href="index">메인</a></li>
											<c:if test="${empty loginId }">
											<li id="menu-item-1722" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1722"><a href="joinView">회원가입</a></li>
											</c:if>
											<c:if test="${not empty loginId }">
											<li id="menu-item-1722" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1722"><a href="myPage">마이페이지</a></li>
											</c:if>
											<li id="menu-item-1723" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1723"><a href="freeBoardView?currentPage=1">자유게시판</a></li>
											<li id="menu-item-1724" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1724"><a href="qnaBoardView?currentPage=1">QnA게시판</a></li>
											
										</ul>
									</div>
								</aside>
							</div>
						</div>
					</div>
				</section>
				<div id="footerside">
					<div id="msgNew"
						style="display: none; background: url(resources/img/new.png); width: 35px; height: 35px; position: absolute; left: 50%; top: 200%"></div>
					<table>
						<tr>
							<th><a href="myPage" class="quick"><img
									src="resources/img/gbn-sidebar-1.png" width="100%"
									height="80px" title="마이페이지" alt="마이페이지" /></a></th>
							<th><a href="cartView" class="quick"><img
									src="resources/img/gbn-sidebar-2.png" width="100%"
									height="80px" title="장바구니" alt="장바구니" /></a></th>
							<th><a href="qnaBoardView?currentPage=1"
							class="quick"><img src="resources/img/gbn-sidebar-3.png"
								width="100%" height="70px" title="QnA" alt="QnA" /></a></th>
							<th><a href="freeBoardView?currentPage=1"
							class="quick"><img src="resources/img/gbn-sidebar-4.png"
								width="100%" height="80px" title="자유게시판" alt="자유게시판" /></a></th>
							<th><a id="msgBox" class="quick"
							sendId="${loginId}"><img
								src="resources/img/gbn-sidebar-5.png" width="100%" height="80px"
								title="쪽지" alt="쪽지" /></a></th>
						</tr>
					</table>
					
				<%-- 	<ul class="sidebig">
						<li class="side"><a href="myPage" class="quick"><img
								src="resources/img/gbn-sidebar-1.png" width="80px" height="80px"
								title="마이페이지" alt="마이페이지" /></a></li>
						<li class="side"><a href="cartView" class="quick"><img
								src="resources/img/gbn-sidebar-2.png" width="80px" height="80px"
								title="장바구니" alt="장바구니" /></a></li>
						<li class="side"><a href="qnaBoardView?currentPage=1"
							class="quick"><img src="resources/img/gbn-sidebar-3.png"
								width="80px" height="70px" title="QnA" alt="QnA" /></a></li>
						<li class="side"><a href="freeBoardView?currentPage=1"
							class="quick"><img src="resources/img/gbn-sidebar-4.png"
								width="80px" height="80px" title="자유게시판" alt="자유게시판" /></a></li>
						<li class="side"><a id="msgBox" class="quick"
							sendId="${loginId}"><img
								src="resources/img/gbn-sidebar-5.png" width="80px" height="80px"
								title="쪽지" alt="쪽지" /></a></li>
					</ul> --%>
				</div>
				<section id="footer-thumbnails" class="footer-thumbnails">
					<div id="property-thumbnail-3573" class="property-thumbnail">
					 <img src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/20747890453_5c1b3149f2_k-150x150.jpg" alt="" /> 
					</div>
					<div id="property-thumbnail-497" class="property-thumbnail">
						<img src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_3-150x150.jpg" alt="" /> 
					</div>
					<div id="property-thumbnail-1715" class="property-thumbnail">
						 <img src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_11-150x150.jpg" alt="" /> 
					</div>
					<div id="property-thumbnail-3567" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22869603797_f9bdf34a15_k-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-506" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/03/Home-1-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-1728" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/04/thumbnail_16-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-485" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_1-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-1875" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/DSC00567-Custom-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-3572" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22170691606_4e3124e075_k-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-3568" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22698641040_679047d2c2_k-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-515" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_9-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-1819" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/property-02-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-3571" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22010564328_180deb3832_k-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-530" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/awesome-mansion1-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-1764" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/911-memorial-07-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-1848" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/02-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-3574" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/20626010444_dd43fe3ebc_k-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-523" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_11-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-518" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_10-150x150.jpg"
							alt="" /> 
					</div>
					<div id="property-thumbnail-509" class="property-thumbnail">
						 <img
							src="http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/21182077749_c8a552cf69_k-150x150.jpg"
							alt="" />
					</div>
				</section>
				<!-- /#footer-thumbnails -->
				<section id="footer-copyright">
					<div class="container">
						<div class="copyright pull-left">
							<nofollow>© <a title="BuyingLiving Main" href="index" target="_blank">BuyingLiving</a>, Powered by <a href="http://wordpress.org/" target="_blank">WordPress</a></nofollow>
						</div>
						<!-- /.copyright -->
						<div class="social pull-right">
							<div class="icons"></div>
							<!-- /.icons -->
						</div>
						<!-- /.social -->
						<span class="go-to-top pull-right"><a href="#page-top" class="roll">Go to top</a></span>
					</div>
					<!-- /.container -->
				</section>
			</div>
		</footer>
	</div>
	<!-- #page -->

</body>
</html>