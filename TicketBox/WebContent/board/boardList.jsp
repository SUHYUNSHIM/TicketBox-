<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>목록</title>
<link href="../css/main1.css" rel="stylesheet" type="text/css">
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
		    
	 
	 
	  #list {
			           margin: 0px auto;
			            /*가로너비*/			            
			            width:1340px;			           
			            /*높이만큼 늘어남*/
			            overflow: hidden;
			            /*배경색상*/			      
			            font-size:10px;
			            font-family:맑은고딕; */           
		}	
	
	aside {
		             width:340; 
		            /*세로높이*/
		         	height: 630px; 		        	
		            /*왼쪽기준정렬*/
		            float: left;
		            /*높이만큼 보여짐*/
		            overflow: hidden;
		            /*상대위치*/
		            position: relative;
		            /*배경색상*/
		         /*    background-color: #1e1e1e; */
		               background-image: url(../image/shine4.PNG);
					background-size: 100%;	            
		       }
	
	section {
		           padding-top:70px;
		            /*가로너비*/
		            width: 800px;
		            /*세로높이*/
		            height: 560px;
		            /*오른쪽 기준정렬*/
		            float: right;
		            /*높이만큼 보여짐*/
		            overflow: hidden;
		            /*상대위치*/
		            position: relative;	             
		        }

	/*모든 테이블에 적용되는 속성   */
	table{	
	 	margin: 10px auto;  
		border-collapse: collapse; 	
		
	}
	
 	A:link {text-decoration:none; color:#000080}
	A:visited {text-decoration:none; color:#000080}
	A:active {text-decoration:none; color:#000080}
	A:hover {text-decoration:none; color:#529CFF} 

	/*표  */	
	.board_list{
		border-top:2px solid navy;
		border-bottom:2px solid navy;
		
	}
	.board_list tr{
		border-bottom:1px solid #ccc;
		
	}
		
	.board_list th, .board_list td{
		padding: 7px;
	
	}
	
	.board_list td{
		text-align:center;
	}
	
	.board_list tr td:nth-child(2){
		text-align:left;
		
	}
	
	.board_page {
		text-align:center;
		
	}
	
	.board_page .next{
		display : inline-block;
		font-size:12px;
		margin-left:7px;
		padding : 4px 7px;
		border-radius: 100px;
		background-color:#eee;
		border:1px solid #eee;
		
	}
	
	.board_page .paging{
		font-size:14px;
	}
	
	
	.board_title{
		font-size:17px;	
	}
	
	.btn{
		background-color:#eee;	
		border:1px solid #eee;
		padding: 5px 10px;
	
	}
	
	.input{
		width:300px;
		height:21px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:1px solid black;	
	}
	
	.input2{
		width:70px;
		height:25px;
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom:1px solid black;	
	}
	
	#table{
		padding-right:120px;		
	}
	
</style>
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
		    		    
		<div id="list">
			
			<aside>
			</aside>			
		
			<section>	
			
			<div id="table">
				<table class="board_title">
					<tr>
						<td>
							<b>솔직하고 생생한 후기를 남겨주세요</b>
						</td>				
					</tr>			
				</table>
							
			<%
					int total_cnt = (int)request.getAttribute("total_cnt");
					String str_c_page = (String)request.getAttribute("str_c_page");
					
					int c_page = Integer.parseInt(str_c_page);
					int list_num = 10;
					int start = 0;
					int t_page = 0; 	
			%>	
				
				<table  width=700 style="font-size:14px;">
						<tr><td>총 게시물수: <%=total_cnt%></td><td><p align=right>페이지:<%= c_page %></td></tr>
				</table>
								
				
				<table width=700>
					<tr>
						<td><input type=button value="글쓰기" OnClick="window.location='boardWrite.jsp'" class="btn"></td>
						<td>
							<form name=searchf method=post action="BoardList">
				   				<p align=right>
				   				<select style="height:27px;">
					            	<option >제목</option>
					        	</select>
				   				<input type=text name=dbsearch size=30  maxlength=30 class="input">
				   				<input type=submit value="검색" class="input2">
				   				</p>
				   			</form>
				   		</td>
					</tr>
				</table>
						
				<table  class="board_list"  width=700 style="font-size:14px;" >
						<tr>
							<th width=40><p align=center>번호</p></th>
							<th width=380><p align=center>제목</p></th>
							<th width=90><p align=center>작성자</p></th>
							<th width=120><p align=center>등록일</p></th>
							<th width=60><p align=center>조회수</p></th>
						</tr>

					<c:forEach var="vo" items="${allist}">
						<tr>
							<td width=40><p>${vo.aid}</p></td>
							<td width=380><p><a href="BoardView?str_aid=${vo.aid}" title="${vo.content}">${vo.subject}</p></td>
							<td width=90><p>${vo.name}</p></td>
							<td width=120 style="font-size:10px;"><p>${vo.date}</p></td>
							<td width=60><p>${vo.hits}</p></td>							
						</tr>						
					</c:forEach>
				</table><!--class="board_list"  -->
				
				
				<%
					if( ( total_cnt % list_num ) == 0 )
						t_page = total_cnt / list_num;
					else
						t_page = ( total_cnt / list_num ) + 1;
					
					int block_num = 5;
					int t_block = t_page / block_num;
					
					if( t_page % block_num != 0 ) 
						t_block++;
					
					int c_block = c_page / block_num;
					
					if( c_page % block_num != 0 )
						c_block++;
				%>
				
				<table class="board_page" width=700 >
					<tr>
						<td>
							<a href="#" class="next"> << </a>
							<a href="#" class="next"> < </a>
							<%
								for( int i=(c_block-1)*block_num+1; i<=c_block*block_num && i<=t_page; i++ ) { 
							%>
									<a href="BoardList?str_c_page=<%=i%>" class="paging"> 
							<% 
									if( c_page == i ) 
										out.print( "<b>" );
							%>
										[<%=i%>]
							<% 
									if( c_page == i ) 
										out.print( "</b>" );
									
							%>
									</a>
							<%
								} 
							%>
							<a href="#" class="next">></a>
							<a href="#" class="next">>></a>
						</td>
					</tr>
				</table>
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