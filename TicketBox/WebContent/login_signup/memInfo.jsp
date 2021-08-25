<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>회원정보</title>
    <link href="../css/main.css" rel="stylesheet" type="text/css">
	<style>
	#main_picture {
		            /*가로너비*/
		            width: 100%;
		            /*세로높이*/
		            height: 140px;
		            /*높이만큼 보여짐*/
		            overflow: hidden;
		            /*배경이미지*/
		            background-image: url(../image/bg26.png);
		            /*배경이미지 반복여부*/
		            background-repeat: no-repeat;
		            /*배경이미지 스크롤에 따른 이동*/
		            background-attachment: scroll;
		            /*배경이미지 사이즈*/
		            background-size: 100% 464px;
		            /*안쪽 그림자 효과 css3generator.com*/
		            -webkit-box-shadow: inset 3px 2px 25px 10px rgba(0, 0, 0, 0.8);
		            box-shadow: inset 3px 2px 25px 10px rgba(0, 0, 0, 0.8);
		        }
	
			#modify_wrap{
				width:700px;
				margin:40px auto;
			 
			 	padding:10px;
			
			
			}
			
			#modify_wrap .title{
				padding:50px 0 20px;/*위 좌우 아래  */
				font-size: 15px;/*em은 상위 속성을 물려받아 배수로 나타낸 것 <filedset>태그이므로 <fieldset>태그의 기본 글자 크기의 2배를 의미한다. */
			}
			
			fieldset{
				border:0;
			}
			
			table{
				border-collapse:collapse;
			}
			
			body{
				font: 14px "나눔고딕", "Nanum Gothic", "sans-serif";
				color:#333;
			}
			
			caption{
				position:absolute;/*  위치를 지정할 때 사용한다 absolute를 사용하면 문서의 원래 위치와 상관없이 위치를 지정할 수 있다. */
				left:9999em/*  안보이게 하기 위해 왼쪽으로 날려버린 것이므로 실행화면에서 이 caption이 보이지 않게 된다. */
			
			}
			
			.modifyTable th, .modifyTable td{
				padding:10px;
				box-sizing:border-box;/*box-sizing : border-box; 는 테두리를 포함하여 박스의 크기를 지정하는 것이다.  */
				border-bottom:1px solid #ddd;
				font-size:14px;
				
				
			}
			
			.modifyTable th{
				text-align:center;
				background-color:#eee;
				width:120px;
				font-weight:bold;
			
			}
			
			.modifyTable td{
				width:520px;
				
			}
			
			.modifyTable .first{/* joinTable 속성을 가진 태그 내부의 first 속성에 대한 스타일이다. */
				border-top:1px solid #333;
			}
			.modifyTable .last{/* joinTable 속성을 가진 태그 내부의 first 속성에 대한 스타일이다. */
				border-bottom:1px solid #333;
			}
			
			.modifyTable .textForm{
				width:300px;
				height: 22px;
				border: 1px solid #ddd;
				border-radius:5px;
				padding: 0 10px;
				box-sizing: border-box;
			}
			
			/* 중복확인 버튼 */
		 	.modifyTable .btn{
				width: 80px;
				height: 27px;
				border:0;
				background-color:navy;
				border-radius: 5px;
				color: #fff;
			} 
			
			.btn_area{/* 하단부의 <div>태그에 대한 스타일을 지정한다. */
				text-align:center;
				margin:30px 0;
			}
			
			.btn_area button{
				width:100px;
				height:40px;
				margin: 0 10px;
				border:0;
				font-size:14px;
				
			
			}
			
			.btn_area .btn_modify{
				background-color:#091d53;
				color:#fff;
			}
	
	
	</style>
	
	<script>
		function goModify(){
			
			location.href="modify.jsp"
		}
	
	</script>

</head>

<body>
     <header>
		        <div id="menuBar">
		            <!--로고-->
		            <a href="../main/ticketMain.jsp" class="logo"></a>
		
		            <!--메뉴-->
		            <ul>
		                <li><a href="../main/ticketMain.jsp">티켓박스 홈</a></li>
		                <li><a href="#">뮤지컬</a></li>
		                <li><a href="#">콘서트</a></li>
		                <li><a href="#">마이페이지</a></li>
		                <li><a href="${pageContext.request.contextPath}/board/BoardList">공연 후기 게시판</a>
		               	<li><a href="#">|</a></li>
		                <li><a href="${pageContext.request.contextPath}/login_signup/index.jsp">Login</a></li>
		               	<li><a href="${pageContext.request.contextPath}/login_signup/Logout">Logout</a></li>
		                
		            </ul>
		
		            <select>
		                <option>Language</option>
		                <option>ENGLISH</option>
		                <option>한국어</option>
		            </select>
		        </div>
		    </header> 
      <!--메인이미지 박스-->
		<div id="main_picture">
		</div>
    
    <div id="modify_wrap">
    <h2>${sessionScope.id}님 로그인 중..</h2>
    <!-- <form action="modify" method="POST"> -->
        <fieldset>
	        <legend class="title">내정보 보기</legend>
	        <table class="modifyTable">
		        <caption>회원정보 선택 입력표</caption>
		        
		        <tr>
		            <th class="first"><label for="id">아이디</label></th>
		            <td class="first">
		            ${sessionScope.id }
		        	</td>
		        </tr>
		        <tr>
		            <th><label for="pw">비밀번호</label></th>
		            <td> ******
		            </td>
		        </tr>
		        <tr>
		            <th><label for="name">이름</label></th>
		            <td>
		           	${sessionScope.name}
		            </td>
		        </tr>
		        <tr>
		            <th><label for="phone1">전화번호</label></th>
		            <td>
		            	${sessionScope.phone}
		        	 </td>
		        </tr>
		        <tr>
		            <th><label for="gender">성별</label></th>
		    
		            <c:choose>
		            	<c:when test="${sessionScope.gender == 'male'}">
		            		<td>남성</td>
		            	</c:when>
		            	<c:when test="${sessionScope.gender == 'female'}">
		            		<td>여성</td>
		            	</c:when>		            
		            </c:choose>
		           
		        </tr>
	    	
	    		 <tr>
		            <th><label for="phone1">주소</label></th>
		            <td>
		            	${sessionScope.address}
		        	 </td>
		        </tr>
	    	
	    		   <tr>
		            <th class="last"><label for="phone1" >이메일</label></th>
		            <td class="last">
		            	${sessionScope.email}
		        	 </td>
		        </tr>
	    	</table>
        </fieldset>
        <div class="btn_area">
               
        <!-- 	<button type="submit" class="btn_modify">정보 수정</button> -->
        	<button class="btn_modify" onClick="goModify();">회원 정보 수정</button>
           <!--  <button type="reset">취소</button> -->
        </div>
    <!-- </form> -->
    </div>
    <footer>
			
		        <div>
		             <img src="../image/ticket7.png" alt="이미지대체 텍스트">
		            <p>
		               ㈜티켓박스 컴퍼니 경기도 성남시 분당구, 5층 대표이사 : 홍길동 사업자등록번호 : 333-5326-753<br>
				고객센터(평일/주말 09:00~18:00) : 1899-xxxx (유료)<a href="#">개인정보처리방침</a>
		                <br>
		                <span>Copyright ⓒTicket Box Company Corp</span>
		            </p>
		            <div>
		                
		                <select>
		                    <option>관련사이트</option>
		                </select>
		            </div>
		        </div>
	
	</footer>
</body>
</html>