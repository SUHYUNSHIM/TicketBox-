<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String aid= request.getParameter("str_aid");
	if(aid == null || aid.equals("")){
%>
<!-- 	<script>
		alert("잘못된 경로로의 접근");
		location="pboard_list.jsp";
	</script> -->


<% 		
	return;
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 암호 입력화면 </title>
<link href="../css/main1.css" rel="stylesheet" type="text/css">
<style>

		 body{
	 	font-size: 14px;
	 }
	 	img {
		            /*테두리없음*/
		            border: 0;
		            /*inline속성의 오차를 방지하고자 block속성으로 변경*/
		            display: block;
		        } 
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
		    
 
	  #pass {
			        
			            
			              /*가로너비*/
		            width: 1175px;
		            /*높이만큼 늘어남*/
		            overflow: hidden;
		            /*상대위치*/
		            position: relative;
		            /*block속성일 때 가운데 정렬*/
		            margin: 0px auto;
			            
	} 
	
	#board{	
		 margin: 140px 170px; 
	}
	 aside {
		            /*가로너비*/
		            width: 300px;
		            /*세로높이*/
		            height: 500px;
		            /*왼쪽기준정렬*/
		            float: left;
		            /*높이만큼 보여짐*/
		            overflow: hidden;
		            /*상대위치*/
		            position: relative;
		            /*배경색상*/
		            background-color: #1e1e1e;
		             	background-image: url(../image/write.PNG);
					background-size: 100%;
		            
		        }
	
	section {
		            /*가로너비*/
		            width: 800px;
		            /*세로높이*/
		            height: 500px;
		            /*오른쪽 기준정렬*/
		            float: right;
		            /*높이만큼 보여짐*/
		            overflow: hidden;
		            /*상대위치*/
		            position: relative;
		        }
		
	table{
	 	width:300px;
		border-collapse: collapse; 
		/* text-align:center; */
	
	}
	
	.passWrite{
		border-top:2px solid navy;
		border-bottom:2px solid navy;
		margin-bottom:7px;
		
	}
	
	.passWrite tr{
		border-bottom:1px solid #ccc;
	}
	
	.passWrite tr td{
		
		padding:3px;
	}
	
	.btn{
			background-color:#eee;
		
		border:1px solid #eee;
		padding: 5px 10px;
	}
	
	.btnClass{
		text-align:center;
	}
	
	.input{
		width:200px;
		height:17px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:1px solid black;
		margin-left:10px;
	}
	
	.board_title{	
		font-size:17px;
		margin-bottom:7px;		
	}
	
	
	</style>
	<script language="javascript">
		function send_check(){
			var f = document.f;	
			
			 if( f.pwd.value.trim() == '' ){
				alert("비밀번호를 입력해야 합니다");
				f.pwd.focus();
				return;
			} 
			
			f.submit();
		}
		
		function fn_onload(){
			document.f.pwd.focus();
			
		}
	</script>

</head>
<body onload="fn_onload()">
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
		                <li><a href="BoardList">공연 후기 게시판</a>
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
	    
	    <div id="pass">  
			<aside>
        	</aside>
			<section>
				<div id="board">
				<form name="f" method="post" action="DeletePwd">
				<input type="hidden" name="aid" value="${param.str_aid}">
					<table class="board_title">
						<tr>
							<td>
								<b>password >></b>
							</td>				
						</tr>			
					</table>
					
					<table class="passWrite">					
				 		<tr>
							<th width="70" height="15"style="border-right:1px solid #ccc;">비밀번호</th> 
							<td colspan="3">
								<input name="pwd" type="password"  maxlength="20" required class="input">
							</td>
						</tr> 
					</table>
					
					<table class="btnClass">
						<tr>
							<td style="width:100px; align="center" colspan="3">
								<input type=button value="뒤로" OnClick="history.back();" class="btn">
								<input type=button value="삭제" OnClick="send_check();" class="btn">
								<input type=reset value="취소" class="btn">
							</td>
						</tr>	 
					</table>			
				</form>
				</div>
			</section>		
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