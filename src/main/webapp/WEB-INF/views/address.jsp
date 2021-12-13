<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Address API</title>
		<!-- jQuery -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<!-- ���� �ּ� API -->
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
		<h2>���� �ּ� API</h2>
		<label>���� ��ȣ</label>
		<input type="text" id="zonecode">
		
		<label>�ּ�</label>
		<input type="text" id="address">
		
		<label>���ּ�</label>
		<input type="text" id="addr2">
		
		<button type="button" onclick="addrBtn()">�ּ�ã��</button>
	</body>
</html>