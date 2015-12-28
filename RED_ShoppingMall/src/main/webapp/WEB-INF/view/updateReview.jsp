<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE div PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" type="text/css">

<script type="text/javascript" src="js/customScript.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>

	<div class="tab-pane fade" id="reviews_tabs">
		<div class="box-collateral box-reviews" id="customer-reviews">
			<div class="box-reviews1">
				<div class="form-add">
					<form id="reviewForm" name="reviewForm" onsubmit="return updateResult();" action="updateReviewResult" method="post">
					<!-- <form id="reviewForm" name="reviewForm"> -->
						
						<h3> ${sMember.m_id } 님이 작성한 리뷰를 확인하세요</h3>
						<fieldset>
							<h4>
								How do you rate this product? <em class="required">*</em>
							</h4>
							<span id="input-message-box"></span>
							<table id="product-review-table" class="data-table">

								<thead>
									<tr class="first last">
										<th>&nbsp;</th>
										<th><span class="nobr">1 *</span></th>
										<th><span class="nobr">2 *</span></th>
										<th><span class="nobr">3 *</span></th>
										<th><span class="nobr">4 *</span></th>
										<th><span class="nobr">5 *</span></th>
									</tr>
								</thead>
								<tbody>
								
									<tr class="first odd">
										<th>Price</th> 
									
										<td class="value"><input type="radio" class="radio"
											value="1" id="r_price" name="r_price"></td>
										<td class="value"><input type="radio" class="radio"
											value="2" id="r_price" name="r_price"></td>
										<td class="value"><input type="radio" class="radio"
											value="3" id="r_price" name="r_price"></td>
										<td class="value"><input type="radio" class="radio"
											value="4" id="r_price" name="r_price"></td>
										<td class="value last"><input type="radio" class="radio"
											value="5" id="r_price" name="r_price"></td>
									</tr>
									<tr class="even">
										<th>Design</th>
										<td class="value"><input type="radio" class="radio"
											value="1" id="r_design" name="r_design"></td>
										<td class="value"><input type="radio" class="radio"
											value="2" id="r_design" name="r_design"></td>
										<td class="value"><input type="radio" class="radio"
											value="3" id="r_design" name="r_design"></td>
										<td class="value"><input type="radio" class="radio"
											value="4" id="r_design" name="r_design"></td>
										<td class="value last"><input type="radio" class="radio"
											value="5" id="r_design" name="r_design"></td>
									</tr>
									<tr class="last odd">
										<th>Quality</th>
										<td class="value"><input type="radio" class="radio"
											value="1" id="r_quality" name="r_quality"></td>
										<td class="value"><input type="radio" class="radio"
											value="2" id="r_quality" name="r_quality"></td>
										<td class="value"><input type="radio" class="radio"
											value="3" id="r_quality" name="r_quality"></td>
										<td class="value"><input type="radio" class="radio"
											value="4" id="r_quality" name="r_quality"></td>
										<td class="value last"><input type="radio" class="radio"
											value="5" id="r_quality" name="r_quality"></td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" value="" class="validate-rating"
								name="validate_rating">
							<div class="review1">
								<ul class="form-list">
									<li><label class="required" for="nickname_field">Nickname<em>*</em>
											&nbsp;<span style="color: red;" id="idMsg"></span></label>

										<div class="input-box">
											<input type="text" class="input-text required-entry"
												id="r_nickName" name="r_nickName"
												value="${review.r_nickName}"
												onkeyup="ajaxReviewRequestPost();">

										</div></li>
									<li><label class="required" for="summary_field">Summary<em>*</em><span style="color: red;" id="summaryMsg"></span></label>
										<div class="input-box">
											<input type="text" class="input-text required-entry"
												id="r_summary" name="r_summary" value="${review.r_summary}">

										</div></li>
								</ul>
							</div>
							<div class="review2">
								<ul>
									<li><label class="label-wide" for="review_field">Review<em>*</em><span style="color: red;" id="reviewMsg"></span></label>
										<div class="input-box">
											<textarea class="required-entry" rows="3" cols="5"
												id="r_review" name="r_review" value="${review.r_review}">${review.r_review}</textarea>
										</div></li>
								</ul>

								<div class="buttons-set">
									<input name="r_p_no" value="${review.r_p_no}" type="hidden" /> 
									<input name="r_no" value="${review.r_no}" type="hidden" />
									<input name="r_m_id" value="${sessionScope.sMember.m_id}" type="hidden" />

									<!-- <button class="button submit" title="Submit Review"
										type="submit">
										<span>Submit Review</span>
									</button> -->
									
									
									<button type="button" title="리뷰 수정" class="button search" 
																	onclick="return updateResult();" id="ebutton" name="ebutton">
																	<span>수정 </span>
									</button>
									
									<!-- <button class="button submit" title="Submit Review" type="submit"><span>Submit Review</span></button> -->

								</div>
							</div>
						</fieldset>
						
					</form>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
