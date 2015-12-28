<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript">
	$(function() {
		$('#submitBnt').click(function() {
			if(a.firstname.value==''){
				alert("이름을 입력해주세요.");
				a.firstname.focus();
				return false;
			}
			if (!(namecheck())) {
				alert("이름 유형이 올바르지 않습니다.");
				a.firstname.focus();
				return false;
			}
			
			if(a.lastname.value==''){
				alert("이메일을 입력해주세요.");
				a.lastname.focus();
				return false;
			}
			if (!(emailcheck())) {
				alert("이메일 유형이 올바르지 않습니다.");
				a.lastname.focus();
				return false;
			}
			
			if(a.email.value==''){
				alert("휴대전화번호를 입력해주세요.");
				a.email.focus();
				return false;
			}
			if (!(phonecheck())) {
				alert("휴대전화번호 유형이 올바르지 않습니다.");
				a.email.focus();
				return false;
			}
			
			if(a.billing.value==''){
				alert("주소를 입력해주세요.");
				a.billing.focus();
				return false;
			}
			
			if (a.billing.value.length <=7) {
				var spanE = document.getElementById('addrMsg');
				spanE.innerHTML = "올바른 주소 형식을 입력해주세요.";
				alert("올바른 주소 형식을 입력해주세요.");
				a.billing.focus();
				return false;
			}
			
			a.action = 'orderComplate';
			a.method = 'POST';
			a.submit();
		})
	});
	function namecheck() {
		var spanE = document.getElementById('nameMsg');
		if (a.firstname.value == null || a.firstname.value == '') {
			spanE.innerHTML = '';
			return;
		}
		if (!(new RegExp(/^[가-힣]{2,5}$/)).test(a.firstname.value)) {
			spanE.innerHTML = "입력하신 이름 유형이 올바르지 않습니다.";
			a.firstname.focus();
			return false;
		} else {
			spanE.innerHTML = '';
			return true;
		}
	}
	function emailcheck() {
		var spanE = document.getElementById('emailMsg');
		if (a.lastname.value == null || a.lastname.value == '') {
			spanE.innerHTML = '';
			return;
		}
		if (!(new RegExp(
				/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i))
				.test(a.lastname.value)) {
			spanE.innerHTML = '입력하신 이메일 유형이 올바르지 않습니다.';
			return false;
		} else {
			spanE.innerHTML = '';
			return true;
		}
	}
	function phonecheck() {
		var spanE = document.getElementById('phoneMsg');
		if (a.email.value == null || a.email.value == '') {
			spanE.innerHTML = '';
			return;
		}
		if (!(new RegExp(/^\d{3}-\d{3,4}-\d{4}$/)).test(a.email.value)) {
			spanE.innerHTML = '입력하신 휴대전화번호 유형이 올바르지 않습니다.';
			return false;
		} else {
			spanE.innerHTML = '';
			return true;
		}
	}
</script>
<!-- breadcrumbs -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a title="Go to Home Page" href="index.jsp">Home</a><span>&mdash;›</span></li>
				<li class="category13"><strong>Contact Us</strong></li>
			</ul>
		</div>
	</div>
</div>
<!-- main-container -->
<form name="a">
	<div class="main-container col2-right-layout">
		<div class="main container">
			<div class="row">
				<section class="col-main col-sm-9 wow bounceInUp animated">
					<div class="page-title">
						<h2 style="margin-bottom: 2%;">주문하기</h2>
						<a href="" style="font-size: 11px; margin-bottom: 2%;">(할인률은
							자동 적용되어 계산됩니다)</a>
					</div>
					<table class="data-table" id="my-orders-table">
						<thead>
							<tr class="first last">
								<th style="text-align: right;">상품명</th>
								<th>&nbsp;</th>
								<th style="text-align: center;">옵션</th>
								<th style="text-align: center;">가격</th>
								<th style="text-align: center;">수량</th>
								<th style="text-align: center;"><span class="nobr">
										총 가격</span></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="pArr" items="${p_list }">
								<tr class="first odd">
									<input type=hidden name="p_no" value="${pArr.p_no }" />
									<td colspan="2" style="text-align: center;">${pArr.p_name }
										<input type="hidden" name="p_name" value="${pArr.p_name }">
									</td>
									<td style="text-align: center;">${pArr.p_color },
										${pArr.p_size } <input type="hidden" name="p_option"
										value="${pArr.p_color }_${pArr.p_size}">
									</td>
									<td style="text-align: center;"><span class="price">￦
											<fmt:formatNumber value="${pArr.calculationPrice }"
												pattern="#,###,###" type="currency" /> <input type="hidden"
											value="${pArr.calculationPrice}" name="p_price">
									</span></td>
									<td style="text-align: center;"><em>${pArr.p_count }
											<input type="hidden" name="p_count" value="${pArr.p_count }">
									</em></td>
									<td class="a-center last" style="text-align: center;"><span
										class="price">￦ <fmt:formatNumber
												value="${pArr.p_count*pArr.calculationPrice}"
												pattern="#,###,###" type="currency" /></span> <input type="hidden"
										name="totCalcPrice"
										value="${pArr.p_count*pArr.calculationPrice} }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr class="first last">
								<th colspan="3"></th>
								<th style="text-align: center;" colspan="2">총 가격 (배송비 2,500
									원 포함)</th>
								<th style="text-align: center;"><span class="price">￦
										<fmt:formatNumber value="${totPrice+2500 }"
											pattern="#,###,###" type="currency" /> 
											<input type="hidden"
										name="totPrice" value="${totPrice+2500 }" />
								</span></th>
							</tr>
						</tfoot>
					</table>
					<br />
					<div class="static-contain">
						<fieldset class="group-select">
							<ul>
								<li id="billing-new-address-form">
									<fieldset>
										<legend>New Address</legend>
										<input type="hidden" name="billing[address_id]" value=""
											id="billing:address_id">
										<ul>
											<li>
												<div class="customer-name"">
													<div class="input-boxxx name-firstname"
														style="margin-left: 0%;">
														<label for="billing:firstname"> 구매자 성함<span
															class="required">*</span><span id="nameMsg" style="color: red;">${MSG}</span></label> <br> <input type="text"
															id="billing:firstname" name="firstname"
															value="${sMember.m_name }" title="First Name"
															class="input-text " placeholder="성함">
													</div>
													<div class="input-boxxx name-lastname">
														<label for="billing:lastname"> 이메일 <span
															class="required">*</span><span id="emailMsg" style="color: red;">${MSG}</span>
														</label> <br> <input type="text" id="billing:lastname"
															name="lastname" value="${sMember.m_email }"
															title="Last Name" class="input-text"
															placeholder="예: Example@naver.com">
													</div>
												</div>
											</li>
											<li>
												<div>
													<div class="input-boxxx">
														<label for="billing:company">전화번호</label> <br> <input
															type="text" id="billing:company" name="company"
															value="" title="Company" class="input-text">
													</div>
													<div class="input-boxxx">
														<label for="billing:email">휴대전화 <span
															class="required">*</span><span id="phoneMsg" style="color: red;">${MSG}</span></label> <br> <input type="text"
															name="email" id="billing:email"
															value="${sMember.m_phone }" title="Email Address"
															class="input-text validate-email"
															placeholder="예: 010-1234-1234">
													</div>
												</div>
											</li>
											<li><label for="billing:street1">배송지 주소 <span
													class="required">*</span> <span id="addrMsg" style="color: red;">${MSG}</span></label> <br> <input type="text"
												title="Street Address" name="billing"
												id="billing:street1" value="${sMember.m_address }"
												class="input-text required-entry"><button type="button" title="우편번호찾기" class="button search"
												onclick="zipcode_view_userOrder()">
												<span> 우편번호 </span>
											</button></li>
											<li>
											<li class=""><label for="comment">주문 메세지</label> <br>
												<div class="" style="width:">
													<textarea name="comment" id="comment" title="Comment"
														class="required-entry input-text" cols="5" rows="3"></textarea>
												</div></li>
										</ul>
									</fieldset>
								</li>
								<li>
									<p class="require">
										<em class="required">* </em>필수입력란 입니다.
									</p> <input type="text" name="hideit" id="hideit" value="">
									<div class="buttons-set">
										<button type="submit" title="Submit" class="button submit"
											id="submitBnt">
											<span> 주문하기 </span>
										</button>
									</div>
								</li>
							</ul>
						</fieldset>
					</div>
				</section>
				<jsp:include page="side_menu.jsp" />
			</div>
		</div>
	</div>
</form>
<!--End main-container -->
