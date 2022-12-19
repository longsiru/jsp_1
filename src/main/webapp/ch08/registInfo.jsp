<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객정보 조회</h2>
	<hr>
	<ul>
		<li>고객 아이디:${re.id }</li>
		<li>고객명:${re.name }</li>
		<li>주소:${re.address }</li>
		<li>등급:${re.grade }</li>
		<li>전화번호:${re.phone }</li>
	</ul>
</body>
</html>