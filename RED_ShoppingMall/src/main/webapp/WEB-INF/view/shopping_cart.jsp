<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="main-container col1-layout">
	<div class="main container">
		<div class="col-main">
			<div class="cart wow bounceInUp animated">
				<div class="page-title">
					<h2>Shopping Cart</h2>
				</div>
				<div class="table-responsive">
					<input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
					<fieldset>
					<form name="cf" method="post">
						<table class="data-table cart-table" id="shopping-cart-table">
							<thead>
								<tr class="first last">
									<th rowspan="1">&nbsp;</th>
									<th rowspan="1"><span class="nobr">상품정보</span></th>
									<th rowspan="1"></th>
									<th colspan="1" class="a-center"><span class="nobr">판매가</span></th>
									<th class="a-center" rowspan="1">수량</th>
									<th colspan="1" class="a-center">구매예정가</th>
									<th class="a-center" rowspan="1">&nbsp;</th>
								</tr>
							</thead>
							<tfoot>
								<tr class="first last">
									<td class="a-right last" colspan="7"><button
											onclick="continueShopping()" class="button btn-continue"
											title="Continue Shopping" type="button">
											<span><span>쇼핑 계속하기</span></span>
										</button>
										<button class="button btn-update" title="Update Cart"
											value="update_qty" name="update_cart_action" type="submit"
											onclick="javascript:modify(${keyList.value.count});">
											<span><span>상품 수정하기</span></span>
										</button>
										<button id="empty_cart_button" class="button btn-empty"
											title="Clear Cart" value="empty_cart"
											name="update_cart_action" onclick="javascript:cleanCart()">
											<span><span>전체상품 삭제하기</span></span>
										</button></td>
								</tr>
							</tfoot>
							<tbody id="cleanCartTr">
								<c:if test="${myCart == null || myCart.myCartHashMap.size == 0}">
									<tr>
										<td colspan="6" align="center">카트에 담은 상품이 없습니다.</td>
									</tr>
								</c:if>
								
									<c:forEach var="keyList" items="${myCart.myCartHashMap}">
										<!--  맵 -->
										<tr class="first odd" id="${keyList.key}">
											<td class="image"><a class="product-image"
												title="${keyList.value.product.p_name}"
												href="product_detail?p_no=${keyList.value.product.p_no}">
													<img width="75" alt="Sample Product"
													src="${keyList.value.product.p_image}">
											</a></td>
											<td><h2 class="product-name">
													<a href="product_detail?p_no=${keyList.value.product.p_no}">${keyList.value.product.p_name}
													<br />
															<br /> <span style="font-size: 12px;">${keyList.value.product.p_detail }</span>
													</a>
												</h2></td>
											<td class="a-center"><a title="Edit item parameters"
												class="edit-bnt" href="#configure/id/15945/"></a></td>
											<td class="a-right"><span class="cart-price"> <span
													class="price">￦ <fmt:formatNumber
															value="${keyList.value.product.calculationPrice()}"
															pattern="#,###,###" type="currency" /></span>
											</span></td>
											<td class="a-center movewishlist"><input maxlength="12"
												class="input-text qty" title="Qty" size="4"
												value="${keyList.value.count}" name="cart[15945][qty]"></td>
											<td class="a-right movewishlist"><span
												class="cart-price"> <span class="price">￦ <fmt:formatNumber
															value="${keyList.value.productTotalPrice}"
															pattern="#,###,###" type="currency" /></span>
											</span></td>
											<td class="a-center last"><input type="hidden"
												value="${keyList.value.product.p_no }" id="p_no" name="p_no">
												<input type="hidden" value="${keyList.value.count }"
												id="p_count" name="p_count"> <input type="hidden"
												value="${keyList.key}" id="p_key" name="p_key"> <a
												class="button remove-item" title="Remove item"
												onclick="javascript:removeCartProduct('${keyList.key}')"><span><span>Remove
															item</span></span></a></td>
										</tr>
									</c:forEach>
							</tbody>
						</table>
						</form>
					</fieldset>
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
						<h3>SHOPPING CART TOTAL</h3>
						<div class="inner">
							<table id="shopping-cart-totals-table"
								class="table shopping-cart-table-total">
								<colgroup>
									<col>
									<col width="1">
								</colgroup>
								<tfoot>
									<tr>
										<td class="a-left" colspan="1"><strong>총 결제 금액</strong></td>
										<td class="a-right"><strong><span class="price"
												id="totalPriceSpan_sc">￦ <fmt:formatNumber
														value="${myCart == null? 0 : myCart.totalPrice+2500}"
														pattern="#,###,###" type="currency" /></span></strong></td>
									</tr>
								</tfoot>
								<tbody>
									<tr>
										<td class="a-left" colspan="1">총 판매가</td>
										<td class="a-right"><input type="hidden" name="totPrice"
											value="${ myCart.totalPrice}" /> <span class="price"
											id="subTotalPriceSpan">&nbsp;￦<fmt:formatNumber
													value="${myCart == null? 0 : myCart.totalPrice}"
													pattern="#,###,###" type="currency" /></span></td>
									</tr>
									<tr>
										<td class="a-left" colspan="1">배송비</td>
										<td class="a-right" align="right"><span class="price"
											id="subDeliveryFee" style="text-align: right">￦<fmt:formatNumber
													value="2500" pattern="#,###,###" type="currency" /></span></td>
									</tr>
								</tbody>
							</table>
							<ul class="checkout">
								<li>
									<button type="button" title="Proceed to Checkout"
										class="button btn-proceed-checkout" id="checkout_Cart">
										<span>전체상품 주문하기</span>
									</button>
								</li>


								<li><a href="#" title="Checkout with Multiple Addresses">기본
										배송지를 변경 혹은 추가하시려면?</a></li>
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
					<c:forEach var="arr" items="${pList }">
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
												<i class="icon-shopping-cart"></i><span>장바구니 담기</span>
											</div>
										</a> <a class="quick-view" href="quick_view.jsp">
											<div>
												<i class="icon-eye-open"></i><span>Quick view</span>
											</div>
										</a> <a class="add_to_compare" href="compare.jsp">
											<div>
												<i class="icon-random"></i><span>상품 비교</span>
											</div>
										</a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp">
											<div>
												<i class="icon-heart"></i><span>위시리스트</span>
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
				<!-- <div class="category-products">
            <ul id="crosssell-products-list" class="products-grid first odd">
              <li class="item col-md-3 col-sm-4 col-xs-6">
                <div class="col-item">
                  <div class="sale-label sale-top-right">Sale</div>
                  <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail.jsp"> <img alt="a" class="img-responsive" src="products-images/product1.jpg"> </a>
                    <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                      <div><i class="icon-shopping-cart"></i><span>장바구니 담기</span></div>
                      </a> <a class="quick-view" href="quick_view.jsp">
                      <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                      </a> <a class="add_to_compare" href="compare.jsp">
                      <div><i class="icon-random"></i><span>상품 비교</span></div>
                      </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                      <div><i class="icon-heart"></i><span>위시리스트</span></div>
                      </a> </div>
                  </div>
                  <div class="info">
                    <div class="info-inner">
                      <div class="item-title"> <a title=" Sample Product" href="product_detail.jsp"> Sample Product </a> </div>
                      item-title
                      <div class="item-content">
                        <div class="ratings">
                          <div class="rating-box">
                            <div class="rating" style="width:60%"></div>
                          </div>
                        </div>
                        <div class="price-box">
                          <p class="special-price"> <span class="price" id="product-price-902"> $45.00 </span> </p>
                          <p class="old-price"> <span class="price-sep">-</span> <span class="price" id="old-price-902"> $50.00 </span> </p>
                        </div>
                      </div>
                      item-content 
                    </div>
                    info-inner
                    
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </li>
              <li class="item col-md-3 col-sm-4 col-xs-6">
                <div class="col-item">
                  <div class="new-label new-top-right">New</div>
                  <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail.jsp"> <img alt="a" class="img-responsive" src="products-images/product1.jpg"> </a>
                    <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                      <div><i class="icon-shopping-cart"></i><span>장바구니 담기</span></div>
                      </a> <a class="quick-view" href="quick_view.jsp">
                      <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                      </a> <a class="add_to_compare" href="compare.jsp">
                      <div><i class="icon-random"></i><span>상품 비교</span></div>
                      </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                      <div><i class="icon-heart"></i><span>위시리스트</span></div>
                      </a> </div>
                  </div>
                  <div class="info">
                    <div class="info-inner">
                      <div class="item-title"> <a title=" Sample Product" href="product_detail.jsp"> Sample Product </a> </div>
                      item-title
                      <div class="item-content">
                        <div class="ratings">
                          <div class="rating-box">
                            <div class="rating" style="width:60%"></div>
                          </div>
                        </div>
                        <div class="price-box"> <span class="regular-price" id="product-price-146"> <span class="price">$422.00</span> </span> </div>
                      </div>
                      item-content 
                    </div>
                    info-inner
                    
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </li>
              <li class="item col-md-3 col-sm-4 col-xs-6">
                <div class="col-item">
                  <div class="sale-label sale-top-right">Sale</div>
                  <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail.jsp"> <img src="products-images/product1.jpg" class="img-responsive" alt="a"> </a>
                    <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                      <div><i class="icon-shopping-cart"></i><span>장바구니 담기</span></div>
                      </a> <a class="quick-view" href="quick_view.jsp">
                      <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                      </a> <a class="add_to_compare" href="compare.jsp">
                      <div><i class="icon-random"></i><span>상품 비교</span></div>
                      </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                      <div><i class="icon-heart"></i><span>위시리스트</span></div>
                      </a> </div>
                  </div>
                  <div class="info">
                    <div class="info-inner">
                      <div class="item-title"> <a title=" Sample Product" href="product_detail.jsp"> Sample Product </a> </div>
                      item-title
                      <div class="item-content">
                        <div class="ratings">
                          <div class="rating-box">
                            <div style="width:0%" class="rating"></div>
                          </div>
                        </div>
                        <div class="price-box"> <span id="product-price-895" class="regular-price"> <span class="price">$50.00</span> </span> </div>
                      </div>
                      item-content 
                    </div>
                    info-inner
                    
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </li>
              <li class="item col-md-3 col-sm-4 col-xs-6">
                <div class="col-item">
                  <div class="sale-label sale-top-right">Sale</div>
                  <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail.jsp"> <img src="products-images/product1.jpg" class="img-responsive" alt="a"> </a>
                    <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                      <div><i class="icon-shopping-cart"></i><span>장바구니 담기</span></div>
                      </a> <a class="quick-view" href="quick_view.jsp">
                      <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                      </a> <a class="add_to_compare" href="compare.jsp">
                      <div><i class="icon-random"></i><span>상품 비교</span></div>
                      </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                      <div><i class="icon-heart"></i><span>위시리스트</span></div>
                      </a> </div>
                  </div>
                  <div class="info">
                    <div class="info-inner">
                      <div class="item-title"> <a title=" Sample Product" href="product_detail.jsp"> Sample Product </a> </div>
                      item-title
                      <div class="item-content">
                        <div class="ratings">
                          <div class="rating-box">
                            <div style="width:50%" class="rating"></div>
                          </div>
                        </div>
                        <div class="price-box">
                          <p class="special-price"> <span class="price"> $45.00 </span> </p>
                          <p class="old-price"> <span class="price-sep">-</span> <span class="price"> $50.00 </span> </p>
                        </div>
                      </div>
                      item-content 
                    </div>
                    info-inner
                    
                    <div class="clearfix"> </div>
                  </div>
                </div>
              </li>
            </ul>
          </div> -->
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	$("#checkout_Cart").click(function() {
		// OrderController
		if(document.cf.p_no==null){
			return false;
		}
		document.cf.action='orderCart';
		document.cf.submit();
	});
</script>