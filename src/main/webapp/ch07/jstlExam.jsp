<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSTL 종합예제</h2>
<hr>
<h3>set, out</h3>
<c:set var="product1" value="<b>애플아이폰</b>" />
<c:set var="product2" value="삼성 갤럭시 노트" />
<c:set var="intArray" value="${[1,2,3,4,5]}" /> <!-- pagescope에 저장 (배열의 에러표시는 무시해도 됨) -->
<p>
product1(jstl-escapeXml:true):<c:out value="${product1}" default="Not registered" escapeXml="true"></c:out>
<br>
product1(jstl-escapeXml:false):<c:out value="${product1}" default="Not registered" escapeXml="false"></c:out>
<br>
product1(el):${product1}
<br>
product2(jstl):<c:out value="${product2}"></c:out>
<br>
intArray(jstl):<c:out value="${intArray}"></c:out>
<br>
intArray[2](jstl):<c:out value="${intArray[2]}"></c:out>
<br>
intArray[2](el):${intArray[2]}
<hr>
<h3>foreach배열 출력</h3>
<ul>
	<!-- for(int num : intArray) -->
	<c:forEach items="${intArray}" var="num" varStatus="i">
	<li>${i.index} : ${num}</li>
	</c:forEach>
</ul>
<hr>
<h3>if</h3>
<c:set var="checkout" value="true" /> <!-- if(test == checkout) -->
<c:if test="${checkout}">
	<p>주문 제품 : ${product2}</p>
</c:if>
<c:if test="${!checkout}">
	<p>주문 제품 아님 : ${checkout}</p>
</c:if>
<!-- product2에 값ㅇ리 들어가 있는지 아닌지 체크한다. -->
<c:if test="${!empty product2}">
	<p>이미 있음: ${product2}</p>
</c:if>
<h3>choose, when, otherwise</h3>
<c:choose>
	<c:when test="${checkout} }">
		<p>주문제품:${product}
	</c:when>
	<c:otherwise>
		<p>주문 제품아님</p>
	</c:otherwise>
</c:choose>
<hr>
<h3>forTokens</h3>
<c:forTokens var="city" items="Seoul|Tokyo|New york|Toronto" delims="|" varStatus="i">
<!-- 인덱스가 첫번째면 true를 반환한다. -->
<!-- if(i.first ==true) -->
<c:if test="${i.first}"> 도시목록:</c:if>
${city}
<!-- 인덱스가 마지막이 아니면 실행. -->
<!-- if(i.last != true) -->
<c:if test="${!i.last}">, </c:if>
</c:forTokens>
</p>
</body>
</html>