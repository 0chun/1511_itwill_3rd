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
				<li class=""><a href="productList?p_ccode=${temp_code * 10}"><span>&mdash;›</span>${msg1}</a></li>
				<c:if test="${!empty msg2}">
					<li class="category13"><span>&mdash;›</span><strong>${msg2}</strong></li>
				</c:if>
			</ul>
		</div>
	</div>
</div>
<!-- end breadcrumbs -->
<!-- Two columns content -->
<div class="main-container col2-left-layout">
	<div class="main container">
		<div class="row">
			<section
				class="col-main col-sm-9 col-sm-push-3 wow bounceInUp animated">
				<div class="category-description std">
					<div class="category-image">
						<img src="images/women_banner.png" alt="cat imges " title="Sofas ">
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
										<c:if test="${!empty msg2}">
											<a href="productGrid?p_ccode=${p_ccode}" title="Grid"
												class="button button-grid">Grid</a>&nbsp;
										</c:if>
										<c:if test="${empty msg2}">
											<a href="productAllGrid" title="Grid"
												class="button button-grid">Grid</a>&nbsp;
										</c:if>
									</c:when>
									<c:otherwise>
										<c:if test="${!empty msg2}">
											<a href="searchProduct?p_ccode=${p_ccode}&p_search=${p_search }&flag=2" title="Grid"
												class="button button-grid">Grid</a>&nbsp;
										</c:if>
										<c:if test="${empty msg2}">
											<a href="productAllGrid" title="Grid"
												class="button button-grid">Grid</a>&nbsp;
										</c:if>
									</c:otherwise>
								</c:choose>
								<span title="List" class="button button-active button-list">List</span>&nbsp;
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
					<ol id="products-list" class="products-list">
						<!-- 상품하나 시작 -->
						<c:forEach var="pArr" items="${pList}">
							<li class="item odd">
								<div class="product-image">
									<a href="product_detail?p_no=${pArr.p_no}"
										title="HTC Rhyme Sense"> <img class="small-image"
										src="${pArr.p_image}" alt="HTC Rhyme Sense" width="100%"
										height="100%">
									</a>
								</div>
								<div class="product-shop">
									<h2 class="product-name">
										<a title=" Sample Product"
											href="product_detail?p_no=${pArr.p_no}"> ${pArr.p_name} </a>
									</h2>
									<div class="price-box">
										<p class="old-price">
											<span class="price-label"></span> <span id="old-price-212"
												class="price">￦&nbsp; <fmt:formatNumber
													value="${pArr.p_price}" pattern="#,###" type="currency" />
											</span>
										</p>
										<p class="special-price">
											<span class="price-label"></span> <span
												id="product-price-212" class="price">￦&nbsp;<fmt:formatNumber
													value="${pArr.calculationPrice}" pattern="#,###"
													type="currency" />
											</span>
										</p>
									</div>
									<div class="ratings">
										<div class="rating-box">
											<div class="rating${pArr.resultReview }"></div>
										</div>
										<p class="rating-links">
											<a href="#">1 Review(s)</a> <span class="separator">|</span>
											<a href="#review-form">Add Your Review</a>
										</p>
									</div>
									<div class="desc std">
										<p>${pArr.p_detail}
											<!-- <a class="link-learn"
											title="" href="#">Learn More</a> -->
										</p>
									</div>
									<div class="actions">
										<button class="button btn-cart ajx-cart"
											onclick="quickCart(${pArr.p_no});" title="Add to Cart"
											type="button">
											<span>Add to Cart</span>
										</button>
										<span class="add-to-links"> <a title="Add to Wishlist"
											class="button link-wishlist"
											href="quickWish?p_no=${pArr.p_no}"><span>Add to
													Wishlist</span></a> <a title="Add to Compare"
											class="button link-compare" href="compare.jsp"><span>Add
													to Compare</span></a>
										</span>
									</div>
								</div>
							</li>
						</c:forEach>
						<!-- 상품하나 끝 -->
						<!-- 	<li class="item even">
							<div class="product-image">
								<a href="#microsoft-natural-ergonomic-keyboard-4000.jsp"
									title="Microsoft Natural Keyboard"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="Microsoft Natural Keyboard" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-159"> <span
										class="price">$99.99</span>
									</span>
								</div>
								<div class="desc std">
									<p>Sed volutpat ac massa eget lacinia. Suspendisse non
										purus semper, tellus vel, tristique urna. Aenean volutpat
										lacus at dolor blandit.</p>
									<p>
										Sed sed interdum diam. Donec sit ametenim tempor, dapibus nunc
										eu, tincidunt mi. Vivamus dignissimm ... <a class="link-learn"
											title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item odd">
							<div class="product-image">
								<a href="#30-flat-panel-tft-lcd-cinema-hd-monitor.jsp"
									title="30&quot; Flat-Panel HD Monitor"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="30&quot; Flat-Panel HD Monitor" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-157"> <span
										class="price">$699.99</span>
									</span>
								</div>
								<div class="desc std">
									Computer games, digital photo editing and graphic applications
									will astound you on this huge 30" flat-panel monitor.
									<p>Sed sed interdum diam. Donec sit ametenim tempor,
										dapibus nunc eu, tincidunt mi.</p>
									<p>
										Phasellus consequat id purus in convallis. Nulla quis... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item even">
							<div class="product-image">
								<a href="#19-widescreen-flat-panel-lcd-monitor.jsp"
									title="19&quot; Widescreen LCD Monitor"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="19&quot; Widescreen LCD Monitor" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-156"> <span
										class="price">$399.99</span>
									</span>
								</div>
								<div class="desc std">
									2 ms response time; 10,000:1 contrast ratio; 300 cd/m²
									brightness; 1440 x 900 maximum resolution; DVI-D and 15-pin
									D-sub inputs
									<p>
										Phasellus consequat id purus pretium enimnec, tristique... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item odd">
							<div class="product-image">
								<a href="#250gb-5400rpm.jsp" title="Seagate 250GB HD "> <img
									class="small-image" src="products-images/product1.jpg"
									alt="Seagate 250GB HD " width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-155"> <span
										class="price">$99.00</span>
									</span>
								</div>
								<div class="desc std">
									1 TB - 7200RPM, SATA 3.0Gb/s, 32MB Cache
									<p>Maecenas vehicula volutpat elit, in interdum lacus
										faucibus sit amet.</p>
									<p>
										Sed sed interdum diam. Donec sit ametenim tempor, dapibus nunc
										eu, tincidunt mi. Vivamus dignissim nisl. Donec eget feugiat
										ante. Integerarcu libero, dictum nec congue sed, faucibus ...
										<a class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item even">
							<div class="product-image">
								<a href="#500gb-5400rpm.jsp" title="Seagate 500GB HD"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="Seagate 500GB HD" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-154"> <span
										class="price">$299<span class="sub">.00</span></span>
									</span>
								</div>
								<div class="desc std">
									1 TB - 7200RPM, SATA 3.0Gb/s, 32MB Cache
									<p>Aenean volutpat lacus at dolor blandit, vitae
										lobortisante semper. Ut bibendum metusfringilla, in interdum
										lacus faucibus sit amet.</p>
									<p>
										Donec eget feugiat ante. Integerarcu libero... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item odd">
							<div class="product-image">
								<a href="#intel-core-2-extreme-qx9775-3-20ghz-retail.jsp"
									title="Intel Core 2 Extreme QX9775"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="Intel Core 2 Extreme QX9775" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-153"> <span
										class="price">$2,049.99</span>
									</span>
								</div>
								<div class="desc std">
									Intel Core 2 Extreme QX9775 Processor BX80574QX9775 - 45nm,
									3.20GHz, 12MB Cache, 1600MHz FSB,
									<p>Vivamus dignissim nisl eu euismod ullamcorper. Donec
										pellentesque diam id est tristique vestibulum. Donec eget
										feugiat ante. Integerarcu libero, dictum nec congue sed,
										faucibus sit amet lectus.</p>
									<p>
										Phasellus consequat... <a class="link-learn" title="" href="#">Learn
											More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item even">
							<div class="product-image">
								<a href="#24-widescreen-flat-panel-lcd-monitor.jsp"
									title="24&quot; Widescreen LCD Monitor"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="24&quot; Widescreen LCD Monitor" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-152"> <span
										class="price">$699.99</span>
									</span>
								</div>
								<div class="desc std">
									5 ms response time; 10,000:1 contrast ratio; 400 cd/m²
									brightness; 1920 x 1200 maximum resolution; DVI-D and 15-pin
									D-sub inputs
									<p>tellus vel, tristique urna.</p>
									<p>
										Phasellus consequat id purus in convallis. Nulla quis nunc
										auctor, pretium enimnec, tristique magna... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item odd">
							<div class="product-image">
								<a href="#microsoft-wireless-optical-mouse-5004.jsp"
									title="Logitech Optical Trackman"> <img class="small-image"
									src="products-images/product1.jpg"
									alt="Logitech Optical Trackman" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-160"> <span
										class="price">$79.99</span>
									</span>
								</div>
								<div class="desc std">
									Our most advanced trackball yet. Save space and eliminate
									desktop clutter.
									<p>Donec eget feugiat ante. Integerarcu libero, dictum nec
										congue sed, faucibus sit amet lectus.</p>
									<p>
										Vivamus vitae arcu faucibus, dictum magna vel, adipiscing... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li>
						<li class="item last even">
							<div class="product-image">
								<a href="#" title="Logitech diNovo Edge Keyboard"> <img
									class="small-image" src="products-images/product1.jpg"
									alt="Logitech diNovo Edge Keyboard" width="230">
								</a>
							</div>
							<div class="product-shop">
								<h2 class="product-name">
									<a title=" Sample Product" href="product_detail.jsp">
										Sample Product </a>
								</h2>
								<div class="price-box">
									<span class="regular-price" id="product-price-161"> <span
										class="price">$239.99</span>
									</span>
								</div>
								<div class="ratings">
									<div class="rating-box">
										<div class="rating"></div>
									</div>
									<p class="rating-links">
										<a href="#">1 Review(s)</a> <span class="separator">|</span> <a
											href="#review-form">Add Your Review</a>
									</p>
								</div>
								<div class="desc std">
									Li-Ion powered.
									<p>Sed volutpat ac massa eget lacinia. Suspendisse non
										purus semper, vitae lobortisante semper.</p>
									<p>
										Integerarcu libero, dictum nec congue sed, faucibus sit... <a
											class="link-learn" title="" href="#">Learn More</a>
									</p>
								</div>
								<div class="actions">
									<button class="button btn-cart ajx-cart" title="Add to Cart"
										type="button">
										<span>Add to Cart</span>
									</button>
									<span class="add-to-links"> <a title="Add to Wishlist"
										class="button link-wishlist" href="wishlist.jsp"><span>Add
												to Wishlist</span></a> <a title="Add to Compare"
										class="button link-compare" href="compare.jsp"><span>Add
												to Compare</span></a>
									</span>
								</div>
							</div>
						</li> -->
					</ol>
				</div>
			</section>
			<!-- side bar start -->
			<jsp:include page="categories.jsp" />
			<!-- side bar end -->
		</div>
	</div>
</div>
<!-- End Two columns content -->
