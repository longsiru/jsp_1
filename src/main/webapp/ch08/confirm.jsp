<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객 목록</h2>
	<hr>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>고객등급</th>
		</tr>

		<c:forEach var="re" varStatus="i" items="${registers}">
			<tr>
				<td>${i.count}</td>
				<td><a
					href="/jsp_study/RegistController?action=info&id=${re.id}">${re.name}</a></td>
				<td>${re.phone}</td>
				<td>${re.grade}</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:choose>
		<c:when test= "silver">
		 
		</c:when>
	
	</c:choose>
	
	

</body>
</html>