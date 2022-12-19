<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>jsp종합예제</h2>
	<hr>
	<!-- html주석 -->
	<%-- jsp주석.선언태크: 멤버 변수 , 메소드 선언 --%>
	<%! 
		String[] members ={"용용", "요요", "아아", "야야"};
		int num1 = 10;
		
		int calc(int num2) {
			return num1+num2;
		}
	%>
	<%-- 표현태그: 사칙연산, 메소드 호출, 변수값  --%>
	<h3>
	1.calc(10) 매소드 실행결과: <%=calc(10) %>
	<br />
	2.num1별수 출력:<%=num1 %>  <!-- 刷新就好 -->
	<br />
	3.연산 출력: <%=num1 + 1 %>
	</h3>
	<hr>
	<%--스크립트 태그: 모든 자바코드 --%>
	<ul>
		<% for(String name : members){ %>
			<li> <%=name%></li>
		<%} %>
	</ul>
	
	<ul>
		<%
			for(String name : members){
				out.println("<li>"+ name + "</li>");
			}
		%>
	</ul>
	<hr>
	<%@include file="../hello.jsp" %>   <!--呼出hello.jsp  -->
	<hr>
	<% Date day = new Date(); %>
	현재 날짜: <%= day %>
	<hr>
	5의 제곱: <%=Math.pow(5,2) %>
	
	
</body>
</html>