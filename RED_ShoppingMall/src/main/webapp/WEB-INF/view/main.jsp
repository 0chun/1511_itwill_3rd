<%@page import="com.itwill.red.service.ReviewService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Slider -->
<div id="magik-slideshow" class="magik-slideshow">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-sm-12 col-md-8 wow bounceInUp animated">
				<div id='rev_slider_4_wrapper'
					class='rev_slider_wrapper fullwidthbanner-container'>
					<div id='rev_slider_4' class='rev_slider fullwidthabanner'>
						<ul>
							<li data-transition='random' data-slotamount='7'
								data-masterspeed='1000' data-thumb='images/slider_img_2.jpg'><img
								src='images/slide-img1.jpg' data-bgposition='left top'
								data-bgfit='cover' data-bgrepeat='no-repeat' alt="banner" />
								<div class='tp-caption ExtraLargeTitle sft  tp-resizeme '
									data-x='45' data-y='30' data-endspeed='500' data-speed='500'
									data-start='1100' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 2; white-space: nowrap;'>Exclusive of
									designer</div>
								<div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='45'
									data-y='70' data-endspeed='500' data-speed='500'
									data-start='1300' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none' f
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 3; white-space: nowrap;'>Black-Friday Ư����</div>
								<div class='tp-caption sfb  tp-resizeme ' data-x='45'
									data-y='360' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap;'>
									<a href='#' class="view-more">VIEW MORE</a> <a href='#'
										class="buy-btn">BUY NOW</a>
								</div>
								<div class='tp-caption Title sft  tp-resizeme ' data-x='45'
									data-y='130' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Power2.easeInOut'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap;'>
									<h5>
										<strong>LF Women :JILL STUART/ MOGG / DAKS LADIES </strong>
									</h5>
									15 F/W 30~20% ��������!<br /> �ƿ﷿ �ܿ� �߰��԰�, 3���� �̻� ������
								</div>
								<div class='tp-caption Title sft  tp-resizeme ' data-x='45'
									data-y='400' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Power2.easeInOut'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap; font-size: 11px'>
									<strong>����� ���ϴ� �м��� ��� ��! POLO.,co �ܵ� Ư����</strong>
								</div></li>
							<li data-transition='random' data-slotamount='7'
								data-masterspeed='1000' data-thumb='images/slider_img_2.jpg'
								class="black-text"><img src='images/slide-img2.jpg'
								data-bgposition='left top' data-bgfit='cover'
								data-bgrepeat='no-repeat' alt="banner" />
								<div class='tp-caption ExtraLargeTitle sft  tp-resizeme '
									data-x='45' data-y='30' data-endspeed='500' data-speed='500'
									data-start='1100' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 2; white-space: nowrap;'>Super Hot</div>
								<div class='tp-caption LargeTitle sfl  tp-resizeme ' data-x='45'
									data-y='70' data-endspeed='500' data-speed='500'
									data-start='1300' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 3; white-space: nowrap;'>
									<font color="white">Go Lightly</font>
								</div>
								<div class='tp-caption sfb  tp-resizeme ' data-x='45'
									data-y='360' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Linear.easeNone'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap;'>
									<a href='#' class="view-more">View More</a> <a href='#'
										class="buy-btn">Buy Now</a>
								</div>
								<div class='tp-caption Title sft  tp-resizeme ' data-x='45'
									data-y='130' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Power2.easeInOut'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap;'>
									In augue urna, nunc, tincidunt, augue,<br> augue facilisis
									facilisis.
								</div>
								<div class='tp-caption Title sft  tp-resizeme ' data-x='45'
									data-y='400' data-endspeed='500' data-speed='500'
									data-start='1500' data-easing='Power2.easeInOut'
									data-splitin='none' data-splitout='none'
									data-elementdelay='0.1' data-endelementdelay='0.1'
									style='z-index: 4; white-space: nowrap; font-size: 11px'>Lorem
									ipsum dolor sit amet, consectetur adipiscing elit.</div></li>
						</ul>
						<div class="tp-bannertimer"></div>
					</div>
				</div>
			</div>
			<aside class="col-xs-12 col-sm-12 col-md-4 wow bounceInUp animated">
				<div class="RHS-banner">
					<div class="add">
						<a href="#"><img alt="banner-img" src="images/97_1.jpg"
							height="380"></a>
						<div class="overlay">
							<a class="info" href="#">Learn More</a>
						</div>
					</div>
				</div>
			</aside>
		</div>
	</div>
</div>
<!-- end Slider -->

<!-- header service -->

<div class="container">
	<div class="header-service wow bounceInUp animated">
		<div class="col-lg-3 col-sm-6 col-xs-3">
			<div class="content">
				<div class="icon-truck">&nbsp;</div>
				<span class="hidden-xs">7���� �̻� ���Ž� <strong>������!</strong></span>
			</div>
		</div>
		<div class="col-lg-3 col-sm-6 col-xs-3">
			<div class="content">
				<div class="icon-support">&nbsp;</div>
				<span class="hidden-xs"><strong>���� ���� ����</strong> </span>
			</div>
		</div>
		<div class="col-lg-3 col-sm-6 col-xs-3">
			<div class="content">
				<div class="icon-money">&nbsp;</div>
				<span class="hidden-xs"><strong>3�� �� ȯ�� ����!</strong> </span>
			</div>
		</div>
		<div class="col-lg-3 col-sm-6 col-xs-3">
			<div class="content">
				<div class="icon-dis">&nbsp;</div>
				<span class="hidden-xs"> 15���� �̻� ���Ž� <strong>5% ����</strong></span>
			</div>
		</div>
	</div>
</div>
<!-- end header service -->

<!-- main container -->

<section class="main-container col1-layout home-content-container">
	<div class="container">
		<div class="std">
			<div class="best-seller-pro wow bounceInUp animated">
				<div class="slider-items-products">
					<div class="new_title center">
						<h2>Best Seller</h2>
					</div>
					<div id="best-seller-slider"
						class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col4">
							<c:forEach var="pArr" items="${pList }">
								<!-- Item -->
								<div class="item">
									<div class="col-item">
										<div class="sale-label sale-top-right">${pArr.p_discount }%</div>
										<div class="product-image-area">

											<a class="product-image" title="Sample Product"
												href="product_detail?p_no=${pArr.p_no }"> <img
												src="${pArr.p_image }" class="img-responsive"
												alt="product-image" />
											</a> <input name="p_no" value="${pArr.p_no}" type="hidden" />

											<div class="hover_fly">
												<!-- īƮ -->
												<a class="exclusive ajax_add_to_cart_button"
													href="javascript:quickCart(${pArr.p_no})"
													title="Add to cart">
													<div>
														<i class="icon-shopping-cart"></i><span>Add to cart</span>
													</div>
												</a> <a class="quick-view" href="javascript:quickViewShow(${pArr.p_no})">
													<div>
														<i class="icon-eye-open"></i><span>Quick view</span>
													</div>
												</a> <a class="add_to_compare" href="compare.jsp">
													<div>
														<i class="icon-random"></i><span>Add to compare</span>
													</div>
												</a> <a class="addToWishlist wishlistProd_5"
													href="quickWish?p_no=${pArr.p_no}" title="Add to wishlist">
													<%-- <a class="addToWishlist wishlistProd_5" href="avascript:quickWish(${pArr.p_no})" title="Add to wishlist"> --%>
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
														${pArr.p_name } </a>
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
															<span class="price">��&nbsp;<fmt:formatNumber
																	value="${pArr.calculationPrice}" pattern="#,###"
																	type="currency" /></span>
														</p>
														<p class="old-price">
															<span class="price-sep">-</span> <span class="price">��&nbsp;
																<fmt:formatNumber value="${pArr.p_price}"
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
								</div>
								<!-- End Item -->
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End main container -->

<!-- offer banner section -->

<div class="offer-banner-section wow bounceInUp animated">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-xs-12 col-sm-4">
				<a href="#"><img alt="offer banner1"
					src="images/offer-banner1.jpg"></a>
				<div class="overlay">
					<a class="info" href="#">Learn More</a>
				</div>
			</div>
			<div class="col-lg-4 col-xs-12 col-sm-4">
				<a href="#"><img alt="offer banner2"
					src="images/offer-banner2.jpg"></a>
				<div class="overlay">
					<a class="info" href="#">Learn More</a>
				</div>
			</div>
			<div class="col-lg-4 col-xs-12 col-sm-4">
				<a href="#"><img alt="offer banner3"
					src="images/offer-banner3.jpg"></a>
				<div class="overlay">
					<a class="info" href="#">Learn More</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end offer banner section -->

<!-- Featured Slider -->
<section class="featured-pro container wow bounceInUp animated">
	<div class="slider-items-products">
		<div class="new_title center">
			<h2>Featured Products</h2>
		</div>
		<div id="featured-slider" class="product-flexslider hidden-buttons">
			<div class="slider-items slider-width-col4">
				<c:forEach var="product" items="${pUpSellList}">
					<!-- Item -->
					<div class="item">
						<div class="col-item">
							<div class="sale-label sale-top-right">${product.p_discount}%</div>
							<div class="product-image-area">
								<a class="product-image" title="${product.p_image}"
									href="product_detail?p_no=${product.p_no}"> <img
									src="${product.p_image}" class="img-responsive" alt="a" />
								</a>
								<div class="actions-links">
									<span class="add-to-links"> <a
										title="magik-btn-quickview" class="magik-btn-quickview"
										href="javascript:quickViewShow(${product.p_no})"><span>quickview</span></a> <a
										title="Add to Wishlist" class="link-wishlist"
										href="quickWish?p_no=${product.p_no}"><span>Add to
												Wishlist</span></a> <a title="Add to Compare" class="link-compare"
										href="compare.jsp"><span>Add to Compare</span></a></span>
								</div>
							</div>
							<div class="info">
								<div class="info-inner">
									<div class="item-title">
										<a title=" Sample Product"
											href="product_detail?p_no=${product.p_no}">
											${product.p_name}</a>
									</div>
									<!--item-title-->
									<div class="item-content">
										<div class="ratings">
											<div class="rating-box">

												<div class="rating${product.resultReview }"></div>
											</div>
										</div>
										<div class="price-box">
											<p class="special-price">
												<span class="price">��&nbsp;<fmt:formatNumber
														value="${product.calculationPrice}" pattern="#,###"
														type="currency" /></span>
											</p>
											<p class="old-price">
												<span class="price-sep">-</span> <span class="price">��&nbsp;
													<fmt:formatNumber value="${product.p_price}"
														pattern="#,###" type="currency" />
												</span>
											</p>
										</div>
									</div>
									<!--item-content-->
								</div>
								<!--info-inner-->
								<div class="actions">
									<button type="button" title="Add to Cart"
										class="button btn-cart" onclick="javascript:quickCart(${product.p_no})">
										<span>Add to Cart</span>
									</button>
								</div>
								<!--actions-->

								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<!-- End Item -->
				</c:forEach>
			</div>
		</div>
	</div>
</section>
<!-- End Featured Slider -->
<!-- promo banner section -->
<div class="promo-banner-section container wow bounceInUp animated">
	<div class="row">
		<div class="col-lg-12">
			<img alt="promo-banner3" src="products-images/pic1.png">
		</div>
	</div>
</div>
<!-- End promo banner section -->
<!-- middle slider -->
<section class="middle-slider container wow bounceInUp animated">
	<div class="row">
		<div class="col-md-6">
			<div class="bag-product-slider small-pr-slider cat-section">
				<div class="slider-items-products">
					<div class="new_title center">
						<h2>Bags</h2>
					</div>
					<div id="bag-seller-slider"
						class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col3">

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img
											src="products-images/product1.jpg" class="img-responsive"
											alt="a" />
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button type="button" title="Add to Cart"
												class="button btn-cart">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img
											src="products-images/product1.jpg" class="img-responsive"
											alt="a" />
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button type="button" title="Add to Cart"
												class="button btn-cart">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="shoes-product-slider small-pr-slider cat-section">
				<div class="slider-items-products">
					<div class="new_title center">
						<h2>Shoes</h2>
					</div>
					<div id="shoes-slider" class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col3">

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img
											src="products-images/product1.jpg" class="img-responsive"
											alt="a" />
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button type="button" title="Add to Cart"
												class="button btn-cart">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img
											src="products-images/product1.jpg" class="img-responsive"
											alt="a" />
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button type="button" title="Add to Cart"
												class="button btn-cart">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<div class="col-item">
									<div class="product-image-area">
										<a class="product-image" title="Sample Product"
											href="product_detail.jsp"> <img alt="a"
											class="img-responsive" src="products-images/product1.jpg">
										</a>
										<div class="actions-links">
											<span class="add-to-links"> <a
												title="magik-btn-quickview" class="magik-btn-quickview"
												href="quick_view.jsp"><span>quickview</span></a> <a
												title="Add to Wishlist" class="link-wishlist"
												href="wishlist.jsp"><span>Add to Wishlist</span></a> <a
												title="Add to Compare" class="link-compare"
												href="compare.jsp"><span>Add to Compare</span></a></span>
										</div>
									</div>
									<div class="info">
										<div class="info-inner">
											<div class="item-title">
												<a title=" Sample Product" href="product_detail.jsp">
													Sample Product </a>
											</div>
											<!--item-title-->
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
											<!--item-content-->
										</div>
										<!--info-inner-->
										<div class="actions">
											<button class="button btn-cart" title="Add to Cart"
												type="button">
												<span>Add to Cart</span>
											</button>
										</div>
										<!--actions-->

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- End Item -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End middle slider -->

<!-- Latest Blog -->
<section class="latest-blog container wow bounceInUp animated">
	<div class="blog-title">
		<h2>
			<span>Latest Blog</span>
		</h2>
	</div>
	<div class="col-xs-12 col-sm-4">
		<div class="blog-img">
			<img src="products-images/pic3.png" alt="Image">
			<div class="mask">
				<a class="info" href="blog_detail.jsp">Read More</a>
			</div>
		</div>
		<h2>
			<a href="blog_detail.jsp">Pellentesque habitant morbi</a>
		</h2>
		<div class="post-date">
			<i class="icon-calendar"></i> Apr 10, 2014
		</div>
		<p>Pellentesque habitant morbi tristique senectus et netus et
			malesuada fames ac turpis egestas. Fusce sit ...</p>
	</div>
	<div class="col-xs-12 col-sm-4">
		<div class="blog-img">
			<img src="products-images/pic2.png" alt="Image">
			<div class="mask">
				<a class="info" href="blog_detail.jsp">Read More</a>
			</div>
		</div>
		<h2>
			<a href="blog_detail.jsp">Pellentesque habitant morbi</a>
		</h2>
		<div class="post-date">
			<i class="icon-calendar"></i> Apr 10, 2014
		</div>
		<p>Pellentesque habitant morbi tristique senectus et netus et
			malesuada fames ac turpis egestas. Fusce sit ...</p>
	</div>
	<div class="col-xs-12 col-sm-4">
		<div class="blog-img">
			<img src="products-images/pic4.png" alt="Image">
			<div class="mask">
				<a class="info" href="blog_detail.jsp">Read More</a>
			</div>
		</div>
		<h2>
			<a href="blog_detail.jsp">Pellentesque habitant morbi</a>
		</h2>
		<div class="post-date">
			<i class="icon-calendar"></i> Apr 10, 2014
		</div>
		<p>Pellentesque habitant morbi tristique senectus et netus et
			malesuada fames ac turpis egestas. Fusce sit ...</p>
	</div>
</section>
<!-- End Latest Blog -->