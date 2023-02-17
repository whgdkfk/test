<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	section {
		width:1000px;
		height:1200px;
		margin:auto;
		font-family:sans-serif;
	}
	
	section table{
		margin-top:12px;
	}
	
	section input[type=text]{
		width:300px;
		height:28px;
		border:1px solid #ccc;
		outline:none;
	}
		
	section input[type=password]{
		width:300px;
		height:28px;
		border:1px solid #ccc;
		outline:none;
	}
		
	section input[type=submit]{
		width:336px;
		height:39px;
		background:#2ac1bc;
		border:1px solid #2ac1bc;
		border-radius:5px;
		color:white;
		font-size:16px;
		font-weight:900;
	}
		
	section #change{
		width:150px;
		height:40px;
		background:#ccc;
		border:1px solid #ccc;
		color:white;
		font-size:16px;
		font-weight:900;
	}
	
	section #zip{
		width:180px;
		height:35px;
	}
		
	section #zipbtn{
		width:113px;
		height:39px;
		vertical-align:bottom;
		background:#ccc;
		border:1px solid #ccc;
		color:white;
		font-size:16px;
		font-weight:900;
	}
	
	section #subbtn{
		width:500px;
		height:40px;
		background:#ccc;
		border:1px solid #ccc;
		color:white;
		font-size:16px;
		font-weight:900;
		border-radius:0px;
	}
	
	section #device {
		width:500px;
		margin:auto;
		margin-top:40px;
	}
	
	section input[type=checkbox]{
		width:20px;
		height:20px;
		border:1px solid #ccc;
	}
	
	section #logout {
		width:500px;
		margin:auto;
		margin-top:30px;
		font-size:14px;
		color:#8C8C8C;
		text-align:right;
		text-decoration:underline;
		color:#8C8C8C;
	}
</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	// 비밀번호 일치 여부 체크
	var pchk = 0;
	function pwd_check(){
		var pwd = document.mem.pwd.value;
		var pwd2 = document.mem.pwd2.value;
		
		if(pwd.length != 0){
			if(pwd == pwd2){
				document.getElementById("pmsg").innerText="비밀번호가 일치합니다.";
				document.getElementById("pmsg").style.color="blue";
				document.getElementById("pmsg").style.fontSize="12px";
				pchk = 1; // 비밀번호 일치 체크했으면 1
			}else{
				document.getElementById("pmsg").innerText="비밀번호가 일치하지 않습니다.";
				document.getElementById("pmsg").style.color="red";
				document.getElementById("pmsg").style.fontSize="12px";
				pchk = 0; // 비밀번호 일치 체크 안 했으면 0
			}
		}
	}
	
	// 우편번호 버튼 클릭 시 호출 함수명
	function juso_search(){
		new daum.Postcode({
			oncomplete: function(data) {
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	            	addr = data.roadAddress;
	          	} else { // 사용자가 지번 주소를 선택했을 경우(J)
	            	addr = data.jibunAddress;
	        	}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
		       	document.mem.zip.value = data.zonecode; // 우편번호
		       	document.mem.juso.value = addr;  // 주소
		       	// 커서를 상세주소 필드로 이동한다.
		        document.mem.juso_etc.focus();
			}
		}).open();
	}
	
	// 유효성 체크
	function form_check(){
		if(uchk == 0){
			alert("아이디 중복 체크하세요.");
			return false;
		}else if(pchk = 0){
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}else{
			return true;
		}
	}
</script>
</head>
<body>
	<section>
		<form name="mem" method="post" action="member_edit_ok" onsubmit="return form_check()">
		<table width="500" align="center">
			<caption><h2>내 정보 수정</h2></caption>
			<tr>
				<td colspan="2" align="center">
					<img id="profile" src="../resources/mybaemin/profile.png"> 
					<div><span style="color:#2ac1bc;font-weight:600;">고마운분</span>&nbsp;<img src="../resources/mybaemin/question.png" width="20"></div> <br>
					<input type="text" name="name" value="${ name }" placeholder="닉네임"> <p>
				</td>
			</tr>
			<tr height="40">
				<td width="200"><b>아이디</b></td>
				<td style="color:#8C8C8C;">${ userid }</td>
			</tr>
			<tr height="40">
				<td><b>현재 비밀번호</b></td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr height="40">
				<td><b>신규 비밀번호</b></td>
				<td><input type="password" name="pwd2" placeholder="10~20자 이내"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input id="change" type="button" value="변경"></td>
			</tr>
			<tr height="40">
				<td><b>휴대폰</b></td>
				<td><input type="text" name="phone" value="${ mvo.phone }" placeholder="010-0000-0000"></td>
			</tr>
			<tr height="40">
				<td><b>우편번호</b></td>
				<td>
					<input type="text" name="zip" placeholder="우편번호" id="zip" value="${ mvo.zip }" readonly>
					<input type="button" value="주소검색" onclick="juso_search()" id="zipbtn">
				</td>
			</tr>
			<tr height="40">
				<td><b>주소</b></td>
				<td><input type="text" name="juso" placeholder="주소" value="${ mvo.juso }" readonly></td>
			</tr>
			<tr height="40">
				<td><b>상세주소</b></td>
				<td><input type="text" name="juso_etc" placeholder="상세주소" value="${ mvo.juso_etc }"></td>
			</tr>
			<tr height="40">
				<td><b>이메일</b></td>
				<td><input type="text" name="email" placeholder="이메일" value="${ mvo.email }"></td>
			</tr>
			<tr height="50">
				<td colspan="2" align="center">
					<input type="submit" value="저장" id="subbtn">
				</td>
			</tr>
		</table>
		</form>
		
		<div id="device">
			<span><b>로그인 기기관리</b></span> <br>
			<span style="float:right;"><img src="../resources/mybaemin/next.png" width="25"></span>
			<span style="color:#8C8C8C;font-size:13px;">내 아이디로 로그인된 기기를 확인하고 관리할 수 있어요.</span>
		</div>
		
		<div id="device">
			<span><b>마케팅 정보 수신 동의</b></span> <br>
			<span style="color:#8C8C8C;font-size:13px;">이벤트 및 혜택에 대한 다양한 정보를 받으실 수 있어요.</span> <p>
			<span style="font-size:15px;">메일 수신동의</span> <span style="float:right"><input type="checkbox"></span> <p>
			<span style="font-size:15px;">SMS 수신동의</span> <span style="float:right"><input type="checkbox"></span>
		</div>
		
		<div id="logout">
			<span><a style="color:#8C8C8C;" href="../login/logout">로그아웃</a> | </span>
			<span><a style="color:#8C8C8C;" href="">회원탈퇴</a></span>
		</div>
	</section>
</body>
</html>