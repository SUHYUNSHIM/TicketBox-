<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main1.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/main.js"></script>

<%
	String sessionId = (String)session.getAttribute("id");
	String sessionName = (String)session.getAttribute("name");
	if(sessionId == null ||sessionName == null){
		response.sendRedirect("login_signup/index.jsp");
	}

%>
</head>
<body>
   			<header>
		        <div id="menuBar">
		            <!--로고-->
		            <a href="main/ticketMain.jsp" class="logo"></a>
		
		            <!--메뉴-->
		            <ul>
		                <li><a href="main/ticketMain.jsp">티켓박스 홈</a></li>
		                <li><a href="#">뮤지컬</a></li>
		                <li><a href="#">콘서트</a></li>
		                <li><a href="#">마이페이지</a></li>
		                <li><a href="${pageContext.request.contextPath}/board/BoardList">공연 후기 게시판</a>
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
		       
		  
		    
			    <div class="thumbs">
					<ul>
						<li class="first"><img src="image/111.png"></li>
						<li class="second"><img src="image/222.png"></li>
					</ul>
				</div>
			
			
		    
			<div id="gogo">
			 	<div><a href="${pageContext.request.contextPath}/selectMusical.jsp"><h3>뮤지컬 예매하러 ▶</h3></a></div>
			 	<div><a href="#"><h3>콘서트 예매하러 ▶</h3></a></div>
				<div><a href="#"><h3>마이페이지 ▶</h3></a></div>
				<div><a href="${pageContext.request.contextPath}/board/BoardList"><h3>공연 후기 게시판 ▶</h3></a></div>				
				<div><a href="${pageContext.request.contextPath}/login_signup/index.jsp"><h3>로그인 ▶</h3></a></div>
				<div><a href="${pageContext.request.contextPath}/login_signup/signup.jsp"><h3>회원가입 ▶</h3></a></div>
			</div>

	
		    <div id="ad">
		        <div class=main_poster id=hedwig>
		            <a href="booking.jsp?name=hedwig">
		                <img src="image/hedwig.jpg" alt="이미지대체 텍스트">
		                <h3>헤드윅</h3>
		            </a>      	
		        </div>
		        
		        <div class=main_poster id=mari>
		            <a href = "booking.jsp?name=mari"> <!--p_id와의 연결성을 위해서 수정 ***********************  -->
		               <img src="image/mari.jpg" alt="이미지대체 텍스트">
		                <h3>마리 앙뚜아네트</h3>
		            </a>
		        </div>
		        
     		    <div class= main_poster id=mozart>
					<a href = booking.jsp?name=mozart>
	                	<img src="image/mozart.jpg"  alt="이미지대체 텍스트">
						<h3>모차르트</h3>
					</a>
		        </div>

		    </div>
	
	
	<footer>
			
		        <div>
		             <img src="image/ticket7.png" alt="이미지대체 텍스트">
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