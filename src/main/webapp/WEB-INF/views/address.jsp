<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Address API</title>
		<!-- jQuery -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<!-- 다음 주소 API -->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			function addrBtn(){
			    new daum.Postcode({
			        oncomplete: function(data) {
			            $("#zonecode").val(data.zonecode);
			            $("#address").val(data.address);
			            
			        }
			    }).open();
			}
		</script>
	</head>
	<body>
		<h2>다음 주소 API</h2>
		<label>우편 번호</label>
		<input type="text" id="zonecode">
		
		<label>주소</label>
		<input type="text" id="address">
		
		<label>상세주소</label>
		<input type="text" id="addr2">
		
		<button type="button" onclick="addrBtn()">주소찾기</button>
	</body>
</html>