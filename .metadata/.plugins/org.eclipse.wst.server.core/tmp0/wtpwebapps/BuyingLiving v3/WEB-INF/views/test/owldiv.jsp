<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="owl-carousel-310" class="owl-carousel property-carousel" >

	<c:forEach items="${plist }" var="pic">
		<div class="property-slide">
			<a href="/img/${pic.pic_temp }" class="image-popup">
				<div class="overlay">
					<h3></h3>
				</div> <img alt="" src="/img/${pic.pic_temp }">
			</a>
		</div>
		<!-- /.property-slide -->
	</c:forEach>
</div>


<script>
		$(document).ready(function() {
			$(".property-carousel").each(function(){
				var e="#"+$(this).attr("id"),t=is_nav=!0;
				1==$(e).find(".property-slide").length&&(t=!1,is_nav=!1),$(e).owlCarousel(
						{rtl:is_rtl,
							items:1,
							responsiveClass:!0,
							autoHeight:true,
							responsiveBaseElement:e+" .property-slide",
							responsive:{0:{items:1},640:{items:1},1700:{items:1},1900:{items:1}},
							nav:is_nav,
							dots:!1,
							loop:t,
							navText:["",""]})})
							
			var f=$(".image-popup");
				f.magnificPopup({type:"image",removalDelay:300,mainClass:"mfp-fade",overflowY:"scroll",gallery:{enabled:!0}})
				
				$('.owl-next').click();
				
		});
		</script>