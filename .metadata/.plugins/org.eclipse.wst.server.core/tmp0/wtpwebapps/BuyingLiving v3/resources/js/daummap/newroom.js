// 마커를 담을 배열입니다

var infowindow = new daum.maps.InfoWindow({zIndex:1});


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
    	alert(data);
    	alert('검색결과가 없습니다. 주소를 확인해주세요.');
    }
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.latitude, place.longitude) 
    });

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