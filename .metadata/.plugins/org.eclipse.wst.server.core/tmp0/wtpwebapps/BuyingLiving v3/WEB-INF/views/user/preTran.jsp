 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">

<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>가계약 | 니가사는 그집</title>
		<script src="resources/js/jquery-2.2.2.min.js" type="text/javascript"></script>
		<script type="text/javascript">
		$(function(){
			
			var loginId = '${loginId}';
			var sellerId = '${ptotal.sellerId}';
			
			if($('#status').val() == ''){
				$('.seller').attr('readonly','readonly');
				$('<input type="submit" id="request" class="vc_general vc_btn3 vc_btn3-shape-rounded vc_btn3-style-classic vc_btn3-color-grey" value="가계약 신청" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
			}else if($('#status').val() == '신청'){
				$('.buyer').attr('readonly','readonly');
				
				if(loginId != sellerId  ){
					$('.seller').attr('readonly','readonly');
					$('<h3>매매자가 승인 결정 중입니다.</h3>').appendTo('#divcenter');		
						
				}else{
				$('<input type="button" id="ga_yes" class="vc_general vc_btn3 vc_btn3-shape-rounded	vc_btn3-style-classic vc_btn3-color-grey" value="가계약 승인" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
				$('<input type="submit" id="ga_no" class="vc_general vc_btn3 vc_btn3-shape-rounded	vc_btn3-style-classic vc_btn3-color-grey" value="가계약 거절" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
				}
			}else if($('#status').val() == '승인'){
				$('.buyer').attr('readonly','readonly');
				$('.seller').attr('readonly','readonly');
				
				if(loginId == sellerId){
					$('<h3>구매자의 입금 대기 중입니다.</h3>').appendTo('#divcenter');		
				}else{
				$('<input type="submit" id="payment" class="vc_general vc_btn3 vc_btn3-shape-rounded vc_btn3-style-classic vc_btn3-color-grey" value="입금" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
				}
			}else if($('#status').val() == '완료'){
				$('.buyer').attr('readonly','readonly');
				$('.seller').attr('readonly','readonly');
				$('#money_date2').empty();
				$('#money_date').val('${pretran.money_date.substring(0,10)}');
				$('#money_date2').append('계약일 '+'${pretran.money_date.substring(0,11).replace("-","년").replace("-","월").replace(" ","일")}');
				$('<h3>가계약이 체결되었습니다.</h3>').appendTo('#divcenter');		
			}else if($('#status').val() == '거절'){
				$('<h3>가계약이 거절되었습니다.</h3><br/>').appendTo('#divcenter');
				$('.seller').attr('readonly','readonly');
				if(loginId == sellerId  ){
					$('.buyer').attr('readonly','readonly');
				}else{
				$('<input type="button" id="ga_retry" class="vc_general vc_btn3 vc_btn3-shape-rounded	vc_btn3-style-classic vc_btn3-color-grey" value="가계약 재신청" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
				$('<input type="button" id="ga_del" class="vc_general vc_btn3 vc_btn3-shape-rounded	vc_btn3-style-classic vc_btn3-color-grey" value="가계약 삭제" style="font-size: 15px; padding:5px">').appendTo('#divcenter');
				}
			}
			
			
			if('${pretran.b_id }' != ''){
				$('#b_id').val('${pretran.b_id }');
			}else{
				$('#b_id').val('${loginId}');
			}
			
			var price = ${ptotal.price * 10000}
			$('#price').val(comma(price));
			
			$('#request').on('click', function(){
				$('#status').attr('value','신청');
				$('#transend').attr('action','preTranRequest');
				formSubmit();
				
			})
			
			$('#ga_yes').on('click',function(){
				$('#status').val('승인');
				
				$.ajax({
					type : 'post',
					url : 'preTranCheck',
					data : 'address=' + '${pretran.address}' ,
					dataType : 'text',
					success : function(response) {
						if (response == "fail") { //===는 값과 타입 다 같아야함
							alert('이미 가계약이 체결된 매물입니다.');
							return false;
						}else{
							$('#transend').attr('action','preTranapprov')
							$('#transend').submit();
						}
					}
				});
				
			});
			
			$('#ga_no').on('click',function(){
				$('#status').val('거절');
				$('#transend').attr('action','preTranapprov')
				$('#transend').submit();
			})
			
			$('#ga_retry').on('click',function(){
				$('#status').val('신청')
				$('#transend').attr('action','retryPreTran')
				$('#transend').submit();
					
			})
			
			$('#ga_del').on('click',function(){
				$('#transend').attr('action','delPreTran')
				$('#transend').submit();
			})
			
			
			$('#payment').on('click',function(){
				$('#status').val('완료');
				$('#transend').attr('action','preTranpay')
				$('#transend').submit();
			})
			
			
			function comma(n){
				var reg = /(^[+-]?\d+)(\d{3})/;
				n+='';
				while(reg.test(n)){
					n = n.replace(reg,'$1'+','+'$2');
				}
			return n;				
			}
		
		
		});
		
		function formSubmit(){
			
			if($('#con_date').val() == ''){
				alert('입주 예정일을 입력하세요.');				
				return false;
			}
						
			$('#transend').submit();

			
		}
		
		</script>		

<%@include file="../test/uppart.html" %>

<style type="text/css">
th {
	padding: 5px;
}
</style>
 				

</head>

<body
	class="page page-id-409 page-template-default group-blog masthead-fixed page-sub-page page-legal wpb-js-composer js-comp-ver-4.9 vc_responsive"
	data-offset="90" data-target=".navigation" data-spy="scroll"
	id="page-top">
	
		<jsp:include page="../navigation.jsp"></jsp:include>

		<div id="page-content" class="site-main">
			<!-- Breadcrumb -->
			<div class="container">
				<ol class="breadcrumb">
					<li><a href="http://themes.fruitfulcode.com/zoner"
						title="Zoner" rel="home" class="trail-begin">Home</a></li>
					<li class="active"><span class="trail-end">가계약</span></li>
				</ol>
			</div>
			<section class="wpb_row vc_row-fluid">
				<div class="container">
					<div class="row">
						<div class="col-md-9 col-sm-9" style="width: 100%">

							<article id="post-409"
								class="post-409 page type-page status-publish hentry">
								<section id="content" class="content">
									<header class="">

										<h1>가계약</h1>

									</header>
									<section id="legal" class="legal">
										<section class="vc_row wpb_row vc_row-fluid block">
											<div class="container">
												<div class="row">
													<div class="wpb_column vc_column_container vc_col-sm-12">
														<div class="vc_column-inner ">
															<div class="wpb_wrapper">
																<div align="center">
	<h1>부동산(매매/전세/월세) 가계약</h1>
</div>
	<form action="" method="post" id="transend" >
	<input type="hidden" id="status" name="status" value="${pretran.status }">
	<input type="hidden" id="propertyNo" name="propertyNo" value="${ptotal.propertyNo }">
	<c:if test="${not empty pretran }"> <input type="hidden" id="contNo" name="contNo" value="${pretran.contNo }"> </c:if>
	<div style="width: 1100px">
	<h3 align="left">부동산의 표시</h3>
	<table style="padding: 5px; width: 1000px;">
		<tr>
			<th>소재지<br /> (주소)
			</th>
			<th colspan="7"><input type="text" class="pret" name="address" value="${ptotal.address }" readonly></th>
			

		</tr>
		<tr>
			<th>건물구조</th>
			<th><input type="text" class="pret" value="${ptotal.builtType }" readonly></th>
			<th>거래형태</th>
			<th><input type="text" class="pret" value="${ptotal.propertyType }" readonly></th>
			<th>월 차임</th>
			<th><input type="text" class="pret" value="${ptotal.monthfee }" readonly></th>
		</tr>
		<tr>
			<th>전용 면적</th>
			<th><input type="text" class="pret"  value="${ptotal.area }" readonly></th>
			<th>토지 면적</th>
			<th><input type="text" class="pret" value="${ptotal.land_area }"  readonly  ></th>
			<th>계약예정일</th>
			<th>
			<c:if test="${empty pretran.con_date }">
			<input type="date" class="pret" id="con_date" name="con_date" value="" required></c:if>${pretran.con_date.substring(0,10) }</th>
		</tr>
	</table>
	<br />
	<h3 align="left">거래 약정 내용</h3>
	<label>위 부동산 소유자(임대인)와 매수(임차)약정자가 양방 협의 하에 아래와 같이 가계약을 체결한다.</label>
	<table style="padding: 5px; width: 1100px;">
		<tr>
			<th><p align="center">
					거래 예정금액</span></th>
			<th><label>一金</label></th>
			<th><input type="text" class="buyer" id="price_kor" name="price_kor" placeholder="삼천만원" value="${pretran.price_kor }" required></th>
			<th style="width: 70px">원정&nbsp;&nbsp;&nbsp;&nbsp;￦</th>
			<th><input type="text" value="" id="price" readonly ></th>
		</tr>
		<tr>
			<th><p align="center">가 계약금</p></th>
			<th><label> ￦</label></th>
			<th><input type="text" class="buyer" placeholder="300,000" id="con_price" name="con_price" value="${pretran.con_price }" required></th>
			<th>원정은&nbsp;</th>
			<th><input type="text" placeholder="oooo년 o월 oo일 (입금 날짜로 자동 변경)" id="money_date" name="money_date" value="" readonly ></th>
			<th>에 영수함</th>

		</tr>

	</table>
	<h3>이행 약정</h3>
	<h4>
		<span>1.가계약의 효력은 가계약체결일로부터 본계약이 체결될 때까지 유효하다.</span> <br />
		<br /> <span>2. 다른 약정사항이 없는 한 매도인(임대인)은 계약금의 배액을 상환하고,
			매수인(임차인)은 계약금을 포기하고 계약을 해제할 수 있다.</span>
	</h4>

	<h3>부가 조건</h3>

	<textarea rows="5" cols="55" class="buyer"
		style="margin-left: 50px; border: none; font-size: xx-large;" id="extra_condi" name="extra_condi" ><c:if test="${empty pretran.extra_condi}">1.
2.
3.</c:if>${pretran.extra_condi }</textarea>
	<h4 align="center">
		<span>본 계약에 대하여 매도인(임대인)과 매수인(임차인)은 이의 없음을 확인하고 각자 서명․ 날인 후 <br />
		<br />매도인(임대인), 매수인(임차인) 각 1통씩 보관한다.
		</span>
	</h4>
	<br/>
	<br/>
	<h2 align="center" id="money_date2" >oooo년 o월 oo일 (입금일로 자동 변경)</h2>

	<br />
	<br />

	<table style="width: 1000px">
		<tr>
			<th rowspan="2">매도인<br /> (임대인)
			</th>
			<th>주소</th>
			<th colspan="3"><input type="text" class="seller" id="s_addr" name="s_addr" value="${pretran.s_addr }"></th>
			<th>ID</th>
			<th><input type="text" class="seller" value="${ptotal.sellerId }" id="s_id" name="s_id" readonly></th>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<th><input type="text" class="seller" id="s_jumin" name="s_jumin" / value="${pretran.s_jumin }"></th>
			<th>전화</th>
			<th><input type="text" class="seller" id="s_phone" name="s_phone" value="${pretran.s_phone }"></th>
			<th>성명</th>
			<th><input type="text" class="seller" id="s_name" name="s_name" value="${pretran.s_name }"/></th>
		</tr>
		<tr>
			<th rowspan="2">매수인<br /> (임차인)
			</th>
			<th>주소</th>
			<th colspan="3"><input type="text" id="b_addr" name="b_addr" class="buyer" value="${pretran.b_addr }" required></th>
			<th>ID</th>
			<th><input type="text" id="b_id" name="b_id" class="buyer" value="${pretran.b_id }" required></th>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<th><input type="text" id="b_jumin" name="b_jumin" class="buyer" value="${pretran.b_jumin }" required/></th>
			<th>전화</th>
			<th><input type="text" id="b_phone" name="b_phone" class="buyer" value="${pretran.b_phone }" required/></th>
			<th>성명</th>
			<th><input type="text" id="b_name" name="b_name" class="buyer" value="${pretran.b_name}" required/></th>
		</tr>
	</table>



	<br />
	<br />
	<div align="center" id="divcenter">
	</div>
</div>
							</form>								
															
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
		</div><!-- #main -->
	
	<!-- Footer -->
	<jsp:include page="../BLfooter.jsp"></jsp:include>
	 
</div><!-- #page -->

<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=201a87ed354d4d101903f99fa0251b3d-2014.06.20'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpcf7 = {"loaderUrl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/plugins\/contact-form-7\/images\/ajax-loader.gif","recaptchaEmpty":"Please verify that you are not a robot.","sending":"Sending ..."};
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
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/jquery.slider.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/scrollReveal.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/masonry.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/themes/zoner/includes/theme/assets/js/imagesloaded.pkgd.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var ZonerGlobal = {"ajaxurl":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-admin\/admin-ajax.php","domain":"http:\/\/themes.fruitfulcode.com\/zoner","is_mobile":"0","is_rtl":"0","is_general_page":"","is_agency_page":"","is_agent_page":"","source_path":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/theme\/assets","start_lat":"40.7056308","start_lng":"-73.9780035","locations":[],"icon_marker":"http:\/\/themes.fruitfulcode.com\/zoner\/wp-content\/themes\/zoner\/includes\/admin\/zoner-framework\/..\/zoner-options\/patterns\/images\/icons\/marker.png","maps_zoom":"14","map_type":"0","min_price":"150","max_price":"1213333","default_currency":"$","header_variations":"0","zoner_ajax_nonce":"75c263ed0f","zoner_message_send_text":"Thank you. Your message has been sent successfully.","zoner_message_faq_text":"Thank you for your vote.","zoner_default_compare_text":"Compare Your Property","zoner_pl_img_text_property":"Property","zoner_pl_img_text_featured":"Featured","zoner_pl_img_text_logo":"Logo","zoner_stripe_message_1":"Stripe process payment.","gm_or_osm":"0"};
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
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/dsidxpress/js/autocomplete.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
<script type='text/javascript' src='http://themes.fruitfulcode.com/zoner/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=201a87ed354d4d101903f99fa0251b3d'></script>
</body>
</html>