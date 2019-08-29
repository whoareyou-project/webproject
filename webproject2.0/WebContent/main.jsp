<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${sessionScope.id}님 ${requestScope.message}
		
		<h2>Who Are You</h2>
		메인페이지
<button type="button" onclick="location='logout' ">로그아웃</button>
<button type="button" onclick="location='joinForm.jsp' ">가치관검사</button>
<button type="button" onclick="location='attachment1.jsp' ">애착유형검사(P)</button>
<button type="button" onclick="location='attachment2.jsp' ">애착유형검사</button>
<button type="button" onclick="location='joinForm.jsp' ">이상형월드컵</button>
<button type="button" onclick="location='joinForm.jsp' ">나의유형검사</button>
</body>
</html>