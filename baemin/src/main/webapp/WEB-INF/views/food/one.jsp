<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
		@font-face {
    		font-family: 'BMDOHYEON';
    		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMDOHYEON.woff') format('woff');
    		font-weight: normal;
    		font-style: normal;
		}
		
		section {
			width:1000px;
			height:800px;
			margin:auto;
			/* font-family:sans-serif; */
		}
		
		section table {
			margin-top:50px;
			border-spacing:20px;
			font-family:sans-serif;
			cursor:pointer;
		}
		
		section #table td {
			width:200px;
			height:300px;
			vertical-align:top;
			border:1px solid white;
			padding:3px;
		}
		
		section #table td div {
			width:200px;
		}
		
		section #table td:hover {
			box-shadow:0px 3px 6px #ccc;
		}
		
		/* section table #left {
			border-top:1px solid black;
			border-bottom:1px solid black;
			border-left:1px solid black;
			border-right:none;
		} 
		
		section table #right {
			border-top:1px solid black;
			border-bottom:1px solid black;
			border-left:none;
			border-right:1px solid black;
		} */
		
		section a {
			color:black;
		} 
		
		section #tab {
			width:1000px;
			height:300px;
			position:relative;
			display:inline-block;
		}
		
		section #subtab {
			padding-left:2px;
			position:absolute;
			/* background:white; */
		}
		
		section #tab #subtab li {
			list-style-type:none;
			float:left;
			margin-left:20px;
			margin-top:20px;
			padding-top:15px;
			width:140px;
			height:35px;
			border:1px solid #2ac1bc;
			text-align:center;
			font-size:16px;
			color:black;
		}
		
		section #tab #subtab li:hover {
			color:white;
			background:#2ac1bc;
		}
	</style>
	<script>
	
	</script>
</head>
<body>
	<section>
	<span id="tab">
		<ul id="subtab">
			<li><a href="../food/flist">??????</a></li>
			<li><a href="../food/flist">????????????</a></li>
			<li><a href="../food/one">1??????</a></li>
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
	<table id="table" align="center" width="990">
		<tr style="margin:10px;">
			<c:forEach items="${ flist }" var="fvo" varStatus="sts">
				<td width="180" onclick="location='fcontent?fcode=${ fvo.fcode }'">
					<div align="center" style="height:140px;"><img src="../resources/food/${ fvo.fimg }" width="215" height="140"></div>
					<div><b>${ fvo.shop }</b></div>
					<div>???????????? <fmt:formatNumber value="${ fvo.minorder }" type="number"/>???</div>
					<div>????????? <fmt:formatNumber value="${ fvo.baeprice }" type="number"/>???</div>
					<div>???????????? ${ fvo.baetime }???</div>
					<div>??????</div>
				</td>
				<c:if test="${ sts.count%4 == 0 }">
					</tr>
					<tr>
				</c:if>
			</c:forEach>
		</tr>
	</table>
	</section>
</body>
</html>