<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로드뷰</title>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=2266aed1d1ad1c546afc98030e20eba0&libraries=services,clusterer">
	
</script>
<script src="resources/js/jquery-2.2.2.min.js">
</script>

</head>
<body>
	<div id="map" style="width: 100%; height: 300px;"></div>
	<div id="roadview" style="width: 100%; height: 600px;"></div>
	
	<script type="text/javascript">
	
	if(screen.width < 700){
		$('#map').css("height","200px");
		$('#roadview').css("height","400px");
	}
	
		var x = ${x};
		var y = ${y};
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 

		mapOption = {
			center : new daum.maps.LatLng(x, y), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		//마커가 표시될 위치입니다 
		var markerPosition = new daum.maps.LatLng(x, y);

		//마커를 생성합니다
		var marker = new daum.maps.Marker({
			position : markerPosition
		});

		//마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
		var roadview = new daum.maps.Roadview(roadviewContainer); //로드뷰 객체
		var roadviewClient = new daum.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

		var position = new daum.maps.LatLng(x, y);
		roadviewClient.getNearestPanoId(position, 50, function(panoId) {
			roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
		});
	</script>

</body>
</html>