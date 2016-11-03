
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>장바구니 | 니가사는 그집</title>
<script src="resources/js/jquery-2.2.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {

		$('button[value="삭제"]').on('click', function() {
			var propertyNo = $(this).attr('propertyNo');
			$('#property-' + propertyNo).remove();

			$.ajax({
				url : 'cartDel',
				method : 'post',
				data : 'propertyNo=' + propertyNo,
				dataType : 'text',
				success : function() {
					//alert("장바구니에서 매물이 삭제되었습니다.");
					//window.location.href='cartView';
				}
			});
		});

		$('#allSelect').on('click', function() {
			checkAll();

		});

		$('#selDel').on('click', function() {
			var checkedboxes = $(':checked[name=checkboxes]');

			$.each(checkedboxes, function(index, item) {
				$('#property-' + item.value).remove();

				$.ajax({
					url : 'cartDel',
					method : 'post',
					data : 'propertyNo=' + item.value,
					dataType : 'text',
					success : function() {
					}
				});
			})
			//window.location.href='cartView';

		})

		function checkAll() {
			var checkTop = document.getElementById('allSelect');
			var checkBoxes = $('[name=checkboxes]');

			for (var i = 0; i < checkBoxes.length; i++) {
				checkBoxes[i].checked = checkTop.checked;
			}
		}

		$('#comparePop')
				.on(
						'click',
						function() {
							var checkedboxes = $(':checked[name=checkboxes]');

							if (checkedboxes.length != 2) {
								alert("매물은 2개를 선택해 주세요")
							} else {
								var propertyNo1 = checkedboxes[0].value;
								var propertyNo2 = checkedboxes[1].value;

								//alert(propertyNo1+", "+propertyNo2);

								var url = "comparePop?propertyNo1="
										+ propertyNo1 + "&propertyNo2="
										+ propertyNo2;

								window
										.open(url, 'pop',
												'resizable=yes scrollbars=yes top=300 left=500 width=900 height=600');
							}
						});
		
		$(document).on('click','#msgBox',function(event){
			   event.preventDefault();
			   var sendId = $(this).attr("sendId");
			   window.open('msgBoxView?sendId='+sendId,'pop','resizable=no scrollbars=yes top=500 left=500 width=600 height=800');
			});
		

		$('button[value="상세보기"]').on('click', function() {
			var propertyNo = $(this).attr('propertyNo');
			var url = "detailView?propertyNo=" + propertyNo;
			window.open(url, 'pop', 'resizable=yes scrollbars=yes');
		});

	})
</script>

<%@include file="../test/uppart.html"%>
<body
	class="page page-id-409 page-template-default group-blog masthead-fixed page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive"
	data-offset="90" data-target=".navigation" data-spy="scroll"
	id="page-top">

	<div id="page" class="hfeed site wrapper">
		<jsp:include page="../navigation.jsp"></jsp:include>

		<div id="page-content" class="site-main">
			<!-- Breadcrumb -->
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="http://themes.fruitfulcode.com/zoner"
						title="Zoner" rel="home" class="trail-begin">Home</a></li>
					<li class="active"><span class="trail-end">장바구니</span></li>
				</ol>
			</div>
			<section class="wpb_row vc_row-fluid">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-9 col-xs-12">

							<article id="post-409"
								class="post-409 page type-page status-publish hentry">
								<section id="content" class="content">
									<header class="">
										<table >
											<tr>
												<th style="width: 70%" id="mbtitle">
													<h1>장바구니</h1>
												</th>
												<th style="width: 7%"><input type="checkbox"
													id="allSelect">전체선택</th>
												<th style="width: 7%"><button
														class="vc_general vc_btn3 vc_btn3-shape-rounded 
					vc_btn3-style-classic vc_btn3-color-grey"
														style="font-size: 15px; padding: 5px" id="selDel"
														value="선택삭제">선택삭제</button></th>
												<th style="width: 7%"><button id="comparePop"
														class="vc_general vc_btn3 vc_btn3-shape-rounded 
				vc_btn3-style-classic vc_btn3-color-grey"
														style="font-size: 15px; padding: 5px">비교하기</button></th>
											</tr>
										</table>
									</header>
									<section id="legal" class="legal">
										<section class="vc_row wpb_row vc_row-fluid block">
											<div class="container">
												<div class="row">
													<div class="wpb_column vc_column_container vc_col-sm-12">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<section id="agencies-listing" class="agencies-listing">


																	<c:if test="${fn:length(list)==0 }">
																		<div id="agency-471" class="agency">
																			<h2 align="center">장바구니에 넣은 매물이 없습니다.</h2>
																		</div>
																	</c:if>

																	<c:forEach var="pb" items="${list }">
																		<div id="property-${pb.propertyNo }" class="agency">
																			<a class="agency-image"><img class=""
																				src="/img/${pb.pic_temp }" style="width: 220px" /></a>
																			<div class="wrapper">
																				<header>
																					<a>
																						<h2>${pb.propertyType}-${pb.title}</h2>
																					</a>
																				</header>
																				<dl>
																					<c:if test="${pb.propertyType=='매매' }">
																						<dt>매매가</dt>
																					</c:if>
																					<c:if test="${pb.propertyType=='전세' }">
																						<dt>보증금</dt>
																					</c:if>
																					<c:if test="${pb.propertyType=='월세' }">
																						<dt>보증금 / 월세</dt>
																					</c:if>
																					<c:if
																						test="${pb.propertyType=='매매'||pb.propertyType=='전세' }">
																						<dd>
																							<c:if test="${pb.price>=10000}">
																								<fmt:formatNumber
																									value="${Math.floor(pb.price/10000)}"
																									pattern="###" /> 억 </c:if>
																							<c:if
																								test="${pb.price-Math.floor(pb.price/10000)*10000 >0 }">
																								<fmt:formatNumber
																									value="${pb.price-Math.floor(pb.price/10000)*10000} "
																									pattern="#" /> 만 원
																						</c:if>
																						</dd>
																					</c:if>
																					<c:if test="${pb.propertyType=='월세' }">
																						<dt>
																							<c:if test="${pb.price>=10000}">
																								<fmt:formatNumber
																									value="${Math.floor(pb.price/10000)}"
																									pattern="###" /> 억 </c:if>
																							<c:if
																								test="${pb.price-Math.floor(pb.price/10000)*10000 >0 }">
																								<fmt:formatNumber
																									value="${pb.price-Math.floor(pb.price/10000)*10000} "
																									pattern="#" /> 만 원
																						</c:if>
																							/${pb.monthfee}&nbsp;&nbsp; 만 원
																						</dt>
																					</c:if>
																					<dt>평수 / 입주일</dt>
																					<dd>${Math.floor(pb.area*0.3025)}평, ${pb.area}m<sup>2</sup>
																						&nbsp;/&nbsp;${pb.movedate}
																					</dd>
																					<dt>옵션</dt>
																					<dd>${pb.roomoption}</dd>
																				</dl>
																				<address>
																					<h3>건물명</h3>
																					<strong>${pb.danji}</strong><br /> <br />
																					<h3>주소</h3>
																					<strong>${pb.address }</strong><br />
																				</address>
																				<address>
																					<input type="checkbox" name="checkboxes"
																						value="${pb.propertyNo }"> 선택 <br />
																					<button
																						class="vc_general vc_btn3 vc_btn3-shape-rounded vc_btn3-style-classic vc_btn3-color-grey"
																						style="font-size: 15px; padding: 5px"
																						propertyNo="${pb.propertyNo }" value="상세보기">상세보기</button>
																					<button
																						class="vc_general vc_btn3 vc_btn3-shape-rounded vc_btn3-style-classic vc_btn3-color-grey"
																						style="font-size: 15px; padding: 5px"
																						propertyNo="${pb.propertyNo }" value="삭제">삭제</button>
																					<br />
																					<form action="preTranfirst" method="get">
																						<input type="submit"
																							class="vc_general vc_btn3 vc_btn3-shape-rounded vc_btn3-style-classic vc_btn3-color-grey"
																							style="font-size: 15px; padding: 5px" value="가계약">
																						<input type="hidden" name="propertyNo"
																							value="${pb.propertyNo }">
																					</form>
																				</address>
																			</div>
																		</div>

																	</c:forEach>

																	<!-- /.agency -->
																	<!-- <div id="agency-1867" class="agency">
																		<a
																			href="http://themes.fruitfulcode.com/zoner/agency/test/"
																			class="agency-image"><img
																			data-src="holder.js/200x200?auto=yes&text=No Image"
																			alt="" /></a>
																		<div class="wrapper">
																			<header>
																				<a
																					href="http://themes.fruitfulcode.com/zoner/agency/test/"><h2>Test</h2></a>
																			</header>
																			<dl>
																				<dt>Phone:</dt>
																				<dd>+791866548554</dd>
																				<dt>Mobile:</dt>
																				<dd>+79186699759</dd>
																			</dl>
																			<address>
																				<h3>Address</h3>
																				<strong>Test</strong><br />test
																			</address>
																		</div>
																	</div> -->
																	<!-- /.agency -->
																</section>
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
		var _wpcf7 = {
			"loaderUrl" : "http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif",
			"recaptchaEmpty" : "Please verify that you are not a robot.",
			"sending" : "Sending ..."
		};
		/* ]]> */
	</script>
	<script type='text/javascript'
		src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
	<script type='text/javascript'>
		/* <![CDATA[ */
		var zonerRegisterUserForm = {
			"valid_email_mess" : "Please enter your unique email",
			"valid_login_mess" : "Please enter your unique login"
		};
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
		var LangGlobal = {
			"name" : "en_US"
		};
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
		var ZonerGlobal = {
			"ajaxurl" : "http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php",
			"domain" : "http:\/\/themes.fruitfulcode.com\/zoner",
			"is_mobile" : "0",
			"is_rtl" : "0",
			"is_general_page" : "",
			"is_agency_page" : "",
			"is_agent_page" : "",
			"source_path" : "http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets",
			"start_lat" : "40.7056308",
			"start_lng" : "-73.9780035",
			"locations" : [],
			"icon_marker" : "http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png",
			"maps_zoom" : "14",
			"map_type" : "0",
			"min_price" : "150",
			"max_price" : "1213333",
			"default_currency" : "$",
			"header_variations" : "0",
			"zoner_ajax_nonce" : "75c263ed0f",
			"zoner_message_send_text" : "Thank you. Your message has been sent successfully.",
			"zoner_message_faq_text" : "Thank you for your vote.",
			"zoner_default_compare_text" : "Compare Your Property",
			"zoner_pl_img_text_property" : "Property",
			"zoner_pl_img_text_featured" : "Featured",
			"zoner_pl_img_text_logo" : "Logo",
			"zoner_stripe_message_1" : "Stripe process payment.",
			"gm_or_osm" : "0"
		};
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
		/* _$tag____ */
		var zonerSignIn = {
			"valid_email_mess" : "Please enter valid email address",
			"valid_pass_mess" : "Please enter valid password",
			"frg_pass_button_text" : "Send Me Password",
			"zoner_created_user" : "",
			"zoner_message_created_user" : "Thank you for registering. Please check your mail."
		};
		/* _$t */
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
<script type="text/javascript">
if(screen.width < 700){
	$('#mbtitle').css('width','10%');
}else{
}

</script>
</html>