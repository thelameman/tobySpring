<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 사이드바 -->
<style type="text/css">
div.gnbSidebar {
	position: fixed;
	top: 111px;
	right: 60px;
	width: 51px;
	height: 150px;
	border-bottom: 1px solid #dadada;
	z-index: 10000;
} /*height:225px*/
div.gnbSidebar ul {
	display: block;
}

div.gnbSidebar li {
	display: list-item;
	list-style: none;
}
</style>
<!-- 사이드바 -->

<!-- 사이드바 -->
<div class="gnbSidebar">
	<ul>
		<li><a href="myPage" class="quick1"><img
				src="resources/img/gbn-sidebar-1.png" width="80px" height="80px"
				title="마이페이지" alt="마이페이지" /></a></li>

		<li><a href="cartView" class="quick2"><img
				src="resources/img/gbn-sidebar-2.png" width="80px" height="80px"
				title="장바구니" alt="장바구니" /></a></li>
		<li><a href="qnaBoardView?currentPage=1" class="quick3"><img
				src="resources/img/gbn-sidebar-3.png" width="80px" height="70px"
				title="QnA" alt="QnA" /></a></li>

		<li><a href="freeBoardView?currentPage=1" class="quick4"><img
				src="resources/img/gbn-sidebar-4.png" width="80px" height="80px"
				title="자유게시판" alt="자유게시판" /></a></li>

		<li><a id="msgBox" class="quick5" sendId="${loginId}"><img
				src="resources/img/gbn-sidebar-5.png" width="80px" height="80px"
				title="쪽지" alt="쪽지" /></a></li>

	</ul>
</div>
<!-- 사이드바 -->

<div id="page" class="hfeed site wrapper">


	<div class="navigation">
		<div class="secondary-navigation">
			<div class="container">
				<div class="contact">
					<figure>
						<strong>Phone:</strong>810-991-3842
					</figure>
					<figure>
						<strong>Email:</strong>
						<a href="mailto:zoner@example.com">zoner@example.com</a>
					</figure>
				</div>
				<div class="user-area">
					<div class="actions">
						<c:if test="${empty loginId}">
							<a class="promoted" href="joinView" class="register"><strong>회원가입</strong></a>
							<a class="promoted" href="brokerJoinView" class="register"
								style="color: orange;"><strong>중개사가입</strong></a>
							<a href="loginView" class="sing-in">로그인</a>
						</c:if>
						<c:if test="${not empty loginId}">
							<a href="myPage" class="sing-in">My Page</a>
							<a href="logout" class="sing-in">로그아웃</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<header class="navbar" id="top" role="banner">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse"
						data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand nav logo" href="index"
						title="Real Estate WordPress Theme" rel="home"><img
						style="width: 240px; height: 22px;" width="240px" height="22px"
						src="resources/img/logo.png" alt="Real Estate WordPress Theme" /></a><a
						class="navbar-brand nav logo retina"
						href="http://themes.fruitfulcode.com/zoner/"
						title="Real Estate WordPress Theme" rel="home"><img
						style="width: 240px; height: 22px;" width="240px" height="22px"
						src="resources/img/logo.png" alt="Real Estate WordPress Theme" /></a>
				</div>

			</header>
			<!-- /.navbar -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.navigation -->