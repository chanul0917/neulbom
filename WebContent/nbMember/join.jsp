<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	request.setCharacterEncoding("UTF-8");
	String contextPath = request.getContextPath();
%>
   
<%
// https://nameybs.tistory.com/37?category=810277
// 체크박스 체크한  <input>항목 얻고  체크한 값 얻어 사용

%>    
   
    
<%-- 문서에 작성되는 언어 타입을 HTML로 하여 이파일은 HTML이 적힌 파일 이다 라고 웹브라우저에 알려주는 코드
	 요약 : 문서 코드 타입.
 --%>    
<!doctype html>


<%--이 부분은 웹페이지에서 사용되는 언어는 영어다 ~ 라고 웹브라우저에 알려주는 역할을 하는 코드.  --%>
<html lang="en">
<head>

<%-- 웹브라우저에 다양한 문자가 꺠지지 않게 처리 하기 위해 문자처리 방식을 웹브라우저에 알려주는 코드 --%>
<meta charset="utf-8">

<%-- 
	반응형 웹페이지를 적용해 주는 부분입니다. 모바일이나 데스크탑은 해상도가 다른데,
	각 해상도에 맞춘 웹페이지를 보여주게 설정 하는 코드 입니다.
    content="width=device-width"  이부분은  각 기기의 해상도의 너비에 맞게  사이트 화면의 너비를 자동으로 맞추겠다~라는 뜻	                           
 --%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<title>회원가입</title>

<style type="text/css">

	#hp{
		margin-top: 15px;
		
	}
	
</style>

</head>
<body>

<form action="<%=contextPath%>/nb_member/joinPro.me" class="form">	
	<div style="height: 100px;"></div>
	<div class="container">
		<div class="row justify-content-lefts">
			<h2>이용약관</h2>
		</div>
		<div class="accordion" id="accordionExample">
			<div class="card">
				<div class="card-header" id="headingOne">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left" type="button"
							data-toggle="collapse" data-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							약관동의 내용1
						</button>
					</h2>
				</div>

				<div id="collapseOne" class="collapse" aria-labelledby="headingOne"
					data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingTwo">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed"
							type="button" data-toggle="collapse" data-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							약관동의 내용2
						</button>
					</h2>
				</div>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingThree">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed"
							type="button" data-toggle="collapse" data-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							약관동의 내용3
						</button>
					</h2>
				</div>
				<div id="collapseThree" class="collapse"
					aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center text-center">
			<div class="col-4">
				<input type="checkbox" name="agree" id="agree"> 위의 약관의 내용에 동의합니다.
				<p id="agreeInput"></p>
			</div>

		</div>		
		<div class="row" style="height: 25px;"></div>
		<div class="row justify-content-left">
			<h1>회원가입 </h1>
		</div>

			<div class="form-group">
				<div class="row">
					<div class="col-4">
						<label>아이디</label> 
						<input type="text" 
							   id="id" 
							   name="id"
							   class="form-control"
							   placeholder="가입할 아이디를 적어주세요.">
					    <p id="idInput"></p> 
					</div>
					<div class="col-2" style="margin-top: 30px;">
						<button id="checkBnt" type="button" class="btn btn-outline-secondary">중복체크</button>					
					</div>
					<div class="col-6">
						<label>비밀번호</label> 
						<input type="password" 
							   id="pass" 
							   name="pass"
							   class="form-control"
							   placeholder="영어,숫자,특수문자를 호함하여 8~20자로 작성하여주세요."> 
						<p id="passInput"></p>
					</div>						
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6">
						<label>닉네임</label> 
						<input type="text" 
							   id="nickname" 
							   name="nickname"
							   class="form-control"
							   placeholder="사용할 닉네임을 적어주세요".">
					    <p id="nickInput"></p> 
					</div>
						<div class="col-6">
						<label>비밀번호 확인</label> 
						<input type="password" 
							   id="checkpass" 
							   name="checkpass"
							   class="form-control"
							   placeholder="비밀번호를  재입력 하세요."> 
						<p id="checkpassInput"></p>
					</div>						
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6">
						<label>이름</label> 
						<input type="text" 
							   id="name" 
							   name="name"
							   class="form-control"
							   placeholder="가입할 이름을 적어주세요."> 
						<p id="nameInput"></p>
					</div>
					<div class="col-3" id="selbox">
						<label>생년월일</label><br>
							<select name="year" id="year" style="width:80px;height:38px;" >
							</select>년
							<select name="month" id="month" style="width:55px;height:38px;">
				       		 	<option selected>선택</option>    
							</select>월
							<select name="day" id="day" style="width:px;height:38px;">
        						<option selected>선택</option>  
							</select>일
						<p id="birthInput"></p>
					</div>					
					<div class="col-3" >
						<label>성별</label><br>
							<select name="gender" id="gender" style="width:90px;height:38px;">
								<option>선택</option>
								<option>남자</option>
								<option>여자</option>
							</select>
						<p id="genderInput"></p>
					</div>	
				</div>
			</div>					
			<div class="form-group">
				<div class="row">
					<div class="col-6">
						<%-- name속성값 address1 부터 ~~ address5 까지 입력되어 있는 주소를 모두 합쳐서 DB에 address열에  INSERT 하자. --%>
						<label>주소</label>
						<p id="addressInput"></p> 
						<input type="text" id="sample4_postcode" name="address1" class="form-control" placeholder="우편번호" readonly
								style="background-color: white;">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
						
						<input type="text" id="sample4_roadAddress" name="address2" placeholder="도로명주소" class="form-control" readonly
								style="background-color: white;">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="address3" class="form-control" readonly
								style="background-color: white;">
						
						<span id="guide" style="color:#999;display:none"></span>
						
						<input type="text" id="sample4_detailAddress" placeholder="상세주소" name="address4" class="form-control" >
						<input type="text" id="sample4_extraAddress" placeholder="참고항목"  name="address5" class="form-control" readonly
								style="background-color: white;">
						
					</div>
					<div class="col-6">
						<label>핸드폰번호</label> 
						<input type="text" 
							   id="hp" 
							   name="hp"
							   class="form-control"
							   placeholder="핸드폰번호를 '-'없이 적어주세요."> 
						<p id="hpInput"></p>
						
						<label>Email</label>
						<input type="email" 
							   id="email" 
							   name="email"
							   class="form-control"
							   placeholder="이메일을 적어주세요."> 
						<p id="emailInput"></p>
						<div class="col-6">
							<label>애완견을 키우고 계신가요?</label>
							<p id="petInput"></p> 
							<hr>
							네
						    <input type="radio" 
								   class="p_yes" 
								   name="pet"
								   value="yes"> 
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	   
						        아니오
						    <input type="radio" 
								   class="p_no" 
								   name="pet"
								   value="no"> 
						</div>
					
					</div>
						
<!-- 					<div class="col-3"> -->
<!-- 						<label>성별</label> -->
<!-- 						<p id="genderInput"></p>  -->
<!-- 						<hr>  -->
<!-- 						남성 -->
<!-- 					    <input type="radio"  -->
<!-- 							   class="gender"  -->
<!-- 							   name="gender" -->
<!-- 							   value="man">  -->
<!-- 						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	    -->
<!-- 					        여성 -->
<!-- 					    <input type="radio"  -->
<!-- 							   class="gender"  -->
<!-- 							   name="gender" -->
<!-- 							   value="woman">  -->
<!-- 					</div>					 -->
				</div>
			</div>
<!-- 			<div class="form-group"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-6"> -->
<!-- 						<label>Email</label>  -->
<!-- 						<input type="email"  -->
<!-- 							   id="email"  -->
<!-- 							   name="email" -->
<!-- 							   class="form-control" -->
<!-- 							   placeholder="이메일을 적어주세요.">  -->
<!-- 						<p id="emailInput"></p> -->
<!-- 					</div> -->
					
<!-- 					<div class="col-4"> -->
<!-- 						<label>연락처</label>  -->
<!-- 						<input type="tel"  -->
<!-- 							   id="tel"  -->
<!-- 							   name="tel" -->
<!-- 							   class="form-control" -->
<!-- 							   placeholder="연락처를 '-'없이 적어주세요.">  -->
<!-- 					   	<p id="telInput"></p>	 -->
<!-- 					</div> -->
<!-- 					<div class="col-6"> -->
<!-- 						<label>핸드폰번호</label>  -->
<!-- 						<input type="text"  -->
<!-- 							   id="hp"  -->
<!-- 							   name="hp" -->
<!-- 							   class="form-control" -->
<!-- 							   placeholder="핸드폰번호를 '-'없이 적어주세요.">  -->
<!-- 						<p id="hpInput"></p> -->
<!-- 					</div>												 -->
<!-- 				</div> -->
<!-- 			</div>				 -->
								
			<div class="row">
				<div class="col">
					<a href="#" onclick="check(); return false;" 
					   type="button"
						class="btn btn-primary btn-block">회원가입하기</a>
				</div>
			</div>
			<br /> <br /> <br />
		
	</div>
</form>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
		
	<%-- 카카오 우편번호 API --%>	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	
	    $(document).ready(function(){            
	        var now = new Date();
	        var year = now.getFullYear();
	        var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
	        var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
	        //년도 selectbox만들기               
	        for(var i = 1900 ; i <= year ; i++) {
	            $('#year').append('<option value="' + i + '">' + i + '</option>');    
	        }

	        // 월별 selectbox 만들기            
	        for(var i=1; i <= 12; i++) {
	            var mm = i > 9 ? i : "0"+i ;            
	            $('#month').append('<option value="' + mm + '">' + mm + '</option>');    
	        }
	        
	        // 일별 selectbox 만들기
	        for(var i=1; i <= 31; i++) {
	            var dd = i > 9 ? i : "0"+i ;            
	            $('#day').append('<option value="' + dd + '">' + dd+ '</option>');    
	        }
	  
            	$('#year').append('<option selected>선택</option>');    
	    
	    })
	    
	    
	    </script>	


	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

	<%--회원가입 유효성 체크  --%>
	<script src="<%=request.getContextPath()%>/js/join.js"></script>

	
	
</body>
</html>


