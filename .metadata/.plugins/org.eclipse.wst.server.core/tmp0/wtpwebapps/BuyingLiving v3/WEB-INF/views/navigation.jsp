<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>


$(function(){
	$('#msgNew').hide();
	
	if('${loginId}'.length > 0){
		setInterval(function(){newMSGcheck();},2000);
		}
	
	if(screen.width >700){
	var sidebar = '<div id="msgNew" style="display:none; background: url(resources/img/new.png); width:35px; height:35px; position:absolute; left: 50% ; top:200%" ></div>'
	sidebar += '<ul><li><a href="myPage" class="quick1"><img src="resources/img/gbn-sidebar-1.png" width="80px" height="80px" 	title="마이페이지" alt="마이페이지" /></a></li>'
	sidebar += '<li><a href="cartView" class="quick2"><img src="resources/img/gbn-sidebar-2.png" width="80px" height="80px" title="장바구니" alt="장바구니" /></a></li>'
	sidebar += '<li><a href="qnaBoardView?currentPage=1" class="quick3"><img src="resources/img/gbn-sidebar-3.png" width="80px" height="70px" title="QnA" alt="QnA" /></a></li>'
	sidebar += '<li><a href="freeBoardView?currentPage=1" class="quick4"><img src="resources/img/gbn-sidebar-4.png" width="80px" height="80px" title="자유게시판" alt="자유게시판" /></a></li>'
	sidebar += '<li><a id="msgBox" class="quick5" sendId="${loginId}"><img src="resources/img/gbn-sidebar-5.png" width="80px" height="80px" title="쪽지" alt="쪽지" /></a></li></ul>'
	
	$(".gnbSidebar").html(sidebar);
	
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

function callMsgbox(text){
	var url = "selectOneMsgBox?sendId=${loginId}&receiveId="+text;
	
	window.open(url,'pop','resizable=yes scrollbars=yes');
}
</script>
<!-- 사이드바 -->
<style type="text/css">
div.gnbSidebar {
	position: fixed;
	top: 111px;
	right: 60px;
	width: 51px;
	height: 150px;
	z-index: 10000;
} /*height:225px*/
div.gnbSidebar ul {
	display: block;
}

div.gnbSidebar li {
	display: list-item;
	list-style: none;
	margin: 0px;
}
</style>
<!-- 사이드바 -->
<div class="gnbSidebar">

</div>
	<!-- 사이드바 -->



<div class="navigation">
			<div class="secondary-navigation">
				<div class="container">
					<div class="contact">
					 	
					 	<figure><strong>㏇ GO5조</strong></figure>
						<figure><strong>Phone:</strong>2016-07-06</figure>
						<figure><strong>Email:</strong><a href="mailto:go5조@SES.com">go5조@SES.com</a></figure>
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
								<span> ${loginId }님 로그인 중 &nbsp; &nbsp;&nbsp;&nbsp;</span>
							
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
							href="index"
							title="Real Estate WordPress Theme" rel="home"><img
							style="width: 240px; height: 22px;" width="240px" height="22px"
							src="resources/img/logo.png" alt="Real Estate WordPress Theme" /></a>
					</div>
					<nav
						class="collapse navbar-collapse bs-navbar-collapse navbar-right">
						<ul id="menu-main-menu-header" class="nav navbar-nav">
							<li id="menu-item-54"
								class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-48 current_page_item current-menu-ancestor current_page_ancestor menu-item-has-children has-child"><a
								href="myPage">마이페이지</a></li>
							<li id="menu-item-400"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children has-child"><a
								href="cartView">장바구니</a></li>
							<li id="menu-item-401"
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children has-child"><a
								href="freeBoardView?currentPage=1">자유게시판</a></li>
							<li id="menu-item-2258"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children has-child"><a
								href="msgBox" id="msgbox" sendId="${loginId}">쪽지함</a></li>
					</nav>
					
					
				</header>
				<!-- /.navbar -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.navigation -->