<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- main-container -->
<div class="main-container col2-right-layout">
	<div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 wow bounceInUp animated">
				<div class="my-account">
					<div class="page-title">
						<br/>
						<h2> 주문 내역 </h2>
						
					</div>
					<div class="dashboard">
						<div class="welcome-msg">
							<strong>최근 1개월 간 주문하신 내역 입니다.</strong>
							<p> - 배송지변경 / 취소 / 교환 / 반품을 원하시는 고객님은 주문상세조회에서 확인해 주시기 바랍니다.</p>
						</div>
						<div class="recent-orders">
							<div class="title-buttons">
								<br/>
								<strong>최근 주문내역</strong> <a href="#">View All </a>
							</div>
							<div class="table-responsive">
								<table class="data-table" id="my-orders-table">
									<thead>
										<tr class="first last">
											<th>주문번호</th>
											<th>날짜</th>
											<th>주소</th>
											<th><span class="nobr">금액</span></th>
											<th>주문상태</th>
											<th>상세보기</th>
										</tr>
									</thead>
									<c:forEach var="arr" items="${ordList}">
										<tbody>
											<tr class="first odd">
												<td>${arr.o_no }</td>
												<td><fmt:formatDate value="${arr.o_date}"
														pattern="yyyy-MM-dd" /></td>
												<td> 
												<c:set var="size" value="${fn:length(arr.o_address)}"/>
												<c:if  test="${size > 7}">
													<c:set var="str1" value="${fn:substring(arr.o_address,0,7)}"/>
													${str1}...
												</c:if>
												 </td>
												<td><span class="price" style="color: #ff0000; font-weight: bold;">￦&nbsp;<fmt:formatNumber
															value="${arr.o_total }" pattern="00,000" type="currency" /></span></td>
												<td><em>${arr.o_status }</em></td>
												<td class="a-center last"><span class="nobr"> <a
														href="orderDetailView?o_no=${arr.o_no }">주문 상세</a> <span class="separator"> <!-- |</span> <a
													href="#">Reorder</a> -->
													</span></td>
											</tr>
											<!-- <tr class="last even">
											<td>500000001</td>
											<td>9/9/10</td>
											<td>pranali d</td>
											<td><span class="price">$1,397.99</span></td>
											<td><em>P"C:/Users/user/Desktop/polo-html/HTML/Variation1/red/dashboard.html"ending</em></td>
											<td class="a-center last"><span class="nobr"> <a
													href="#">View Order</a> <span class="separator">|</span> <a
													href="#">Reorder</a>
											</span></td>
										</tr> -->
										</tbody>
									</c:forEach>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
						
						<!-- <div class="box-account">
							<div class="page-title">
								<h2>Account Information</h2>
							</div>
							<div class="col2-set">
								<div class="col-1">
									<h5>Contact Information</h5>
									<a href="#">Edit</a>
									<p>
										pranali deshmukh<br> pranalid15@gmail.com<br> <a
											href="#">Change Password</a>
									</p>
								</div>
								<div class="col-2">
									<h5>Newsletters</h5>
									<a href="#">Edit</a>
									<p>You are currently not subscribed to any newsletter.</p>
								</div>
							</div>
							<div class="col2-set">
								<h4>Address Book</h4>
								<div class="manage_add">
									<a href="#">Manage Addresses</a>
								</div>
								<div class="col-1">
									<h5>Primary Billing Address</h5>
									<address>
										pranali d<br> aundh<br> tyyrt, Alabama, 46532<br>
										United States<br> T: 454541 <br> <a href="#">Edit
											Address</a>
									</address>
								</div>
								<div class="col-2">
									<h5>Primary Shipping Address</h5>
									<address>
										pranali d<br> aundh<br> tyyrt, Alabama, 46532<br>
										United States<br> T: 454541 <br> <a href="#">Edit
											Address</a>
									</address>
								</div>
							</div>
						</div> -->
					</div>
				</div>
			</section>
			<!-- side (left) menu -->
			<jsp:include page="side_menu.jsp" />
		</div>
	</div>
</div>
<!--End main-container -->
