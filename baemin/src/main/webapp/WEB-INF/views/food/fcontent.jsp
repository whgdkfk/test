<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	
	/* pcontent 내 메뉴 */
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
		
		/* 로그인 한 상태 */
		<c:if test="${ userid != null }">
			<c:set var="chk" value="true"/>
		</c:if>
		/* 로그인 안 한 상태 */
		<c:if test="${ userid == null }">
			<c:set var="chk" value="false"/>
		</c:if>
			
		if(${chk}){
			var chk = new XMLHttpRequest();
	  		chk.onload = function(){
	  			// alert(chk.responseText);
	  			if(chk.responseText == "0"){
	  				if(ck == 1) // 삭제하고 왔으면
	  					my.src = "../resources/img/w1.png";
	  				else
	  					my.src = "../resources/img/w2.png";
	  			}else{
	  				alert("예상하지 않은 오류가 발생하였습니다.");
	  			}	
	  		}
	  		chk.open("get", "wish_add?fcode=${ fvo.fcode }&ck="+ck);
	  		chk.send();
		}else{
				location="../login/login";
		}
	}
</script>
</head>
<body>
	<section>
	<span id="tab">
		<ul id="subtab">
			<li><a href="../food/flist">검색</a></li>
			<li><a href="../food/flist">전체보기</a></li>
			<li><a href="../food/flist?fcode=f00">1인분</a></li>
			<li><a href="../food/flist?fcode=f01">한식</a></li>
			<li><a href="../food/flist?fcode=f02">분식</a></li>
			<li><a href="../food/flist?fcode=f03">카페ㆍ디저트</a></li>
			<li><a href="../food/flist?fcode=f04">돈까스ㆍ회ㆍ일식</a></li>
			<li><a href="../food/flist?fcode=f05">치킨</a></li>
			<li><a href="../food/flist?fcode=f06">피자</a></li>
			<li><a href="../food/flist?fcode=f07">아시안ㆍ양식</a></li>
			<li><a href="../food/flist?fcode=f08">중국집</a></li>
			<li><a href="../food/flist?fcode=f09">족발ㆍ보쌈</a></li>
			<li><a href="../food/flist?fcode=f10">야식</a></li>
			<li><a href="../food/flist?fcode=f11">찜ㆍ탕</a></li>
			<li><a href="../food/flist?fcode=f12">도시락</a></li>
			<li><a href="../food/flist?fcode=f13">패스트푸드</a></li>
			<li><a href="../food/flist?fcode=f14">프랜차이즈</a></li>
			<li><a href="../food/flist?fcode=f15">맛집랭킹</a></li>
		</ul>
	</span>
	<div id="title">
		<div id="top1">
			<img src="../resources/food/${ fvo.fimg }" width="400">
		</div>
		<div id="top2">
			<!-- <div id="cart_move">
				<span>장바구니에 메뉴를 추가했습니다.</span> <br> 
				<span id="btn2" onclick="location='cart_view'" style="cursor: pointer;">장바구니로 가기</span>
			</div> -->
			<form name="pform" id="pform" method="post" action="gumae">
				<div id="shop" style="font-size:26px;">${ fvo.shop }
					<span id="btn" style="clear:both;"> <!-- clear:both; float 기능을 해제 -->
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
					<li id="pli1" onclick="delivery()">배달주문</li>
					<li id="pli2" onclick="takeout()">포장/방문주문</li>
				</ul>
			</div>

			<table id="delivery" width="480" align="left">
				<tr>
					<td>최소주문금액</td>
					<td><fmt:formatNumber value="${ fvo.minorder }"
							pattern="#,###" type="number" />원</td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td>바로결제, 만나서결제</td>
				</tr>
				<tr>
					<td>배달시간</td>
					<td>${ fvo.baetime }분 소요 예상</td>
				</tr>
				<tr>
					<td>배달팁</td>
					<td><fmt:formatNumber value="${ fvo.baeprice }"
							pattern="#,###" type="number" />원</td>
				</tr>
			</table>

			<table id="takeout" width="480" align="left">
				<tr>
					<td width="150">최소주문금액</td>
					<td>없음</td>
				</tr>
				<tr>
					<td>이용방법</td>
					<td>포장</td>
				</tr>
				<tr>
					<td>픽업시간</td>
					<td>10~20분 소요 예상</td>
				</tr>
				<tr>
					<td>위치안내</td>
					<td>
						<span>${ fvo.juso }</span>
						<!-- 카카오맵 시작 -->
						<div id="map" style="width:100%;height:250px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d18cc7f00fca7188536e93a7fe038bf2&libraries=services"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 2 // 지도의 확대 레벨
							    };  
							
							// 지도를 생성합니다    
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('${ fvo.juso }', function(result, status) {
							
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
							
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });
							
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">가게위치</div>'
							        });
							        infowindow.open(map, marker);
							
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    } 
							});
						</script>
					</td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td>바로결제</td>
				</tr>
			</table>

			<div id="pmenu2">
				<ul id="pul2">
					<li id="pli3" class="on" onclick="menu()"><a href="#!"><span>메뉴</span></a></li>
					<li id="pli4" onclick="info()"><a href="#!"><span>정보</span></a></li>
					<li id="pli5" onclick="review()"><a href="#!"><span>리뷰</span></a></li>
				</ul>
				<div class="tabBox on">
				<div class="menu">
					<h3>메뉴</h3>
					<ul>
						<li><img src="../resources/food/${ fvo.m1_img }" width="215" height="140"></li>
						<li>${ fvo.m1 }</li>
						<li>${ fvo.m1_ex }</li>
						<li>${ fvo.m1_price }원</li>
					</ul>
					<ul>
						<li><img src="../resources/food/${ fvo.m2_img }" width="215" height="140"></li>
						<li>${ fvo.m2 }</li>
						<li>${ fvo.m2_ex }</li>
						<li>${ fvo.m2_price }원</li>
					</ul>
					<ul>
						<li><img src="../resources/food/${ fvo.m3_img }" width="215" height="140"></li>
						<li>${ fvo.m3 }</li>
						<li>${ fvo.m3_ex }</li>
						<li>${ fvo.m3_price }원</li>
					</ul>
					<ul>
						<li><img src="../resources/food/${ fvo.m4_img }" width="215" height="140"></li>
						<li>${ fvo.m4 }</li>
						<li>${ fvo.m4_ex }</li>
						<li>${ fvo.m4_price }원</li>
					</ul>
					<ul>
						<li><img src="../resources/food/${ fvo.m5_img }" width="215" height="140"></li>
						<li>${ fvo.m5 }</li>
						<li>${ fvo.m5_ex }</li>
						<li>${ fvo.m5_price }원</li>
					</ul>
				</div>
				</div>
				<div class="tabBox">
					<div class="info">
						<h3>가게소개</h3>
						<ul>
							<li><p>${ fvo.shop_sogae }</p></li>
						</ul>
						<h3>영업정보</h3>
						<ul>
							<li>상호명: ${ fvo.shop }</li>
							<li>운영시간: ${ fvo.hours }</li>
							<li>휴무일: ${ fvo.holiday }</li>
							<li>전화번호: ${ fvo.phone }</li>
							<li>배달지역: ${ fvo.area }</li>
						</ul>
						<h3>안내 및 혜택</h3>
						<ul>
							<li><p>${ fvo.benefit }</p></li>
						</ul>
						<h3>가게 통계</h3>
						<ul>
							<li>최근 주문수: ${ fvo.recent_orders }+</li>
							<li>전체 리뷰수: ${ fvo.total_orders }+</li>
							<li>찜: ${ fvo.wish }</li>
						</ul>
						<h3>사업자 정보</h3>
						<ul>
							<li>대표자명: ${ fvo.boss }</li>
							<li>상호명: ${ fvo.shop }</li>
							<li>사업자주소: ${ fvo.juso }</li>
							<li>사업자등록번호: ${ fvo.regi_number }</li>
						</ul>
					</div>
				</div>
				<div class="tabBox">
					<div class="review">
						<h3>사장님 공지</h3>
						<ul>
							<li><p>${ fvo.boss_gongji }</p></li>
						</ul>
						<h3>사장님 한마디</h3>
						<ul>
							<li><p>${ fvo.boss_one }</p></li>
						</ul>
						<h3>리뷰</h3>
						<ul>
							<li><p>음식이맛있어요</p></li>
							<li><p>음식이맛있어요</p></li>
							<li><p>음식이맛있어요</p></li>
							<li><p>음식이맛있어요</p></li>
							<li><p>음식이맛있어요</p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>