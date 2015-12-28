<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <script type="text/javascript" src="js/product.js"></script>
 <script type="text/javascript">
	$().ready(function (){
		$("#proceedCart").click(function (){
			// OrderController
			if(document.f.p_no==null){
				return false;
			}
			document.f.action='orderCart';
			document.f.submit();
		})
	});
</script>
<header class="header-container">
	<div class="header-top">
		<div class="container">
			<div class="row">
				<!-- Header Language -->
				<div class="col-xs-6">
					<div class="dropdown block-language-wrapper">
						<a role="button" data-toggle="dropdown" data-target="#"
							class="block-language dropdown-toggle" href="#"> <img
							src="images/english.png" alt="language"> <!-- English -->영국
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"><img src="images/english.png" alt="language">
									English </a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"><img src="images/francais.png" alt="language">
									French </a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"><img src="images/german.png" alt="language">
									German </a></li>
						</ul>
					</div>

					<!-- End Header Language -->

					<!-- Header Currency -->
					<div class="dropdown block-currency-wrapper">
						<a role="button" data-toggle="dropdown" data-target="#"
							class="block-currency dropdown-toggle" href="#"> USD <span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"> $ - Dollar </a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"> £ - Pound </a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="#"> € - Euro </a></li>
						</ul>
					</div>

					<!-- End Header Currency -->

					<div class="welcome-msg hidden-xs">안녕, HI, 安寧, あんねい, Bonjour,
						Hola</div>
				</div>
				<div class="col-xs-6">

					<!-- Header Top Links -->
					<div class="toplinks">
						<div class="links">
							<c:choose>
								<c:when test="${sMember==null }">
									<div class="myaccount">
										<a title="My Account" href="loginForm"><span
											class="hidden-xs"> My Account </span></a>
									</div>
								</c:when>
								<c:when test="${sMember!=null }">
									<div class="myaccount">
										<a title="My Account" href="myAccount"><span
											class="hidden-xs"> My Account </span></a>
									</div>
								</c:when>
							</c:choose>

							<div class="wishlist">
								<a title="My Wishlist" href="wishlistById"><span
									class="hidden-xs">Wishlist</span></a>
							</div>


							<!-- Login & Logout Start  sMember-->
							<c:choose>
								<c:when test="${sMember==null }">
									<div class="login">
										<a title="Login" href="loginForm"> <span class="hidden-xs">Login</span></a>
									</div>
								</c:when>
								<c:when test="${sMember!=null }">
									<div class="login">
										<a title="Logout" href="logoutForm" onclick="return logout()">
											<span class="hidden-xs">Log Out</span>
										</a>
									</div>
								</c:when>
							</c:choose>
							<!-- Login & Logout End -->
						</div>
					</div>
					<!-- End Header Top Links -->
				</div>
			</div>
		</div>
	</div>
	<div class="header container">
		<div class="row">
			<div class="col-lg-2 col-sm-3 col-md-2">
				<!-- Header Logo -->
				<a class="logo" title="Magento Commerce" href="indexPage"><img
					alt="Magento Commerce" src="images/logo.png"></a>
				<!-- End Header Logo -->
			</div>
			<div class="col-lg-8 col-sm-6 col-md-8">
				<!-- Search-col -->
				<div class="search-box">
					<form method="POST" id="search_mini_form"
						name="c" >
						<select name="p_ccode" id="category_id"
							class="cate-dropdown hidden-xs">
							<option value="0">전체 상품</option>
							<option value="10">Women</option>
							<option value="11">&nbsp;&nbsp;&nbsp;아우터/재킷</option>
							<option value="12">&nbsp;&nbsp;&nbsp;상의</option>
							<option value="13">&nbsp;&nbsp;&nbsp;하의</option>
							<option value="14">&nbsp;&nbsp;&nbsp;Acc</option>
							<option value="20">Men</option>
							<option value="21">&nbsp;&nbsp;&nbsp;아우터/재킷</option>
							<option value="22">&nbsp;&nbsp;&nbsp;상의</option>
							<option value="23">&nbsp;&nbsp;&nbsp;하의</option>
							<option value="24">&nbsp;&nbsp;&nbsp;Acc</option>
							<option value="30">Jewellery</option>
							<option value="31">&nbsp;&nbsp;&nbsp;귀걸이</option>
							<option value="32">&nbsp;&nbsp;&nbsp;반지</option>
							<option value="33">&nbsp;&nbsp;&nbsp;목걸이</option>
							<option value="40">Electronics</option>
							<option value="41">&nbsp;&nbsp;&nbsp;스마트폰</option>
							<option value="42">&nbsp;&nbsp;&nbsp;카메라</option>
							<option value="43">&nbsp;&nbsp;&nbsp;Acc</option>

						</select> <input type="text" placeholder="찾으시는 물품을 입력하세요" value=""
							maxlength="70" class="" name="p_search" id="search" onkeypress="if (event.keyCode==13){searchProduct();}">
						<button type="button" id="submit-button" class="search-btn-bg" onclick="searchProduct()">
							<span>Search</span>
						</button>
					</form>
				</div>
				<!-- End Search-col -->
			</div>
			<!-- Top Cart -->
			<div class="col-lg-2 col-sm-3 col-md-2">
				<div class="top-cart-contain">
					<div class="mini-cart">
						<div data-toggle="dropdown" data-hover="dropdown"
							class="basket dropdown-toggle">
							<a href="#"> <i class="glyphicon glyphicon-shopping-cart"></i>
								<div class="cart-box">
									<span class="title">Cart</span><span id="cart-total"> <c:if
											test="${myCart != null && myCart.totalCount > 0}"> ${ myCart.totalCount} 개</c:if>
									</span>
								</div>
							</a>
						</div>
						<div>
							<div class="top-cart-content arrow_box">
								<div class="block-subtitle">최근 카트에 담은 상품</div>
								<ul id="cart-sidebar" class="mini-products-list">
									<c:if test="${myCart == null ? true : false }">
										<li class="item even">카트에 담은 상품이 없습니다.</li>
									</c:if>
									<form name="f" method="post">
										<c:forEach var="keyList" items="${myCart.myCartHashMap}">
											<li class="item even" id="${keyList.key}"><a
												class="product-image"
												href="product_detail?p_no=${keyList.value.product.p_no}"
												title="${keyList.value.product.p_name}"><img
													alt="${keyList.value.product.p_name}"
													src="${keyList.value.product.p_image}" width="80"></a>
												<div class="detail-item">
													<div class="product-details">
														<!-- 상품 지우는 이벤트  -->
														<a href="javascript:quickRemove(${keyList.key})"
															title="Remove This Item"
															class="glyphicon glyphicon-remove">&nbsp;</a> <a
															class="glyphicon glyphicon-pencil" title="Edit item"
															href="javascript:alert('수정 미구현')">&nbsp;</a>
														<p class="product-name">
															<a
																href="product_detail?p_no=${keyList.value.product.p_no}"
																title="Downloadable Product">
																${keyList.value.product.p_name}</a>
														</p>
													</div>
													<div class="product-details-bottom">
														<span class="price" id="totalPriceSpan">￦&nbsp;<fmt:formatNumber
																value="${keyList.value.productTotalPrice}"
																pattern="#,###,###" type="currency" /></span> <span
															class="title-desc">상품 수량:</span> <strong>${keyList.value.count}</strong>
													</div>
												</div></li>
												<td class="a-center last"><input type="hidden"
												value="${keyList.value.product.p_no }" id="p_no" name="p_no">
												<input type="hidden" value="${keyList.value.count }"
												id="p_count" name="p_count"> <input type="hidden"
												value="${keyList.key}" id="p_key" name="p_key">
										</c:forEach>
									</form>
								</ul>
								<div class="top-subtotal">
									구매 예정가: <span class="price" id="top_price">￦&nbsp;<fmt:formatNumber
											value="${myCart == null? 0 : myCart.totalPrice}"
											pattern="#,###,###" type="currency" /></span>
								</div>
								<div class="actions">
									<button class="btn-checkout" type="button" id="proceedCart">
										<span>선택 상품 주문</span>
									</button>
									<button class="view-cart" type="button" onclick="moveCart()">
										<span>VIEW CART</span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<div id="ajaxconfig_info">
						<a href="#/"></a> <input value="" type="hidden"> <input
							id="enable_module" value="1" type="hidden"> <input
							class="effect_to_cart" value="1" type="hidden"> <input
							class="title_shopping_cart" value="Go to shopping cart"
							type="hidden">
					</div>
				</div>
			</div>
			<!-- End Top Cart -->
		</div>
	</div>
</header>
<!-- <script type="text/javascript">
	$().ready(function() {
		$("#category_id").click(function() {
			alert('aa');
		})
	});
</script> -->