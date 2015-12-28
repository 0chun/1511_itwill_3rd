<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('option').click(function(){
			var msg = this.value;
			document.b.adrTemp.value=msg;
		})
	});
</script>
<html>
<head>
<link rel="stylesheet" href="css/customScript.css" type="text/css">
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
	<form name="b">
	<input type="hidden" name="flag" value="${flag }"/>
		<div id="zipdiv" class="pop-layer">
			<div class="pop-container">
				<div class="pop-conts">
						<table class="headtd">
							<tr>
							<td>
								<img alt="" src="images/logo.png" >
							</td>
							</tr>
						</table>
					<ul id="uli">
						<li><br> <span id="spanA"> ${m_address} 우편번호 검색
								결과</span> <br> 
						<select size="10" class="zipselect" name="zipselect">
								<c:forEach var="zip" items="${zList}">
									<option name="zip" value="${zip.zipcode}&nbsp;${zip.sido}&nbsp;${zip.gugun}&nbsp;${zip.dong}&nbsp;${zip.bldg}&nbsp;&nbsp;${zip.bunji}">
									${zip.sido}&nbsp;${zip.gugun}&nbsp;${zip.dong}&nbsp;${zip.bldg}&nbsp;&nbsp;${zip.bunji}</option>
								</c:forEach>
						</select> 
							<div class="btn-r">
								<input type="text" name="adrTemp" class="inputAdd"
									value="${keyword}" placeholder="동을 입력하세요. (예: 압구정동, 2글자 이상 입력)">
								<button type="button" class="rbtn" onclick="researchzipcode()">
									<span>검색</span>
								</button>

								<input type="text" name="adr" class="inputAdd" value=""
									placeholder="상세주소를 입력해주세요.">
								<button type="button" class="ibtn" onclick="addzipcode(document.b.flag.value)">
									<span>등록</span>
								</button>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</form>
</body>

</html>