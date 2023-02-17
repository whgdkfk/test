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
		height:1000px;
		margin:auto;
		font-family:sans-serif;
	}
	
	section table{
		margin-top:12px;
	}
	
	#gray {
		width:400px;
		margin:auto;
		margin-top:30px;
		padding-top:15px;
		text-align:center;
		border:1px solid #F6F6F6;
		background:#F6F6F6;
	}
	
	#bmart {
		width:400px;
		margin:auto;
		margin-top:30px;
		text-align:center;
		color:#8C8C8C;
		font-size:15px;
	}
</style>
<script>
		// window.open => window는 생략 가능
		// open("새창에 띄울 문서명", "타겟명", "띄울 창의 크기"): 새로운 창에 문서를 띄우는 명령어
		// 새창에서 넘어가는 문서가 없을 경우 타겟명을 ""으로 두어도 된다.
	function winopen(){
		a = open("../excludes/baemin_vip", "", "width=500,height=1000");
	}
</script>
</head>
<body>
	<section>
		<table width="500" align="center">
			<caption><h2>등급별 혜택 안내</h2></caption>
			<tr height="50">
				<td colspan="2" align="right">
					<b style="text-decoration:underline;cursor:pointer;" onclick="winopen()">배민 VIP란?</b>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<img src="../resources/mybaemin/general.png">
				</td>
			</tr>
			<tr height="100">
				<td colspan="2" align="center">
					<p> <b><span style="color:#2ac1bc;">${ name }</span>님은 <p>
					이번 달 <span style="color:#2ac1bc;">고마운분</span>입니다</b>
				</td>
			</tr>
		</table>
		
		<div id="gray">
			<b><span style="color:#2ac1bc;">5번</span></b> 더 주문하면 <p>
			다음 달 배민 VIP가 됩니다 <p>
			<span style="font-size:15px;color:#747474;">2월 누적 주문: 0회</span>
		</div>
		
		<div id="bmart">B마트 주문은 월말에 합산되어 등급에 반영됩니다.</div>
	</section>
</body>
</html>