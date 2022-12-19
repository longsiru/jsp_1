<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Calculator cal = new Calculator();  -->
<%-- <%@Calculator cal = new Calculator()%> --%>
<jsp:useBean id="calc" class="ch07.Calculator"/>  <!-- 객채생성 -->


<!-- cal.setN1(request.getParameter("n1"));
cal.setN2(request.getParameter("n2"));
cal.setOp(request.getParameter("op")); -->
<jsp:setProperty name="calc" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과: <%=calc.calc() %>
</body>
</html>