<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>KakaoMap</title>
	</head>
	<body>
		<div id="map" style="width:500px; height:400px;"></div>
		
		<!-- 지도 API -->
		<!-- // 상대 프로토콜을 사용하면, 반드시 실행 코드보다 먼저 선언되어야 합니다. -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=055ae74de19c4353be8f5999196aa2ff&libraries=services,clusterer,drawing"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					/* center는 지도를 생성하는데 반드시 필요, 위도, 경도 순 */
					center: new kakao.maps.LatLng(33.450701, 126.570667),
					level: 3
				};
		
				var map = new kakao.maps.Map(container, options);
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
			</script>
	</body>
</html>