<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 
	Side menu Number
		1 : 주문 내역
		2 : 내 정보 수정
		3 : 배송지 설정
		4 : 주문 상품 조회
		5 : 결제 내역 확인
		6 : 내가 쓴 리뷰
		7 : 태그
		8 : 위시리스트 보기
		9 : 회원 탈퇴
	Attr name : sidemenu_pointer
	적용 ex) : <li class="current">
	
 -->
<aside class="col-right sidebar col-sm-3 wow bounceInUp animated">
	<div class="block block-account">
		<div class="block-title">My Account</div>
		<div class="block-content">
			<ul>
				<c:choose>
					<c:when test="${sidemenu_pointer==1 }">
						<li class="current"><a href="myAccount">주문 내역</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="myAccount">주문 내역</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${sidemenu_pointer==2 }">
						<li class="current"><a href="myinfo">내 정보 수정</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="myinfo">내 정보 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="#customer/address/">배송지 설정</a></li>
				<li><a href="#sales/order/history/">주문 상품 조회</a></li>
				<li><a href="#sales/billing_agreement/">결제 내역 확인</a></li>
				<c:choose>
					<c:when test="${sidemenu_pointer==6 }">
						<li class="current"><a href="myReview">내가 쓴 리뷰</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="myReview">내가 쓴 리뷰</a></li>
					</c:otherwise>
				</c:choose>


				<li><a href="#tag/customer/">태그</a></li>
				<c:choose>
					<c:when test="${sidemenu_pointer==8 }">
						<li class="current"><a href="wishlistById">위시리스트 보기</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="wishlistById">위시리스트 보기</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${sidemenu_pointer==9 }">
						<li class="current"><a href="withdrawalForm">회원 탈퇴<!-- 뉴스레터 구독 --></a></li>
					</c:when>
					<c:otherwise>
						<li class="last"><a href="withdrawalForm">회원 탈퇴<!-- 뉴스레터 구독 --></a></li>
					</c:otherwise>
				</c:choose>
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
				<button type="submit" title="Submit" class="button button-compare">
					<span>상세 비교</span>
				</button>
				<button type="submit" title="Submit" class="button button-clear">
					<span>모두 지우기</span>
				</button>
			</div>
		</div>
	</div>
</aside>