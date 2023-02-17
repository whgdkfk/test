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
	section {
		width:1000px;
		/* height:600px; */
		margin:auto;
	}
	
	section div{
		margin-top:12px;
	}
</style>
<script>
	$(function() {
		var $imsi = $(".su");
		$(".su").spinner({
			min:1,
			max:10,
			
			// spinner의 값을 바꿀 때 실행되는 함수
			spin:function(e,ui){ 
				// price_cal(); // 체크된 상품의 가격을 계산하여 아래에 출력
				
				// 수량과 단가를 알아야 한다.
				// ui.value: 수량
				var n = $imsi.index(this);
				// alert($("section .pr").eq(n).value);
				// alert(document.getElementsByClassName("pr")[n].value);
				var pr = document.getElementsByClassName("pr")[n].value; // 단가
				var baesong = document.getElementsByClassName("baesong")[n].value;
				var price = parseInt(ui.value * pr) + parseInt(baesong); // 수량
				price = comma(price);
				document.getElementsByClassName("prin")[n].innerText = price + "원";
				
				// ajax를 통해 cart 테이블의 수량을 변경시킨다.
				var fcode = document.getElementsByClassName("fcode")[n].value;
				var su = ui.value;
				
				var chk = new XMLHttpRequest();
				chk.onload=function(){
					// alert(chk.responseText);
					if(chk.responseText == "1")
						alert("내부오류"); 
				}
				chk.open("get", "menu_su?fcode="+fcode+"&su="+su);
				chk.send();
			}
		});
	});
</script>
</head>
<body>
	<section>
		<c:forEach items="${ flist }" var="fvo">
		<table width="500" border="1">
			<tr>
				<td colspan="2" align="center">
					<img src="../resources/food/${ fvo.m1_img }" width="300" height="200">
				</td>
			</tr>
			<tr height="100">
				<td colspan="2" align="center">
					<b>${ fvo.m1 }</b>
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td align="right"><fmt:formatNumber value="${ fvo.m1_price }" pattern="#,###" type="number" />원</td>
			</tr>
			<tr>
				<td>수량</td>
				<td align="right"><input type="text" name="su" class="su" value="${ fvo.su }" readonly>개</td>
			</tr>
			<tr>
				<td>
					배달최소주문금액 <br>
					${ fvo.minorder }
				</td>
				<td>
					<input type="button" onclick="location='../food/fcontent'" value="<fmt:formatNumber value="${ fvo.m1_price*fvo.su }" pattern="#,###" type="number" />원 담기">
				</td>
			</tr>
		</table>
		</c:forEach>
	</section>
</body>
</html>