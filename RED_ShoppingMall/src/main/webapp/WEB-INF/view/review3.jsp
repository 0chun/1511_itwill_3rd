<%@page import="com.itwill.red.dto.Reviews"%>
<%@page import="com.itwill.red.service.impl.ReviewServiceImpl"%>
<%@page import="com.itwill.red.service.ReviewService"%>
<%@page import="com.itwill.util.ListResultBean"%>
<%@page import="com.itwill.util.ListPageConfigBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	//1.요청페이지번호	
	String pageno = request.getParameter("pageno");
	if (pageno == null || pageno.equals("")) {
		pageno = "1";
	}
	//2.한페이지에표시할 게시물수 
	int rowCountPerPage = 10;
	//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
	int pageCountPerPage = 5;
	//페이징(계산)을위한DTO
	ListPageConfigBean pageConfig = new ListPageConfigBean(rowCountPerPage, pageCountPerPage, pageno, "", "");
	//게시물조회S
	ListResultBean boardListPage = ReviewServiceImpl.getInstance().findIdListPaging(pageConfig, "sanghoone");
	
%>
<!-- main-container -->
<div class="main-container col2-right-layout">
	<div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 wow bounceInUp animated">
				<div class="my-account">
					<div class="page-title">
						<h2>My Review</h2>
					</div>
					
					<div class="dashboard">
						<div class="welcome-msg">
							<strong>안녕하세요 ${sMember.m_id }님!</strong>
							<p>${sMember.m_id} 님께서 작성한 리뷰를 확인하실수 있습니다</p>
						</div>
						<div class="recent-orders">
							<div class="title-buttons">
								<strong>Recent Reviews</strong> <a href="#">View All </a>
							</div>
							<div class="table-responsive">
								<table class="data-table" id="my-orders-table">
									<thead>
										<tr class="first last">
											<th><span class="nobr">Product No</span></th>
											<th><span class="nobr">Nickname</span></th>
											
											<th style="text-align: center;">Score</th>
											<th><span class="nobr">Summary</span></th>
											<th>Review</th>
											<th>Date</th>
											<th style="text-align: center;">Remarks</th>
										</tr>
									</thead>
									 <c:forEach var="review" items="${reviewList}"> 
									
										<tbody>
											<tr class="first odd">
												<td><span class="nobr">
												<a href="product_detail?p_no=${review.R_P_NO }"><img width="100" alt="${review.P_NAME }" src="${review.P_IMAGE }"></a></td>
												<td style="padding-top: 7.5%;">${review.R_NICKNAME }</td>
												
												
												<td>
												
													<table class="ratings-table">
                                
							                                <tbody>
							                                  <tr>
							                                    <th>Price</th>
							                                    <td><div class="rating-box">
							                                        <div class="rating${review.R_PRICE}"></div>
							                                      </div></td>
							                                  </tr>
							                                  <tr>
							                                    <th>Design</th>
							                                    <td><div class="rating-box">
							                                        <div class="rating${review.R_DESIGN}"></div>
							                                      </div></td>
							                                  </tr>
							                                  <tr>
							                                    <th>Quality</th>
							                                    <td><div class="rating-box">
							                                        <div class="rating${review.R_QUALITY}"></div>
							                                      </div></td>
							                                  </tr>
							                                  
							                                </tbody>
                           						   </table>
                                      			</td>
													
												<%-- <td>
													<div class="rating-box">
														 <div class="rating${review.R_DESIGN}"></div>
                                      				</div>
												</td>
												<td>
													<div class="rating-box">
														 <div class="rating${review.R_QUALITY}"></div>
                                      				</div>
												</td>
												<td>
													<div class="rating-box">
														 <div class="rating${review.R_PRICE}"></div>
                                      				</div>
                                      			</td> --%>
                                      			
    
                                      			
												<td style="padding-top: 7.5%;">${review.R_SUMMARY }</td>
												<td style="padding-top: 7.5%;">
												
													<c:set var="size" value="${fn:length(review.R_REVIEW)}"/>
													<c:choose>
												
														<c:when  test="${size > 7}">
															<c:set var="str1" value="${fn:substring(review.R_REVIEW,0,7)}"/>
															${str1}...
														</c:when>
														<c:otherwise>
															${review.R_REVIEW}
														</c:otherwise>
													</c:choose>
												 </td>
												 <td style="padding-top: 7.5%;"><fmt:formatDate value="${review.R_DATE}"
														pattern="yyyy-MM-dd" /></td>
											<%-- 	<td class="a-center last"><span class="nobr"> <a
														href="orderDetailView?o_no=${arr.o_no }">주문 상세</a> <span class="separator"> <!-- |</span> <a
													href="#">Reorder</a> -->
													</span></td> --%>
												<td>
													<table  id="wishlist-table" class="clean-table linearize-table data-table">
														<tr>
															<td style="text-align: center;" class="wishlist-cell5 customer-wishlist-item-remove last">
																<a class="remove-item" title="Clear Cart" onClick="return removeReview();"  href="removeReview?r_no=${review.R_NO}">
																<span>
																	<span></span>
																</span>
																</a>
																
															</td>
														</tr>
														<tr>
															<td style="text-align: center;">
																<!-- <p><a href="#/wishlist/index/configure/id/31/" class="">Edit</a></p> -->
																
																<form name=form1 method=post>

																	<button type="button" title="리뷰 수정" class="button search" 
																	onclick="return updateReview(${review.R_NO});" id="ebutton" name="ebutton">
																	<span>수정 </span>
																	</button>
																</form>
															</td>
														</tr>
													</table>
												</td>
												
										</tr>
										</tbody>
									</c:forEach>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- side (left) menu -->
			<jsp:include page="side_menu.jsp" />
		</div>
	</div>
</div>

<!--End main-container -->
