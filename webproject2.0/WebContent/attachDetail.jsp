<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<% //http://ip:port/project[context]명의 데이트를 반환하는 코드
   /* application : ServletContext
   			- 모든 user가 공유하는 유일한 객체
   			- 서버 자체가 실행되서 해당 project 서비스 완료시 자동 생성되는 독특한 객체
   			- 모든 user가 공유하는 자원을 저장시 사용
   				: 데이터 저장
   					setAttribute(key, value)
   				: 데이터 활용
   					getAttribute(key)
   					${applicationScope.key}
   					
	  request : HttpServletRequest
	   		- 접속한 client에게만 종속된 객체
	   			: 데이터 저장
					setAttribute(key, value)
				: 데이터 활용
					getAttribute(key)
					${requestScope.key}
	   		
	  session : HttpSession
	  		- 접속한 client에게만 종속된 객체
	  			: 데이터 저장
					setAttribute(key, value)
				: 데이터 활용
					getAttribute(key)
					${sessionScope.key}
   */
	String url = application.getContextPath() + "/";%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원 상세정보화면</title>
</head>
<body>
<br><br><br>
<center>

${requestScope.successMsg}

<h3>설문조사완료</h3>
<hr><p> 
 
<table border="1">
	<tr>
		<th>회원 id</th>
	</tr>
 	<tr>
 		<td>${requestScope.attach.id}</td>

 	</tr>
</table>
	
	<form action="control?command=attachTot" method="post" >
	&nbsp;&nbsp;&nbsp;
	4. 회원 ID : <input type="text" name="id"><input type="submit" value="검색">
	</form>

<br><br><br>

&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/main2.jsp">메인 화면 이동</a>

</center>
</body>
</html>