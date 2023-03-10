<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	@font-face {
		font-family: 'BMDOHYEON';
		src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	section {
		width: 1000px;
		height: 5000px;
		margin: auto;
		font-family: sans-serif;
	}
	
	section a {
		color: black;
	}
	/* section div {
		margin-top: 30px;
	} */
	section #tab {
		width: 1000px;
		height: 300px;
		position: relative;
		display: inline-block;
		font-family: 'BMDOHYEON';
		src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
		font-weight: normal;
		font-style: normal;
		color: black;
	}
	
	section #subtab {
		padding-left: 2px;
		position: absolute;
		/* background:white; */
	}
	
	section #tab #subtab li {
		list-style-type: none;
		float: left;
		margin-left: 20px;
		margin-top: 20px;
		padding-top: 15px;
		width: 140px;
		height: 35px;
		border: 1px solid #2ac1bc;
		text-align: center;
		font-size: 16px;
		color: black;
	}
	
	section #tab #subtab li:hover {
		background: #2ac1bc;
	}
	
	section #title {
		width: 1000px;
		/* height: 500px; */
		margin: auto;
	}
	
	section #title>#top1 {
		width: 400px;
		/* height: 400px; */
		margin: auto;
		/* background: #eee; */
		/* border: 1px solid black; */
	}
	
	section #title>#top2 {
		width: 1000px;
		height: 380px;
		margin: auto;
		position: relative;
		/* background: #abcdef; */
		text-align: center;
		font-size: 25px;
		padding-top: 10px;
	}
	
	section #pform {
		font-weight: 900;
	}
	
	section #content {
		width: 1000px;
		height: 600px;
		margin: auto;
		/* background:yellow; */
		margin-top: 40px;
	}
	
	section #delivery {
		margin-left: 20px;
		height: 200px;
		text-align: left;
		/* background: red; */
		font-size: 20px;
		font-weight: 500;
		padding-top: 20px;
	}
	
	section #takeout {
		margin-left: 20px;
		height: 400px;
		text-align: left;
		/* background: red; */
		font-size: 20px;
		font-weight: 500;
		padding-top: 20px;
	}
	
	section #btn {
		margin-top: 0px;
		font-size: 14px;
	}
	
	/* pcontent ??? ?????? */
	section #pmenu {
		width: 1000px;
		height: 50px;
		margin: auto;
	}
	
	section #pmenu #pul {
		padding-left: 0px;
		/* background: yellow; */
	}
	
	section #pmenu #pul #pli1 {
		float: left;
		list-style-type: none;
		width: 500px;
		height: 50px;
		border-bottom: 3px solid black;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		background: white;
		font-weight: 900;
		color: black;
		cursor:pointer;
	}
	
	section #pmenu #pul #pli2 {
		float: left;
		list-style-type: none;
		width: 500px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
		cursor:pointer;
	}
	
	section #pmenu2 {
		width: 1000px;
		height: 50px;
		margin: auto;
		margin-top: 500px;
		/* border:1px solid blue; */ 
	}
	
	section #pmenu2 #pul2 {
		padding-left: 0px;
		background: yellow;
		/* border:1px solid blue; */
	}
	
	section #pmenu2 #pul2 #pli3 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid black;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		background: white;
		font-weight: 900;
		color: black;
	}
	
	section #pmenu2 #pul2 #pli4 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
	}
	
	section #pmenu2 #pul2 #pli5 {
		float: left;
		list-style-type: none;
		width: 333px;
		height: 50px;
		border-bottom: 3px solid #ccc;
		border-top-width: 3px;
		margin-left: 0px;
		text-align: center;
		padding-top: 19px;
		color: #ccc;
		background: white;
	}
	
	section #menu, #info, #review {
		width: 1000px;
		height: 500px;
		/* border:1px solid red; */
	}
	
	section #cart_move {
		position: absolute;
		left: 20px;
		top: 220px;
		width: 180px;
		height: 60px;
		font-size: 12px;
		border: 1px solid purple;
		text-align: center;
		background: white;
		visibility: hidden;
	}
	
	section #cart_move #btn2 {
		display: inline-block;
		width: 120px;
		height: 20px;
		border: 1px solid black;
	}
	
	section #takeout, #info, #reivew {
		visibility: hidden;
	}
	
	#pmenu2 #pul2 li a {
		font-size: 26px;
		color: #ccc;
		font-weight: 500;
	}
	
	#pmenu2 #pul2 li.on a {
		color: black;
		font-weight: bold;
	}
	
	#pmenu2 #pul2 li.on {
		border-bottom: 3px solid black;
	}
	
	#pmenu2 .tabBox {
		margin-top: 35px;
		display: none;
		/* border:1px solid black;  */
	}
	
	#pmenu2 .tabBox li {
		list-style-type: none;
	}
	
	#pmenu2 .tabBox.on {
		display: block;
	}
	
	#pmenu2a .tabBox p {
		font-size: 14px;
		color: #555;
	}
	
	#pmenu2 .tabBox h3 {
		margin-bottom: 20px;
	}
	
	section .menu, .info, .review {
		text-align:left;
	}
	
	section #mul,#mul2,#mul3,#mul4,#mul5 {
		/* border:1px solid blue; */
		height:200px;
		cursor:pointer;
	}
	
	section #mli,#mli2,#mli3,#mli4,#mli5 {
		/* border:1px solid red; */
		display:inline-block;
		padding-top:20px;
	}
	
	section #mli_ex,#mli2_ex,#mli3_ex,#mli4_ex,#mli5_ex {
		/* background:yellow; */
		width:600px;
	}
	
	section #mul:hover,#mul2:hover,#mul3:hover,#mul4:hover,#mul5:hover {
		background:white;
		box-shadow:0px 3px 6px #ccc;
	}
	
	section #infoli {
		display:inline-block;
		/* border:1px solid red; */
		width:200px;
		text-align:left;
	}
	
	section #infoli2 {
		display:inline-block;
		/* border:1px solid blue; */
		width:700px;
		text-align:left;
	}
	
	section #boss {
		position:relative;
		/* border:1px solid red; */
		display:inline-block;
		margin-top:150px;
	}
	
	section #boss_one{
		position:absolute;
		display:inline-block;
		/* border:1px solid blue; */
		margin-left:10px;
		margin-top:185px;
	}
	
	/* section #bb {
		border:1px solid black;
	} */
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	function delivery(){
		document.getElementById("delivery").style.visibility="visible";
		document.getElementById("pli1").style.fontWeight="900";
		document.getElementById("pli1").style.color="black";
		document.getElementById("pmenu2").style.marginTop="0px";
		document.getElementById("pli1").style.borderBottom="3px solid black";
		document.getElementById("pli2").style.borderBottom="3px solid #ccc";
		document.getElementById("pli2").style.color="#ccc";
		document.getElementById("pli2").style.fontWeight="500";
		document.getElementById("takeout").style.visibility="hidden";
	}
	
	function takeout(){
		document.getElementById("takeout").style.visibility="visible";
		document.getElementById("pli2").style.fontWeight="900";
		document.getElementById("pli2").style.color="black";
		document.getElementById("pmenu2").style.marginTop="500px";
		document.getElementById("pli2").style.borderBottom="3px solid black";
		document.getElementById("pli1").style.borderBottom="3px solid #ccc";
		document.getElementById("pli1").style.color="#ccc";
		document.getElementById("pli1").style.fontWeight="500";
		document.getElementById("delivery").style.visibility="hidden";
	}
	
	function menu(){
		document.getElementById("pli3").style.borderBottom="3px solid black";
		document.getElementById("pli4").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.borderBottom="3px solid #ccc";
		document.getElementById("pli3").style.fontWeight="900";
		document.getElementById("pli3").style.color="black";
		document.getElementById("pli4").style.color="#ccc";
		document.getElementById("pli4").style.fontWeight="500";
		document.getElementById("pli5").style.color="#ccc";
		document.getElementById("pli5").style.fontWeight="500";
	}
	
	function info(){
		document.getElementById("pli4").style.borderBottom="3px solid black";
		document.getElementById("pli3").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.borderBottom="3px solid #ccc";
		document.getElementById("pli4").style.fontWeight="900";
		document.getElementById("pli4").style.color="black";
		document.getElementById("pli3").style.color="#ccc";
		document.getElementById("pli3").style.fontWeight="500";
		document.getElementById("pli5").style.color="#ccc";
		document.getElementById("pli5").style.fontWeight="500";
	}
	
	function review(){
		document.getElementById("pli5").style.borderBottom="3px solid black";
		document.getElementById("pli3").style.borderBottom="3px solid #ccc";
		document.getElementById("pli4").style.borderBottom="3px solid #ccc";
		document.getElementById("pli5").style.fontWeight="900";
		document.getElementById("pli5").style.color="black";
		document.getElementById("pli3").style.color="#ccc";
		document.getElementById("pli3").style.fontWeight="500";
		document.getElementById("pli4").style.color="#ccc";
		document.getElementById("pli4").style.fontWeight="500";
	}
	
	$(document).ready(function(){
		$("#pmenu2 #pul2 li a").on("click", function(){
			const num = $("#pmenu2 #pul2 li a").index($(this));
			$("#pmenu2 #pul2 li").removeClass("on");
			$("#pmenu2 .tabBox").removeClass("on");
			$('#pmenu2 #pul2 li:eq('+num+')').addClass("on");
			$('#pmenu2 .tabBox:eq('+num+')').addClass("on");
		});
	});
	
	function wish(my){
		var ck;
		if(my.src.indexOf("w1.png") == -1){
			ck = 1;
		}else{
			ck = 2;
		}
		
		/* ????????? ??? ?????? */
		<c:if test="${ userid != null }">
			<c:set var="chk" value="true"/>
		</c:if>
		/* ????????? ??? ??? ?????? */
		<c:if test="${ userid == null }">
			<c:set var="chk" value="false"/>
		</c:if>
			
		if(${chk}){
			var chk = new XMLHttpRequest();
	  		chk.onload = function(){
	  			// alert(chk.responseText);
	  			if(chk.responseText == "0"){
	  				if(ck == 1) // ???????????? ?????????
	  					my.src = "../resources/img/w1.png";
	  				else
	  					my.src = "../resources/img/w2.png";
	  			}else{
	  				alert("???????????? ?????? ????????? ?????????????????????.");
	  			}	
	  		}
	  		chk.open("get", "wish_add?fcode=${ fvo.fcode }&ck="+ck);
	  		chk.send();
		}else{
				location="../login/login";
		}
	}
	
	function menu_detail(){
		open("../excludes/menu_put", "", "width=500, height=620");
	}
</script>
</head>
<body>
	<section>
	<span id="tab">
		<ul id="subtab">
			<li><a href="../food/flist">??????</a></li>
			<li><a href="../food/flist">????????????</a></li>
			<li><a href="../food/flist?fcode=f00">1??????</a></li>
			<li><a href="../food/flist?fcode=f01">??????</a></li>
			<li><a href="../food/flist?fcode=f02">??????</a></li>
			<li><a href="../food/flist?fcode=f03">??????????????????</a></li>
			<li><a href="../food/flist?fcode=f04">????????????????????????</a></li>
			<li><a href="../food/flist?fcode=f05">??????</a></li>
			<li><a href="../food/flist?fcode=f06">??????</a></li>
			<li><a href="../food/flist?fcode=f07">??????????????????</a></li>
			<li><a href="../food/flist?fcode=f08">?????????</a></li>
			<li><a href="../food/flist?fcode=f09">???????????????</a></li>
			<li><a href="../food/flist?fcode=f10">??????</a></li>
			<li><a href="../food/flist?fcode=f11">?????????</a></li>
			<li><a href="../food/flist?fcode=f12">?????????</a></li>
			<li><a href="../food/flist?fcode=f13">???????????????</a></li>
			<li><a href="../food/flist?fcode=f14">???????????????</a></li>
			<li><a href="../food/flist?fcode=f15">????????????</a></li>
		</ul>
	</span>
	<div id="title">
		<div id="top1">
			<img src="../resources/food/${ fvo.fimg }" width="400">
		</div>
		<div id="top2">
			<!-- <div id="cart_move">
				<span>??????????????? ????????? ??????????????????.</span> <br> 
				<span id="btn2" onclick="location='cart_view'" style="cursor: pointer;">??????????????? ??????</span>
			</div> -->
			<form name="pform" id="pform" method="post" action="gumae">
				<div id="shop" style="font-size:26px;">${ fvo.shop }
					<span id="btn" style="clear:both;"> <!-- clear:both; float ????????? ?????? -->
						<c:if test="${ wcnt == 0 || wcnt == null }">
							<img style="cursor:pointer;" src="../resources/img/w1.png" width="32" valign="top" onclick="wish(this)">
						</c:if>
						<c:if test="${ wcnt != 0 && wcnt != null }">
							<img style="cursor:pointer;" src="../resources/img/w2.png" width="32" valign="top" onclick="wish(this)">
						</c:if>
					</span>
				</div>
				<c:set var="ss" value="3" />
				<div style="margin-top: 10px;">
					<c:forEach begin="1" end="${ fvo.star }">
						<img src="../resources/img/star1.png" width="30">
					</c:forEach>
					<c:forEach begin="1" end="${ 5-fvo.star }">
						<img src="../resources/img/star2.png" width="30">
					</c:forEach>
					${ fvo.star }.0
				</div>
			</form>

			<div id="pmenu">
				<ul id="pul">
					<li id="pli1" onclick="delivery()">????????????</li>
					<li id="pli2" onclick="takeout()">??????/????????????</li>
				</ul>
			</div>

			<table id="delivery" width="480" align="left">
				<tr>
					<td>??????????????????</td>
					<td><fmt:formatNumber value="${ fvo.minorder }"
							pattern="#,###" type="number" />???</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>????????????, ???????????????</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>${ fvo.baetime }??? ?????? ??????</td>
				</tr>
				<tr>
					<td>?????????</td>
					<td><fmt:formatNumber value="${ fvo.baeprice }"
							pattern="#,###" type="number" />???</td>
				</tr>
			</table>

			<table id="takeout" width="480" align="left">
				<tr>
					<td width="150">??????????????????</td>
					<td>??????</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>??????</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>10~20??? ?????? ??????</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>
						<span>${ fvo.juso }</span>
						<!-- ???????????? ?????? -->
						<div id="map" style="width:100%;height:250px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d18cc7f00fca7188536e93a7fe038bf2&libraries=services"></script>
						<script>
							var mapContainer = document.getElementById('map'), // ????????? ????????? div 
							    mapOption = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
							        level: 2 // ????????? ?????? ??????
							    };  
							
							// ????????? ???????????????    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							// ??????-?????? ?????? ????????? ???????????????
							var geocoder = new kakao.maps.services.Geocoder();
							
							// ????????? ????????? ???????????????
							geocoder.addressSearch('${ fvo.juso }', function(result, status) {
							
							    // ??????????????? ????????? ??????????????? 
							     if (status === kakao.maps.services.Status.OK) {
							
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							
							        // ??????????????? ?????? ????????? ????????? ???????????????
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });
							
							        // ?????????????????? ????????? ?????? ????????? ???????????????
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">????????????</div>'
							        });
							        infowindow.open(map, marker);
							
							        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
							        map.setCenter(coords);
							    } 
							});
						</script>
					</td>
				</tr>
				<tr>
					<td>????????????</td>
					<td>????????????</td>
				</tr>
			</table>

			<div id="pmenu2">
				<ul id="pul2">
					<li id="pli3" class="on" onclick="menu()"><a href="#!"><span>??????</span></a></li>
					<li id="pli4" onclick="info()"><a href="#!"><span>??????</span></a></li>
					<li id="pli5" onclick="review()"><a href="#!"><span>??????</span></a></li>
				</ul>
				<div class="tabBox on">
				<div class="menu">
					<h3 style="text-align:center;padding-top:150px;height:100px;">????????????</h3>
					<ul id="mul" onclick="menu_detail()">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m1_img }" width="215" height="140"></p></li>
						<li id="mli"><b>${ fvo.m1 }</b></li> <br>
						<li id="mli_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m1_ex }</li> <br>
						<li id="mli"><fmt:formatNumber value="${ fvo.m1_price }" pattern="#,###" type="number" />???</li> 
					</ul> 
					<ul id="mul2">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m2_img }" width="215" height="140"></p></li>
						<li id="mli2"><b>${ fvo.m2 }</b></li> <br>
						<li id="mli2_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m2_ex }</li> <br>
						<li id="mli2"><fmt:formatNumber value="${ fvo.m2_price }" pattern="#,###" type="number" />???</li>
					</ul>
					<ul id="mul3">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m3_img }" width="215" height="140"></p></li>
						<li id="mli3"><b>${ fvo.m3 }</b></li> <br>
						<li id="mli3_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m3_ex }</li> <br>
						<li id="mli3"><fmt:formatNumber value="${ fvo.m3_price }" pattern="#,###" type="number" />???</li>
					</ul>
					<ul id="mul4">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m4_img }" width="215" height="140"></p></li>
						<li id="mli4"><b>${ fvo.m4 }</b></li> <br>
						<li id="mli4_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m4_ex }</li> <br>
						<li id="mli4"><fmt:formatNumber value="${ fvo.m4_price }" pattern="#,###" type="number" />???</li>
					</ul>
					<ul id="mul5">
						<li style="float:right;padding-right:30px;"><p><img src="../resources/food/${ fvo.m5_img }" width="215" height="140"></p></li>
						<li id="mli5"><b>${ fvo.m5 }</b></li> <br>
						<li id="mli5_ex" style="color:#A6A6A6;font-size:16px;">${ fvo.m5_ex }</li> <br>
						<li id="mli5"><fmt:formatNumber value="${ fvo.m5_price }" pattern="#,###" type="number" />???</li>
					</ul> 
				</div>
				</div>
				<div class="tabBox">
					<div class="info">
						<c:if test="${ fvo.shop_sogae } != null">
						<h3 style=padding-top:150px;height:50px;">????????????</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.shop_sogae, replaceChar, "<br/>") }</p></li>
						</ul>
						</c:if>
						<h3 style=padding-top:150px;height:50px;">????????????</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">?????????</li>
							<li id="infoli2">${ fvo.shop }</li> <br>
							<li id="infoli">????????????</li>
							<li id="infoli2">${ fvo.hours }</li> <br>
							<li id="infoli">?????????</li>
							<li id="infoli2">${ fvo.holiday }</li> <br>
							<li id="infoli">????????????</li>
							<li id="infoli2">${ fvo.phone }</li> <br>
							<li id="infoli">????????????</li>
							<li id="infoli2" width="200">${ fvo.area }</li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">?????? ??? ??????</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.benefit, replaceChar, "<br/>") }</p></li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">?????? ??????</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">?????? ?????????</li>
							<li id="infoli2">${ fvo.recent_orders }+</li> <br>
							<li id="infoli">?????? ?????????</li>
							<li id="infoli2">${ fvo.total_orders }+</li> <br>
							<li id="infoli">???</li>
							<li id="infoli2">${ fvo.wish }</li>
						</ul>
						<h3 style=padding-top:150px;height:50px;">????????? ??????</h3>
						<ul style="padding-left:0px;">
							<li id="infoli">????????????</li>
							<li id="infoli2">${ fvo.boss }</li> <br>
							<li id="infoli">?????????</li>
							<li id="infoli2">${ fvo.shop }</li> <br>
							<li id="infoli">???????????????</li>
							<li id="infoli2">${ fvo.juso }</li> <br>
							<li id="infoli">?????????????????????</li>
							<li id="infoli2">${ fvo.regi_number }</li> <br>
						</ul>
					</div>
				</div>
				<div class="tabBox">
					<div class="review">
						<h3 style=padding-top:150px;height:50px;">????????? ??????</h3>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.boss_gongji, replaceChar, "<br/>") }</p></li>
						</ul>
						<c:if test="${ fvo.boss_one } != null">
						<div id="bb"><img id="boss" src="../resources/img/boss.PNG" width="100" height="90"><h3 id="boss_one">????????? ?????????</h3></div>
						<ul style="padding-left:0px;">
							<li><p>${ fn:replace(fvo.boss_one, replaceChar, "<br/>") }</p></li>
						</ul>
						</c:if>
						<h3 style=padding-top:150px;height:50px;">??????</h3>
						<ul style="padding-left:0px;">
							<li><p>?????????????????????</p></li>
							<li><p>?????????????????????</p></li>
							<li><p>?????????????????????</p></li>
							<li><p>?????????????????????</p></li>
							<li><p>?????????????????????</p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>