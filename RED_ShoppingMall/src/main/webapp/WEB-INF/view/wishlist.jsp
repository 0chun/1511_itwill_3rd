<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="main-container col2-right-layout">
	<div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 wow bounceInUp animated">
				<div class="my-account">
					<div class="page-title">
						<h2>My Wishlist</h2>
					</div>
					<div class="my-wishlist">
						<div class="table-responsive">
							<form method="post"
								action="#/wishlist/index/update/wishlist_id/1/"
								id="wishlist-view-form">
								<fieldset>
									<input type="hidden" value="ROBdJO5tIbODPZHZ" name="form_key">
									<table id="wishlist-table"
										class="clean-table linearize-table data-table">
										<thead>
											<tr class="first last">
												<th class="customer-wishlist-item-image"></th>
												<th class="customer-wishlist-item-info"></th>
												<!-- <th class="customer-wishlist-item-quantity">수량</th> -->
												<th class="customer-wishlist-item-price">가격</th>
												<th class="customer-wishlist-item-cart"></th>
												<th class="customer-wishlist-item-remove"></th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${empty pList}">
												<tr id="item_31" class="first odd">
													<td align="right">위시리스트가 비었습니다. 관심상품을 담아보세요.</td>
												</tr>
											</c:if>
											<c:if test="${!empty pList}">
												<c:forEach var="pArr" items="${pList}">
													<tr id="item_31" class="first odd" onload="">
														<td class="wishlist-cell0 customer-wishlist-item-image">
														<a title="Sample Product" href="product_detail?p_no=${pArr.p_no}" class="product-image"> 
														<img width="150" alt="Sample Product" src="${pArr.p_image }"></a></td>
														<td class="wishlist-cell1 customer-wishlist-item-info">
														<h3 class="product-name">
														<a title="Sample Product" href="product_detail?p_no=${pArr.p_no}">${pArr.p_name}</a>
														</h3>
														<div class="description std">
															<div class="inner">${pArr.p_detail}</div>
														</div> <!--     <textarea title="Comment" onblur="focusComment(this)" onfocus="focusComment(this)" cols="5" rows="3" name="description[31]"></textarea> --></td>
														<!-- <td data-rwd-label="Quantity" class="wishlist-cell2 customer-wishlist-item-quantity">
															<div class="cart-cell">
																<div class="add-to-cart-alt">
																	<input type="text" value="1" name="qty[31]" class="input-text qty validate-not-negative-number" pattern="\d*">
																</div>
															</div></td> -->
														<td data-rwd-label="Price" class="wishlist-cell3 customer-wishlist-item-price">
															<div class="cart-cell">
																<div class="price-box">
																	<span id="product-price-39" class="regular-price">
																		<span class="price">￦ <fmt:formatNumber value="${pArr.calculationPrice}" pattern="#,###" /></span>
																	</span>
																</div>
															</div></td>
														<td class="wishlist-cell4 customer-wishlist-item-cart">
															<div class="cart-cell">
																<button class="button btn-cart" onclick="quickCart(${pArr.p_no});" title="Add to Cart" type="button">
																	<span><span>Add to Cart</span></span>
																</button>
															</div>
															<p>
																<!-- <a href="#/wishlist/index/configure/id/31/" class="">Edit</a> -->
															</p></td>
														<td
															class="wishlist-cell5 customer-wishlist-item-remove last"><a
															class="remove-item" title="Clear Cart"
															onclick="return confirmRemoveWishlistItem();" <%-- href="avascript:quickWish(${pArr.p_no}) --%>
															href="removeItem?p_no=${pArr.p_no}"><span><span></span></span></a></td>
													</tr>
												</c:forEach>
											</c:if>
											<!--  <tr id="item_33" class="odd">
                          <td class="wishlist-cell0 customer-wishlist-item-image"><a title="Sample Product" href="product_detail.jsp" class="product-image"> <img width="150" alt="Sample Product" src="products-images/product1.jpg"> </a></td>
                          <td class="wishlist-cell1 customer-wishlist-item-info"><h3 class="product-name"><a title="Sample Product" href="product_detail.jsp">Sample Product</a></h3>
                            <div class="description std">
                              <div class="inner">A Black Multi-Coloured Printed Leggings for Women from Softwear.</div>
                            </div>
                            <textarea title="Comment" onblur="focusComment(this)" onfocus="focusComment(this)" cols="5" rows="3" name="description[31]"></textarea></td>
                          <td data-rwd-label="Quantity" class="wishlist-cell2 customer-wishlist-item-quantity"><div class="cart-cell">
                              <div class="add-to-cart-alt">
                                <input type="text" value="1" name="qty[31]" class="input-text qty validate-not-negative-number" pattern="\d*">
                              </div>
                            </div></td>
                          <td data-rwd-label="Price" class="wishlist-cell3 customer-wishlist-item-price"><div class="cart-cell">
                              <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                            </div></td>
                          <td class="wishlist-cell4 customer-wishlist-item-cart"><div class="cart-cell">
                              <button class="button btn-cart" onclick="addWItemToCart(31);" title="Add to Cart" type="button"><span><span>Add to Cart</span></span></button>
                            </div>
                            <p><a href="#/wishlist/index/configure/id/31/" class="">Edit</a></p></td>
                          <td class="wishlist-cell5 customer-wishlist-item-remove last"><a class="remove-item" title="Clear Cart" onclick="return confirmRemoveWishlistItem();" href="#/wishlist/index/remove/item/31/"><span><span></span></span></a></td>
                        </tr>
                        <tr id="item_32" class="last even">
                          <td class="wishlist-cell0 customer-wishlist-item-image"><a title="Sample Product" href="product_detail.jsp" class="product-image"> <img width="150" alt="Sample Product" src="products-images/product1.jpg"> </a></td>
                          <td class="wishlist-cell1 customer-wishlist-item-info"><h3 class="product-name"><a title="Sample Product" href="product_detail.jsp">Sample Product</a></h3>
                            <div class="description std">
                              <div class="inner">Blue colour self design casual shirt.</div>
                            </div>
                            <textarea title="Comment" onblur="focusComment(this)" onfocus="focusComment(this)" cols="5" rows="3" name="description[32]"></textarea></td>
                          <td data-rwd-label="Quantity" class="wishlist-cell2 customer-wishlist-item-quantity"><div class="cart-cell">
                              <div class="add-to-cart-alt">
                                <input type="text" value="1" name="qty[32]" class="input-text qty validate-not-negative-number" pattern="\d*">
                              </div>
                            </div></td>
                          <td data-rwd-label="Price" class="wishlist-cell3 customer-wishlist-item-price"><div class="cart-cell">
                              <div class="price-box"> <span id="product-price-2" class="regular-price"> <span class="price">$55.00</span> </span> </div>
                            </div></td>
                          <td class="wishlist-cell4 customer-wishlist-item-cart"><div class="cart-cell">
                              <button class="button btn-cart" onclick="addWItemToCart(32);" title="Add to Cart" type="button"><span><span>Add to Cart</span></span></button>
                            </div>
                            <p><a href="#/wishlist/index/configure/id/32/" class="">Edit</a></p></td>
                          <td class="wishlist-cell5 customer-wishlist-item-remove last"><a class="remove-item" title="Clear Cart" onclick="return confirmRemoveWishlistItem();" href="#/wishlist/index/remove/item/32/"><span><span></span></span></a></td>
                        </tr> -->
										</tbody>
									</table>
									<div class="buttons-set buttons-set2">
										<!-- <button class="button btn-share" title="Share Wishlist"
											name="save_and_share" type="submit">
											<span>위시리스트 공유하기</span>
										</button> -->
										<!-- <button class="button btn-add" onclick="addAllWItemsToCart()"
											title="Add All to Cart" type="button">
											<span>전부 카트에 담기</span>
										</button> -->
										<!-- <button class="button btn-update" title="Update Wishlist"
											name="do" type="submit">
											<span>위시리스트 업데이트</span>
										</button> -->
									</div>
								</fieldset>
							</form>
						</div>
					</div>
					<div class="buttons-set">
						<p class="back-link">
							<a href="#/customer/account/"><small>« </small>이전으로</a>
						</p>
					</div>
				</div>
			</section>
			<jsp:include page="side_menu.jsp" />
			<!-- <aside class="col-right sidebar col-sm-3 wow bounceInUp animated">
				<div class="block block-account">
					<div class="block-title">My Account</div>
					<div class="block-content">
						<ul>
							<li><a href="dashboard.jsp">My Account Home</a></li>
							<li><a href="#customer/account/edit/">내 정보 수정</a></li>
							<li><a href="#customer/address/">배송지 설정</a></li>
							<li><a href="#sales/order/history/">주문 상품 조회</a></li>
							<li><a href="#sales/billing_agreement/">결제 내역 확인</a></li>
							<li><a href="#review/customer/">내가 쓴 리뷰</a></li>
							<li><a href="#tag/customer/">태그</a></li>
							<li class="current"><a href="#wishlist/">위시리스트 보기</a></li>
							<li class="last"><a href="#newsletter/manage/">뉴스레터 구독</a></li>
						</ul>
					</div>
				</div>
				<div class="block block-compare">
					<div class="block-title ">유사한 상품 비교 (2)</div>
					<div class="block-content">
						<ol id="compare-items">
							<li class="item odd"><input type="hidden" value="2173"
								class="compare-item-id"> <a class="btn-remove1"
								title="Remove This Item" href="#"></a> <a href="#"
								class="product-name"> Sofa with Box-Edge Polyester Wrapped
									Cushions</a></li>
							<li class="item last even"><input type="hidden" value="2174"
								class="compare-item-id"> <a class="btn-remove1"
								title="Remove This Item" href="#"></a> <a href="#"
								class="product-name"> Sofa with Box-Edge Down-Blend Wrapped
									Cushions</a></li>
						</ol>
						<div class="ajax-checkout">
							<button type="submit" title="Submit"
								class="button button-compare">
								<span>상세 비교</span>
							</button>
							<button type="submit" title="Submit" class="button button-clear">
								<span>모두 지우기</span>
							</button>
						</div>
					</div>
				</div>
			</aside> -->
		</div>
	</div>
</div>