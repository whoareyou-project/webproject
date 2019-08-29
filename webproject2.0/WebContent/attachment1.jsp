<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="control" method="post">
	   <input type="hidden" name="command" value="attachInsert"> 

	<tr>
		<td id="title">아이디를 다시한번 입력하시오</td><br>
		<td>
			<input type="text" name="id" maxlength="50">
		</td>
	</tr>   
	<br>
	<br>
	
	<tr>  
	   <td>1.내가 얼마나 호감을 가지고 있는지 상대방에게 보이고 싶지 않다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer1" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer1"  value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer1"   value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer1" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer1" value="5"></td>  
    </tr>    
    <br>
    <br>
    
    <tr>  
	   <td>2.나는 버림을 받는 것에 대해 걱정하는 편이다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer2" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer2" value="2"></td> 
	   <td>보통이다<input class="attach" type="radio" name="answer2" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer2" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer2" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>3.나는 다른 사람과 가까워지는 것이 매우 편안하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer3" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer3" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer3" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer3" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer3" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>4.나는 다른 사람과의 관계에 대해 많이 걱정하는 편이다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer4" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer4" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer4" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer4" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer4" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>5.상대방이 막 나와 친해지려고 할 때 꺼려하는 나를 발견한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer5" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer5" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer5" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer5" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer5" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>6.내가 다른 사람에게 관심을 가지는 만큼 그들이 나에게 관심을 가지지 않을까봐 걱정이다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer6" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer6" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer6" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer6" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer6" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>7.나는 다른 사람이 나와 매우 가까워지려 할 때 불편하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer7" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer7" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer7" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer7" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer7" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>8.나는 나와 친한 사람을 잃을까봐 꽤 걱정이 된다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer8" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer8" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer8" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer8" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer8" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>9.나는 다른 사람에게 마음을 여는 것이 편안하지 못하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer9" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer9" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer9" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer9" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer9" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>10.나는 종종 내가 상대방에게 호의를 보이는 만큼 상대방도 그렇게 해 주기를 바란다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer10" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer10" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer10" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer10" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer10" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>11.나는 상대방과 가까워지기를 원하지만 나는 생각을 바꾸어 그만둔다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer11" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer11" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer11" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer11" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer11" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>12.나는 상대방과 하나가 되길 원하기 때문에 사람들이 때때로 나에게서 멀어진다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer12" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer12" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer12" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer12" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer12" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>13.나는 다른 사람이 나와 너무 가까워졌을 때 예민해진다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer13" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer13" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer13" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer13" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer13" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>14.나는 혼자 남겨질까봐 걱정이다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer14" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer14" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer14" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer14" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer14" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>15.나는 다른 사람에게 내 생각과 감정을 이야기하는 것이 편안하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer15" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer15" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer15" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer15" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer15" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>16.지나치게 친밀해지고자 하는 욕심 때문에 때로 사람들이 두려워하여 거리를 둔다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer16" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer16" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer16" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer16" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer16" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>17.나는 상대방과 너무 가까워지는 것을 피하려고 한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer17" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer17" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer17" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer17" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer17" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>18.나는 상대방으로부터 사랑받고 있다는 것을 자주 확인받고 싶어한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer18" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer18" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer18" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer18" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer18" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>19.나는 다른 사람과 가까워지는 것이 비교적 쉽다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer19" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer19" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer19" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer19" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer19" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>20.가끔 나는 다른 사람에게, 더 많은 애정과 더 많은 헌신을 보여줄 것을 강요한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer20" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer20" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer20" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer20" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer20" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>21.나는 다른 사람에게 의지하기가 어렵다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer21" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer21" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer21" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer21" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer21" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>22.나는 버림받는 것에 대해 때때로 걱정하지 않는다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer22" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer22" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer22" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer22" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer22" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>23.나는 다른 사람과 너무 가까워지는 것을 좋아하지 않는다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer23" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer23" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer23" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer23" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer23" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>24.만약 상대방이 나에게 관심을 보이지 않는다면 나는 화가난다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer24" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer24" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer24" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer24" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer24" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>25.나는 상대방에게 모든 것을 이야기한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer25" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer25" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer25" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer25" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer25" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>26.상대방이 내가 원하는 만큼 가까워지는 것을 원치 않음을 안다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer26" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer26" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer26" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer26" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer26" value="5"></td>  
    </tr>
    <br>
    <br>
     <tr>  
	   <td>27.나는 대개 다른 사람에게 내 문제와 고민을 상의한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer27" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer27" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer27" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer27" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer27" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>28.내가 다른 사람과 교류가 없을 때 나는 다소 걱정스럽고 불안하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer28" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer28" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer28" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer28" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer28" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>29.다른 사람에게 의지하는 것이 편안하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer29" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer29" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer29" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer29" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer29" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>30.상대방이 내가 원하는 만큼 가까이에 있지 않을 때 실망하게 된다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer30" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer30" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer30" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer30" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer30" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>31.나는 상대방에게 위로, 조언, 또는 도움을 청하지 못한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer31" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer31" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer31" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer31" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer31" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>32.내가 필요로 할 때 상대방이 거절한다면 실망하게 된다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer32" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer32" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer32" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer32" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer32" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>33.내가 필요로 할 때 상대방에게 의지하는 게 도움이 된다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer33" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer33" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer33" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer33" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer33" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>34.상대방이 나에게 불만을 나타낼 때 나 자신이 정말 형편없게 느껴진다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer34" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer34" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer34" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer34" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer34" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>35.나는 위로와 확신을 비롯한 많은 일들을 상대방에게 의지한다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer35" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer35" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer35" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer35" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer35" value="5"></td>  
    </tr>
    <br>
    <br>
    <tr>  
	   <td>36.상대방이 나를 떠나서 많은 시간을 보내면 나는 불쾌하다</td><br>
	   <td>전혀그렇지않다<input class="attach" type="radio" name="answer36" value="1"></td>
	   <td>그렇지않다<input class="attach" type="radio" name="answer36" value="2"></td>
	   <td>보통이다<input class="attach" type="radio" name="answer36" value="3"></td>
	   <td>대체로그렇다<input class="attach" type="radio" name="answer36" value="4"></td>
	   <td>매우그렇다<input class="attach" type="radio" name="answer36" value="5"></td>  
    </tr>
   
    <br>
    <input type="submit" value="제출"/>  <input type="button" value="돌아가기" onclick="location.href='index2.html'">
    
    </form>
</body>
</html>