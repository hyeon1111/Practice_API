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
		
		<!-- ���� API -->
		<!-- // ��� ���������� ����ϸ�, �ݵ�� ���� �ڵ庸�� ���� ����Ǿ�� �մϴ�. -->
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=055ae74de19c4353be8f5999196aa2ff&libraries=services,clusterer,drawing"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					/* center�� ������ �����ϴµ� �ݵ�� �ʿ�, ����, �浵 �� */
					center: new kakao.maps.LatLng(33.450701, 126.570667),
					level: 3
				};
		
				var map = new kakao.maps.Map(container, options);
				
				// ��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
				var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

				// ��Ŀ�� �����մϴ�
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});

				// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
				marker.setMap(map);
			</script>
	</body>
</html>