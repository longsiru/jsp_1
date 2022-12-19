<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="sam" class= "ch07.com.dao.Member"></jsp:useBean>
<jsp:setProperty name="sam" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result:<%=sam.result()%>
</body>
</html>