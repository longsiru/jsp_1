<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="gu" class="ch07.com.dao.GuGuDan" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	
	<%
	int arr[] = gu.process(5);
	for(int i =1; i<=9; i++) {
		out.println(5 + "*" + i + "=" + arr[i-1] + "<br>");
	}
	%>
	
	
</body>
</html>