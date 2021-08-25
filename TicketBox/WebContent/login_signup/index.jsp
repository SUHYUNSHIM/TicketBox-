<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
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
		    
			        
			        #login {
			           margin: 100px auto;
			            /*가로너비*/
			            width: 400px;
			            /*높이만큼 늘어남*/
			            overflow: hidden;
			            /*배경색상*/
			            /* background-color: aliceblue; */
			            background-color:#eee;
			            /*안쪽여백*/
			            padding: 30px;
			            padding-top: 50px;
			            padding-bottom: 50px;
			            /*글자의 정렬*/
			            text-align: center;/*box안에 인라인 요소들 가운데 정렬?  */
			          
			        }
			        
			        #login h2 {
			            /*글자의 크기*/
			            font-size: 12px;
			        }
			        
			        #login h1 {
			            /*글자의 크기*/
			            font-size: 26px;
			            /*줄 간격*/
			            line-height: 50px;
			        }
			        
			        label {
			            /*속성을 보이지 않게 함*/
			            display: none;
			        }
			        
			        .box {
			            /*가로너비*/
			            width: 340px;
			            /*세로높이*/
			            height: 30px;
			            /*안쪽여백*/
			            padding-left: 20px;
			            padding-right: 20px;
			            /*바깥쪽 여백*/
			            margin-bottom: 5px;
			            /*테두리 스타일*/
			            border: 1px solid black;
			        }
			        
			        .btn {
			            /*가로너비*/
			            width: 340px;
			            /*세로높이*/
			            height: 40px;
			            /*글자크기*/
			            font-size: 16px;
			            /*글자색상*/
			            color:white;
			            /*테두리없음*/
			            border: none;
			            background-color:#3c3a3a
			        }

			</style>
</head>
<body style="font-size:14px;">
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
		                <li><a href="index.jsp">Login</a></li>
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
    
    
    <%
        if (session.getAttribute("id") != null) {
            String name = (String) session.getAttribute("name");
   
             response.sendRedirect("memInfo.jsp");
            
            %>
        <h1><%=name%>님 환영합니다!</h1>
        <a href="index.jsp">내 정보 수정하기</a> 
    <%
        } else {
    %>
    <form action="login" method="POST">
        
            <div id="login">
               
                <h2>티켓박스에 오신걸 환영합니다</h2>
		        <h1>로그인</h1>
                <label for="id">아이디 : </label>
                <input type="text" name="id" id="id" placeholder="아이디를 입력하세요" class="box" required>
                <label for="pw">비밀번호 : </label>
                <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요" class="box" required>         
                <input type="submit" value="로그인" class="btn"><br>
            
            
               <a href="signup.jsp">회원가입</a>
            </div>
        
    </form>
    <%
        }
    %>
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