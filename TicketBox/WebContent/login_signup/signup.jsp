<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Signup</title>
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
		
			
			#join_wrap{
				width:700px;
				margin:40px auto ;
			 
			 	/* padding:10px; */
				background-color:#eee;
				padding-top:40px;
				padding-left:40px;
				padding-bottom:40px;
			
			}
			
			#join_wrap .title{
				padding:50px 0 20px;/*위 좌우 아래  */
				font-size: 14px;
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
			
			.joinTable th, .joinTable td{
				padding:7px;
				box-sizing:border-box;/*box-sizing : border-box; 는 테두리를 포함하여 박스의 크기를 지정하는 것이다.  */
				border-bottom:1px solid #ddd;
				font-size:14px;
				
			}
			
			.joinTable th{
				text-align:center;
				background-color:gray;
				width:120px;
				font-weight:bold;
			
			}
			
			.joinTable td{
				width:540px;
				
			}
			
			.joinTable .first{/* joinTable 속성을 가진 태그 내부의 first 속성에 대한 스타일이다. */
				border-top:3px solid #333;
			}
			
			.joinTable .textForm{
				width:400px;
				height: 22px;
				border: 1px solid #ddd;
				border-radius:5px;
				padding: 0 10px;
				box-sizing: border-box;
			}
			
			/* 주소찾기 버튼 */
		 	.joinTable .btn{
				width: 80px;
				height: 27px;
				border:0;
				background-color:navy;
				border-radius: 5px;
				color: #fff;
				margin-top:7px
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
			
			.btn_area .btn_join{
				background-color:#091d53;
				color:#fff;
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
    
    	<div id="join_wrap">
    	<h2>회원가입</h2>
	
	    <form action="signup" method="POST"  name="userInfo" onsubmit="return checkValue()"><!--valid()submit될때 무조건 실행  -->
	        <fieldset>
	        	<legend class="title">*필수 입력정보 </legend>
		        <table class="joinTable">
		        		<caption>회원가입 선택 입력표</caption>
		        		
				        <tr>
				            <th class="first"><label for="id">아이디 </label></th>
				            <td><input type="text" name="id" id="id" required autofocus class="textForm" placeholder="로그인 아이디를 입력해주세요" onkeydown="inputIdChk()">
				        	<button type="button"  class="btn" onClick="openIdChk()" >중복확인</button>
				        	<input type="hidden" name="idDuplication" value="idUncheck" >
							</td>

				        </tr>
		       
			            <tr>
			            	<th><label for="pw">비밀번호 </label></th>
			            	<td><input type="password" name="pw" id="pw" class="textForm" 
			            	placeholder="숫자와 영문자 조합으로 8~20자리" required onchange="check_pw()">       	
			            	<br><span style="font-size:14px;" id="check1"></span>
			            	</td>	        		
			        	</tr>
			            <tr>
			            	<th><label for="pw2">비밀번호 확인 </label></th>
			            	<td><input type="password" name="pw2" id="pw2" class="textForm" 
			            	placeholder="숫자와 영문자 조합으로 8~20자리" required onchange="check_pw()">
			            	<br><span style="font-size:14px;" id="check"></span></td>       	        		
			        	</tr>
			         
			       
			       		<tr>
				            <th><label for="name">이름</label></th>
				            <td><input type="text" name="name" id="name" class="textForm" placeholder="이름을 입력 하세요" required></td>
			        	</tr>
		        	
			        	<tr>	        
			            	<th><label for="phone1">연락처</label></th>
				            <td><select name="phone1" id="phone1" style="border: 1px solid #ddd;" required>
				                <option value="010">010</option>
				                <option value="011">011</option>
				                <option value="012">012</option>
				                <option value="013">013</option>
				                <option value="014">014</option>
				                <option value="015">015</option>
				                <option value="016">016</option>
				                <option value="017">017</option>
				                <option value="018">018</option>
				                <option value="019">019</option>
				            	</select> -
			            		<input type="text" name="phone2" size="5" style="border: 1px solid #ddd; height:19px;" required> -
			            		<input type="text" name="phone3" size="5" style="border: 1px solid #ddd; height:19px;" required>
			        	    </td>
			        	</tr>
			        	
		        	
		         		 <tr>
				            <th><label for="address">주소 </label></th>
				            <td><input type="text" name="address" id="address" class="textForm" style="width:400px;"required readonly >
				        	<button type="button"  class="btn" onClick="goPopup(); " >주소검색</button><!--버튼을 클릭하면 summit이 되버려서 타입을 button으로 준다.  -->
				        	
				        </tr>
 				         
		         </table>
	       	</fieldset>
          	
          	 <fieldset>
	        	<legend class="title">*선택 입력정보 </legend>
		        <table class="joinTable">
		        		<caption>회원가입 선택 입력표</caption>
          	
          	    
          	    		<tr>
                    		
	                    	<th><label for="mail1">이메일</label></th>
	                    	<td>
	                        	<input type="text" name="mail1" maxlength="50" style="border: 1px solid #ddd; height:19px;">@
	                        	<select name="mail2" style="border: 1px solid #ddd;  height:19px;">
	                            	<option >naver.com</option>
	                            	<option>daum.net</option>
	                            	<option>gmail.com</option>
	                            	<option>nate.com</option>                        
	                        	</select>
	                    	</td>
                		</tr>
		        		
		        		
		        		
		        		<tr>
			        
			            	<th><label for="gender">성별</label></th>
			            	<td><input type="radio" name="gender" id="gender" value="male"> 남성
			            	<input type="radio" name="gender" value="female"> 여성</td>
		         		
		         		</tr>
		         		
          	    
          	    </table>
	       	</fieldset>
          	
          	
          	
          	<div class="btn_area"> 
            	<button type="submit" class="btn_join">회원가입</button>
            	<button type="reset" class="btn_join">취소</button>
          	</div> 
	    </form>
   	</div><!-- id="join_wrap -->
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


	
	
	
	<script>

	
	function check_pw(){   
		var pw = document.getElementById('pw').value;
		
		 if(!/^[a-zA-Z0-9]{8,20}$/.test(pw)){
			 document.getElementById('check1').innerHTML='비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다.';
             document.getElementById('check1').style.color='red';
		 }else{
			 document.getElementById('check1').innerHTML='사용가능 '
	         document.getElementById('check1').style.color='blue';
		 }
		
		if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
           if(document.getElementById('pw').value==document.getElementById('pw2').value){
               document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
               document.getElementById('check').style.color='blue';
           }
           else{
               document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
               document.getElementById('check').style.color='red';
           }
       }
	}
	 function checkValue(){
		 
		 var form = document.userInfo;
	 	 
		  if(form.idDuplication.value != "idCheck"){
             alert("아이디 중복체크를 해주세요.");
             return false;
         }
		     
		  // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
         if(form.pw.value != form.pw2.value ){
             alert("비밀번호를 동일하게 입력하세요.");
             return false;
         }
         var pw = document.getElementById('pw').value;
         if(!/^[a-zA-Z0-9]{8,20}$/.test(pw)){
             alert("비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다.");
             return false;
         }
		 
	 }
		
	  // 아이디 중복체크 화면open
   function openIdChk(){
   
       window.name = "parentForm";
       window.open("IdCheckForm.jsp",
               "chkForm", "width=500, height=300, resizable = no, scrollbars = no");    
   }

   // 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
   // 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
   // 다시 중복체크를 하도록 한다.
   function inputIdChk(){
       document.userInfo.idDuplication.value ="idUncheck";
   }
	
	
	
	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
		//document.domain = "abc.go.kr";
		
		function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open('jusoPopup.jsp','pop','width=570,height=420, scrollbars=yes, resizable=yes'); 
			/* onclick="window.open('Seat_selection/Seat_main.jsp','name','resizable=no width=1100 height=615');return false"> 예매하기</button> */
			
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}
		
		
		function jusoCallBack(roadFullAddr){
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				var addressEl = document.querySelector("#address");/*id=address  */
				
				addressEl.value=roadFullAddr;	
		}
	</script>



</body>
</html>