<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="main-container col1-layout">
	<div class="main container">
		<div class="col-main">
			<div class="cart wow bounceInUp animated">
				<div class="page-title">
					<h2>주문상세조회</h2>
					<br/>
				</div>
				<div class="table-responsive">
					<form method="post" action="#updatePost/">
						<input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
						<fieldset>
							<table class="data-table cart-table" id="shopping-cart-table">
								<thead>
									<tr class="first last">
										<th rowspan="1">&nbsp;</th>
										<th rowspan="1"><span class="nobr">상품정보</span></th>
										<th rowspan="1"></th>
										<th colspan="1" class="a-center"><span class="nobr">판매가</span></th>
										<th class="a-center" rowspan="1" width="50px">수량</th>
										<th colspan="1" class="a-center">결제금액</th>
										<th class="a-center" rowspan="1">&nbsp;</th>
									</tr>
								</thead>
								<tfoot>
									<tr class="first last">
										<td class="a-right last" colspan="7">
											<button onclick="continueShopping()"
												class="button btn-continue" title="Continue Shopping"
												type="button">
												<span><a href="indexPage">쇼핑 계속하기</a></span>
											</button>
											<button onclick="continueShopping()"
												class="button btn-continue" title="Continue Shopping"
												type="button" style="margin-left: 10px;">
												<span><a href="myAccount">주문 목록 가기</a></span>
											</button>
										</td>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="ord" items="${ordDList}">
										<c:set var="prdDto" value="${ord.od_prd }" />
										<tr class="first odd">
											<td class="image"><a class="product-image" title=""
												href="product_detail?p_no=${prdDto.p_no}"> <input
													type="hidden" name="p_no" value="${prdDto.p_no}" /> <img
													width="75" alt="Sample Product" src="${prdDto.p_image}"></a></td>
											<td><h2 class="product-name">
													<a href="product_detail?p_no=${prdDto.p_no }">
														<div style="display: block;">
															<span style="font-size: 14px; font-weight: bold;">${prdDto.p_name}</span>
															<br />
															<br /> <span style="font-size: 12px;">${prdDto.p_detail }</span>
														</div>
												</h2></td>
											<td class="a-center">
												<!-- <a title="Edit item parameters" class="edit-bnt" href="#configure/id/15945/"></a> -->
											</td>
											<td class="a-right"><span class="cart-price"> <span
													class="price">￦&nbsp;<fmt:formatNumber
															value="${prdDto.calculationPrice}" pattern="#,###" type="currency" /></span>
											</span></td>
											<td class="a-center movewishlist">
												<fmt:formatNumber
															value="${ord.od_amount}" pattern="#,###" type="currency" /></td>
											<td class="a-right movewishlist"><span
												class="cart-price"> <span class="price">￦<fmt:formatNumber
															value="${prdDto.calculationPrice*ord.od_amount}" pattern="#,###"
															type="currency" /></span>
											</span></td>
											<!--  카트 아이템 제거 -->
											<td class="a-center last">
												<%-- <a class="button remove-item" title="Remove item" href="orderDetatilListRemove?p_no=${prdDto.p_no }&o_no=${o_no }"><span><span>Remove item</span></span></a> --%>
											</td>
										</tr>
									</c:forEach>
									<%--  </c:if> --%>
								</tbody>
							</table>
						</fieldset>
					</form>
				</div>
			</div>
			<!-- BEGIN CART COLLATERALS -->
			<div class="cart-collaterals row  wow bounceInUp animated">
				<div class="col-sm-4">
					<div class="shipping">
						<div class="shipping-form">
							<form id="shipping-zip-form" method="post"
								action="#estimatePost/">
								<ul class="form-list">
									<li>
										<div class="input-box"></div>
									</li>
									<li>
										<div class="input-box"></div>
									</li>
									<li>
										<div class="input-box"></div>
									</li>
								</ul>
								<div class="buttons-set11"></div>
								<!--buttons-set11-->
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="discount">
						<form method="post" action="#couponPost/"
							id="discount-coupon-form"></form>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="totals">
						<h3>Order List Total</h3>
						<div class="inner">
							<table id="shopping-cart-totals-table"
								class="table shopping-cart-table-total">
								<colgroup>
									<col>
									<col width="1">
								</colgroup>
								<tfoot>
									<tr>
										<td class="a-left" colspan="1"><strong>총 판매가</strong></td>
										<td class="a-right"><span class="price">￦ <fmt:formatNumber
													value="${totPrice}" type="currency" pattern="#,###,###" />
										</span></td>
									</tr>
									<tr>
										<td class="a-left" colspan="1">배송비</td>
										<td class="a-right" align="right"><span class="price"
											id="subDeliveryFee" style="text-align: right">￦<fmt:formatNumber
													value="2500" pattern="#,###,###" type="currency" /></span></td>
									</tr>
									<tr>
										<td class="a-left" colspan="1"><strong>총 결제 금액</strong></td>
										<td class="a-right"><strong><span class="price">￦
													<fmt:formatNumber value="${totPrice+2500}" type="currency"
														pattern="#,###,###" />
											</span></strong></td>
									</tr>
								</tfoot>
								
								<tbody>
								</tbody>
							</table>
							<ul class="checkout">
								<li>
									<!-- <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout" onclick="#"><span>Proceed to Checkout</span></button> -->
								</li>
								<li><a href="#" title="Checkout with Multiple Addresses">기본 배송지를 변경 혹은 추가하시려면?</a></li>
								<br>
							</ul>
						</div>
						<!--inner-->
					</div>
					<!--totals-->
				</div>
				<!--cart-collaterals-->

			</div>
			<div class="crosssel wow bounceInUp animated">
				<div class="new_title center">
					<h2>이 상품과 함께 구매한 상품을 소개해드립니다!</h2>
				</div>
				<div class="category-products">
					<ul id="crosssell-products-list" class="products-grid first odd">
						<c:forEach var="arr" items="${rList }">
							<li class="item col-md-3 col-sm-4 col-xs-6">
								<div class="col-item">
									<div class="sale-label sale-top-right">Sale</div>
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail?p_no=${arr.p_no }"> <img alt="a"
											class="img-responsive" src="${arr.p_image }">
										</a>
										<div class="hover_fly">
											<a class="exclusive ajax_add_to_cart_button" href="#"
												title="Add to cart">
												<div>
													<i class="icon-shopping-cart"></i><span>Add to cart</span>
												</div>
											</a> <a class="quick-view" href="quick_view.jsp">
												<div>
													<i class="icon-eye-open"></i><span>Quick view</span>
												</div>
											</a> <a class="add_to_compare" href="compare.jsp">
												<div>
													<i class="icon-random"></i><span>Add to compare</span>
												</div>
											</a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp">
												<div>
													<i class="icon-heart"></i><span>Add to Wishlist</span>
												</div>
											</a>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													${arr.p_name } </a>
											</div>
											<div class="item-content">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating" style="width: 60%"></div>
													</div>
												</div>
												<div class="price-box">
													<p class="special-price">
														<span class="price" id="product-price-902"> ￦&nbsp;<fmt:formatNumber
																value="${arr.calculationPrice }" pattern="#,###,###"
																type="currency" /></span>
													</p>
													<p class="old-price">
														<span class="price-sep">-</span> <span class="price"
															id="old-price-902"> ￦&nbsp;<fmt:formatNumber
																value="${arr.p_price }" pattern="#,###,###"
																type="currency" /></span>
													</p>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>