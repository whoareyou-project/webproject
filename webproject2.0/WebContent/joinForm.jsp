<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>회원가입 화면</title>
    
    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
 
    <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
        }
    </script>
    
</head>
<body>
    
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
       
       <form action="control" method="post">
	   <input type="hidden" name="command" value="memberInsert"> 
       
       
        <!-- <form method="post" action="../pro/Join.jsp" name="userInfo" onsubmit="return checkValue()"> -->
            <table>
            
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="50">
                        <input type="button" value="중복확인" >    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pw" maxlength="50">
                    </td>
                </tr>
                
              <!--  <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="pwcheck" maxlength="50">
                    </td>
                </tr>  -->
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="50">
                    </td>
                </tr>
                
                 <tr>
                    <td id="title">나이</td>
                    <td>
                        <input type="text" name="age" maxlength="50">
                    </td>
                </tr>
                
                 <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="sex" value="남" checked>남
                        <input type="radio" name="sex" value="여" checked>여
                    </td>
                </tr>                
                
                <tr>
                    <td id="title">생일</td>
                    <td>
                        <input type="text" name="birthday" maxlength="50">
                    </td>
                </tr> 
                    
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" name="address"/>
                    </td>
                </tr>
                
                <tr>
                    <td id="title">직업</td>
                    <td>
                        <input type="text" name="job" maxlength="50">
                    </td>
                </tr>   
                
                <tr>
                    <td id="title">키</td>
                    <td>
                        <input type="text" name="height" maxlength="50">
                    </td>
                </tr>      
                
            </table>
            <br>
            <input type="submit" value="가입"/>  <input type="button" value="취소" onclick="location.href='index2.html'">

        </form>
    </div>
</body>
</html>


