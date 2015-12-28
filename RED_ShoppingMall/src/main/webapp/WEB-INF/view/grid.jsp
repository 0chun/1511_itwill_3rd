<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- breadcrumbs -->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<ul>
				<li class="home"><a href="indexPage" title="Go to Home Page">Home</a></li>
				<li class=""><a href="productGrid?p_ccode=${temp_code*10}"><span>&mdash;›</span>${msg1}</a></li>
				<c:if test="${!empty msg2}">
					<li class="category13"><span>&mdash;›</span><strong>${msg2}</strong></li>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<!-- End breadcrumbs -->
<!-- Two columns content -->
<div class="main-container col2-left-layout">
	<div class="main container">
		<div class="row">
			<section
				class="col-main col-sm-9 col-sm-push-3 wow bounceInUp animated">
				<div class="category-description std">
					<div class="slider-items-products">
						<div id="category-desc-slider"
							class="product-flexslider hidden-buttons">
							<div class="slider-items slider-width-col1">

								<!-- Item -->
								<div class="item">
									<img alt="" src="images/women_banner.png">
									<div class="cat-img-title cat-bg cat-box">
										<!-- <h2 class="cat-heading">Category Banner</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p> -->
									</div>
								</div>
								<!-- End Item -->

								<!-- Item -->
								<!-- <div class="item">
									<a href="#x"><img alt="" src="images/women_banner1.png"></a>
								</div> -->
								<!-- End Item -->

							</div>
						</div>
					</div>
				</div>
				<div class="category-title">
					<h1>${msg2}</h1>
				</div>
				<div class="category-products">
					<div class="toolbar">
						<div class="sorter">
							<div class="view-mode">
								<c:choose>
									<c:when test="${p_search==null }">
										<span title="Grid" class="button button-active button-grid">Grid</span>
										<c:if test="${!empty msg2}">
											<a href="productList?p_ccode=${p_ccode}" title="List"
												class="button button-list">List</a>
										</c:if>
										<c:if test="${empty msg2}">
											<a href="productAllList" title="List"
												class="button button-list">List</a>
										</c:if>
									</c:when>
									<c:otherwise>
										<span title="Grid" class="button button-active button-grid">Grid</span>
										<c:if test="${!empty msg2}">
											<a
												href="searchProduct?p_ccode=${p_ccode}&p_search=${p_search }&flag=1"
												title="List" class="button button-list">List</a>
										</c:if>
										<c:if test="${empty msg2}">
											<a href="productAllList" title="List"
												class="button button-list">List</a>
										</c:if>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div id="sort-by">
							<label class="left">Sort By: </label>
							<ul>
								<li><a href="#">Position<span class="right-arrow"></span></a>
									<ul>
										<li><a href="#">Name</a></li>
										<li><a href="#">Price</a></li>
										<li><a href="#">Position</a></li>
									</ul></li>
							</ul>
							<a class="button-asc left" href="#"
								title="Set Descending Direction"><span
								class="glyphicon glyphicon-arrow-up"></span></a>
						</div>
						<div class="pager">
							<div id="limiter">
								<label>View: </label>
								<ul>
									<li><a href="#">15<span class="right-arrow"></span></a>
										<ul>
											<li><a href="#">20</a></li>
											<li><a href="#">30</a></li>
											<li><a href="#">35</a></li>
										</ul></li>
								</ul>
							</div>
							<div class="pages">
								<label>Page:</label>
								<ul class="pagination">
									<li><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="products-grid">
						<!-- 상품정보 시작 -->
						<c:forEach var="pArr" items="${pList}">
							<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
								<div class="col-item">
									<div class="sale-label sale-top-right">${pArr.p_discount }%</div>
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail?p_no=${pArr.p_no}"> <img
											src="${pArr.p_image }" class="img-responsive" alt="a" />
										</a>
										<div class="hover_fly">
											<a class="exclusive ajax_add_to_cart_button"
												href="javascript:quickCart(${pArr.p_no})"
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
											</a> <a class="addToWishlist wishlistProd_5"
												href="quickWish?p_no=${pArr.p_no}">
												<div>
													<i class="icon-heart"></i><span>위시리스트</span>
												</div>
											</a>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product"
													href="product_detail?p_no=${pArr.p_no}"> ${pArr.p_name}
												</a>
											</div>
											<!--item-title-->
											<div class="item-content">
												<div class="ratings">
													<div class="rating-box">
														<div class="rating${pArr.resultReview }"></div>
													</div>
												</div>
												<div class="price-box">
													<p class="special-price">
														<span class="price"> ￦&nbsp;<fmt:formatNumber
																value="${pArr.calculationPrice}" pattern="#,###"
																type="currency" />
														</span>
													</p>
													<p class="old-price">
														<span class="price-sep">-</span> <span class="price">
															￦&nbsp;<fmt:formatNumber value="${pArr.p_price}"
																pattern="#,###" type="currency" />
														</span>
													</p>
												</div>
											</div>
											<!--item-content-->
										</div>
										<!--info-inner-->

										<div class="clearfix"></div>
									</div>
								</div>
							</li>
						</c:forEach>
						<!-- 상품 정보 끝 -->
						<!-- 		<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="new-label new-top-right">New</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img
										src="products-images/product1.jpg" class="img-responsive"
										alt="a" />
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<span class="regular-price"> <span class="price">$422.00</span>
												</span>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<span class="regular-price"> <span class="price">$50.00</span>
												</span>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						
					 	<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<p class="special-price">
													<span class="price"> $45.00 </span>
												</p>
												<p class="old-price">
													<span class="price-sep">-</span> <span class="price">
														$50.00 </span>
												</p>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<p class="special-price">
													<span class="price"> $45.00 </span>
												</p>
												<p class="old-price">
													<span class="price-sep">-</span> <span class="price">
														$50.00 </span>
												</p>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="new-label new-top-right">New</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<span class="regular-price"> <span class="price">$422.00</span>
												</span>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<span class="regular-price"> <span class="price">$50.00</span>
												</span>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img alt="a"
										class="img-responsive" src="products-images/product1.jpg">
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<p class="special-price">
													<span class="price"> $45.00 </span>
												</p>
												<p class="old-price">
													<span class="price-sep">-</span> <span class="price">
														$50.00 </span>
												</p>
											</div>
										</div>
										item-content
									</div>
									info-inner

									<div class="clearfix"></div>
								</div>
							</div>
						</li>
						<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
							<div class="col-item">
								<div class="sale-label sale-top-right">Sale</div>
								<div class="product-image-area">
									<a class="product-image" title="Sample Product"
										href="product_detail.jsp"> <img
										src="products-images/product1.jpg" class="img-responsive"
										alt="a" />
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
												Sample Product </a>
										</div>
										item-title
										<div class="item-content">
											<div class="ratings">
												<div class="rating-box">
													<div class="rating"></div>
												</div>
											</div>
											<div class="price-box">
												<p class="special-price">
													<span class="price"> $45.00 </span>
												</p>
												<p class="old-price">
													<span class="price-sep">-</span> <span class="price">
														$50.00 </span>
												</p>
											</div>
										</div>
										item-content
									</div>
									info-inner
									<div class="clearfix"></div>
								</div>
							</div>
						</li>  -->
					</ul>
				</div>
			</section>
			<!-- side bar start -->
			<jsp:include page="categories.jsp" />
			<!-- side bar end -->
		</div>
	</div>
</div>
<!-- End Two columns content -->