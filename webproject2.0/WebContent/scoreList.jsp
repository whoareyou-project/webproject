<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<% 
	String url = application.getContextPath() + "/";%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>총점 조회 화면</title>
</head>
<body>
<br><br><br>
<center>

${requestScope.successMsg}

<h3>설문조사완료</h3>
<hr><p> 
 
<table border="1">
	<tr>
		<th>총점</th>
	</tr>
 	<tr>
 		<td>${requestScope.attachTot}</td>

 	</tr>
 	
 	
</table>
	     
	 

<br><br><br>

&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/main2.jsp">메인 화면 이동</a>

</center>
</body>
</html>