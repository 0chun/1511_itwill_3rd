<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

  <!-- end breadcrumbs -->
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <ul>
          <li class="home"> <a href="indexPage" title="Go to Home Page">Home</a><span>&mdash;›</span></li>
          <li class=""> <a href="grid.jsp" title="Go to Home Page">Women</a><span>&mdash;›</span></li>
          <li class="category13"><strong>${product.p_name}</strong></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- end breadcrumbs --> 
  <!-- main-container -->
  <div class="cms-index-index cms-home layout-boxed">
  <section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
        <div class="row">
          <div class="product-view">
            <div class="product-essential">
                <div class="product-img-box col-lg-6 col-sm-6 col-xs-12">
                  <ul class="moreview" id="moreview">
                    <li class="moreview_thumb thumb_1 moreview_thumb_active"> <img class="moreview_thumb_image" src="${product.p_image}" alt="thumbnail"><img class="moreview_source_image" src="${product.p_image}"   alt=""> <span class="roll-over">테스트1</span> <img  class="zoomImg" src="${product.p_image}" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_2"> <img class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">테스트2</span> <img  class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_3"> <img class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">테스트3</span> <img  class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_4"> <img class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">테스트4</span> <img  class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_5"> <img class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">테스트5</span> <img  class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_6"> <img class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">테스트6</span> <img  class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                  </ul>
                  <div class="moreview-control"> <a href="javascript:void(0)" class="moreview-prev"></a> <a href="javascript:void(0)" class="moreview-next"></a> </div>
                </div>
                <div class="product-shop col-lg-6 col-sm-6 col-xs-12">
                  <div class="product-next-prev"> <a class="product-next" href="#"><span></span></a> <a class="product-prev" href="#"><span></span></a> </div>
                  <div class="product-name">
                    <h1>${product.p_name}</h1>
                  </div>
                  <div class="ratings">
                    <div class="rating-box">
                      <div class="rating${resultReview}"></div>
                    </div>
                    
                    <p class="rating-links"> <a href="#grade">상품평</a> <span class="separator">|</span> <a href="#write_grade">상품평 쓰기</a> </p>
                   	
                  </div>
                  <p class="availability in-stock">Availability: <span>In stock</span></p>
                  <div class="price-block">
                    <div class="price-box">
                      <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price">￦&nbsp;<fmt:formatNumber value="${product.p_price}"  pattern="#,###" type="currency"/></span> </p>
                      <p class="special-price"> <span class="price-label">Special Price</span> <span class="price">￦&nbsp;<fmt:formatNumber value="${product.calculationPrice()}" pattern="#,###" type="currency"/></span> </p>
                    </div>
                  </div>
                  <div> <!-- style="display:none" -->
                    <label for="qty">색상:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                   <select id="colorSelect">
                   	<option value="0">색상을 선택하세요.</option>
                   	<c:forEach var="strColor" items="${color}">
                   		<option>${strColor}</option>
                   	</c:forEach>
                   </select>
                  </div>
                  <br/>
                  <div>
                    <label for="qty">사이즈:&nbsp;</label>
                    <select id="sizeSelect">
                   	<option value="0">사이즈를 선택하세요.</option>
                   	<c:forEach var="strSize" items="${size}">
                   		<option>${strSize}</option>
                   	</c:forEach>
                   </select>
                  </div>
                  <div class="add-to-box">
                    <div class="add-to-cart">
                      <label for="qty">수량:</label>
                      
                      <div class="pull-left">
                        <div class="custom pull-left">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;" class="reduced items-count" type="button"><i class="icon-minus">&nbsp;</i></button>
                          <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="icon-plus">&nbsp;</i></button>
                        </div>
                      </div>
                      <form id="product_form" action="addCart" method="POST">
                   		<input id="p_no" name="p_no" value="${product.p_no}" type="hidden"/>
					  	<input id="p_size" name="p_size" type="hidden"/>
					 	<input id="p_color" name="p_color" type="hidden"/>
					 	<input id="p_qty" name="p_qty" type="hidden"/>
					 </form>
                      <button onClick="addCart(product_form)" class="button btn-cart" title="Add to Cart" type="button"><span><i class="icon-basket"></i> Add to Cart</span></button>
                     
                      <div class="email-addto-box">
                        <ul class="add-to-links">
                          <li> <a class="link-wishlist" onClick="addWish(product_form)"><span>Add to Wishlist</span></a></li>
                          <li><span class="separator">|</span> <a class="link-compare" href="compare.jsp"><span>Add to Compare</span></a></li>
                        </ul>
                        <p class="email-friend"><a href="#" class=""><span>Email to a Friend</span></a></p>
                      </div>
                    </div>
                  </div>
                  <a id="grade"></a>
         		  <a id="write_grade"></a>
                  <div class="social">
                    <ul>
                      <li class="fb"><a href="#"></a></li>
                      <li class="tw"><a href="#"></a></li>
                      <li class="googleplus"><a href="#"></a></li>
                      <li class="rss"><a href="#"></a></li>
                      <li class="pintrest"><a href="#"></a></li>
                      <li class="linkedin"><a href="#"></a></li>
                      <li class="youtube"><a href="#"></a></li>
                      
                    </ul>
                  </div>
                </div>
            </div>
             
            <div class="product-collateral">
              <div class="col-sm-12 wow bounceInUp animated">
                <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                  <li class="active"> <a href="#product_tabs_description" data-toggle="tab"> Product Description </a> </li>
                  <li><a href="#product_tabs_tags" data-toggle="tab">Tags</a></li>
                  <li> <a href="#reviews_tabs" data-toggle="tab">Reviews</a> </li>
                  <li> <a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a> </li>
                  <li> <a href="#product_tabs_custom1" data-toggle="tab">Custom Tab1</a> </li>
                </ul>
                <div id="productTabContent" class="tab-content">
                  <div class="tab-pane fade in active" id="product_tabs_description">
                    <div class="std">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.</p>
                      <p> Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.</p>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="product_tabs_tags">
                    <div class="box-collateral box-tags">
                      <div class="tags">
                        <form id="addTagForm" action="#" method="get">
                          <div class="form-add-tags">
                            <label for="productTagName">Add Tags:</label>
                            <div class="input-box">
                              <input class="input-text required-entry" name="productTagName" id="productTagName" type="text" >
                              <button type="button" title="Add Tags" class=" button btn-add" onClick="submitTagForm()"> <span>Add Tags</span> </button>
                            </div>
                            <!--input-box--> 
                          </div>
                        </form>
                      </div>
                      <!--tags-->
                      <p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                    </div>
                  </div>
                  
                  
                  
                  
                  <div class="tab-pane fade" id="reviews_tabs">
                    <div class="box-collateral box-reviews" id="customer-reviews">
                      <div class="box-reviews1">
                        <div class="form-add">
                          <form id="reviewForm" name="reviewForm" onsubmit="return review();" action="review" method="post">
                           <h3>Write Your Own Review</h3>
                            <fieldset>
                              <h4>How do you rate this product? <em class="required">*</em></h4>
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
                                    <td class="value"><input type="radio" class="radio" value="1" id="r_price" name="r_price"></td>
                                    <td class="value"><input type="radio" class="radio" value="2" id="r_price" name="r_price"></td>
                                    <td class="value"><input type="radio" class="radio" value="3" id="r_price" name="r_price"></td>
                                    <td class="value"><input type="radio" class="radio" value="4" id="r_price" name="r_price"></td>
                                    <td class="value last"><input type="radio" class="radio" value="5" id="r_price" name="r_price"></td>
                                  </tr>
                                  <tr class="even">
                                    <th>Design</th>
                                    <td class="value"><input type="radio" class="radio" value="1" id="r_design" name="r_design"></td>
                                    <td class="value"><input type="radio" class="radio" value="2" id="r_design" name="r_design"></td>
                                    <td class="value"><input type="radio" class="radio" value="3" id="r_design" name="r_design"></td>
                                    <td class="value"><input type="radio" class="radio" value="4" id="r_design" name="r_design"></td>
                                    <td class="value last"><input type="radio" class="radio" value="5" id="r_design" name="r_design"></td>
                                  </tr>
                                  <tr class="last odd">
                                    <th>Quality</th>
                                    <td class="value"><input type="radio" class="radio" value="1" id="r_quality" name="r_quality"></td>
                                    <td class="value"><input type="radio" class="radio" value="2" id="r_quality" name="r_quality"></td>
                                    <td class="value"><input type="radio" class="radio" value="3" id="r_quality" name="r_quality"></td>
                                    <td class="value"><input type="radio" class="radio" value="4" id="r_quality" name="r_quality"></td>
                                    <td class="value last"><input type="radio" class="radio" value="5" id="r_quality" name="r_quality"></td>
                                  </tr>
                                </tbody>
                              </table>
                              <input type="hidden" value="" class="validate-rating" name="validate_rating">
                              <div class="review1">
                                <ul class="form-list">
                                  <li>
                                    <label class="required" for="nickname_field">Nickname<em>*</em>
                                    &nbsp;<span style="color: red;" id="idMsg"></span></label>
                                    
                                    <div class="input-box">
                                      <input type="text" class="input-text required-entry" id="r_nickName" name="r_nickName" value="${eReview.r_nickName}" onkeyup="ajaxReviewRequestPost();" >
                                      
                                    </div>
                                  </li>
                                  <li>
                                    <label class="required" for="summary_field">Summary<em>*</em><span style="color: red;" id="summaryMsg"></span></label>
                                    <div class="input-box">
                                      <input type="text" class="input-text required-entry" id="r_summary" name="r_summary"  value="${eReview.r_summary}">
                                      
                                    </div>
                                  </li>
                                </ul>
                              </div>
                              <div class="review2">
                                <ul>
                                  <li>
                                    <label class="label-wide" for="review_field">Review<em>*</em><span style="color: red;" id="reviewMsg"></span></label>
                                    <div class="input-box">
                                      <textarea class="required-entry" rows="3" cols="5" id="r_review" name="r_review" value="${eReview.r_review}"></textarea>
                                    </div>
                                  </li>
                                </ul>
                                
                                <div class="buttons-set">
                                	<input name="p_no" value="${product.p_no}" type="hidden"/>
                                	<input name="r_m_id" value="${sessionScope.sMember.m_id}" type="hidden"/>
                                	
                                  <button class="button submit" title="Submit Review" type="submit"><span>Submit Review</span></button>
                                  <!-- <button class="button submit" title="Submit Review" type="submit" onclick="location.href='reviewTest';""><span>Submit Review</span></button> -->
                                 
                                </div>
                              </div>
                            </fieldset>
                          </form>
                        </div>
                      </div>
                      <div class="box-reviews2">
                        <h3>Customer Reviews</h3>
                        <div class="box visible">
                          <ul>
                                <c:forEach var="review" items="${reviewList}">
                            <li>
                              <table class="ratings-table">
                                
                                <tbody>
                                   <tr>
                                    <th>Price</th>
                                    <td><div class="rating-box">
                                        <div class="rating${review.r_price}"></div>
                                      </div></td>
                                  </tr>
                                
                                  <tr>
                                    <th>Design</th>
                                    <td><div class="rating-box">
                                        <div class="rating${review.r_design}"></div>
                                      </div></td>
                                  </tr>
                                  <tr>
                                    <th>Quality</th>
                                    <td><div class="rating-box">
                                        <div class="rating${review.r_quality}"></div>
                                      </div></td>
                                  </tr>
                                  
                                </tbody>
                              </table>
                              <div class="review">
                                <h6><a href="#/catalog/product/view/id/61/">${review.r_summary}</a></h6>
                                <!-- <small>Review by <span>Leslie Prichard </span>on 1/3/2014 </small>
                                <div class="review-txt"> I have purchased shirts from Minimalism a few times and am never disappointed. The quality is excellent and the shipping is amazing. It seems like it's at your front door the minute you get off your pc. I have received my purchases within two days - amazing.</div> -->
                                <small>Review by <span>${review.r_nickName } </span>on ${review.r_date}</small>
                                <div class="review-txt"> ${review.r_review }</div>
                              </div>
                            </li>
                            
                            </c:forEach>
                            
                            
                         <!--    <li class="even">
                              <table class="ratings-table">
                                
                                <tbody>
                                  <tr>
                                    <th>Value</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                  <tr>
                                    <th>Quality</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                  <tr>
                                    <th>Price</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="review">
                                <h6><a href="#/catalog/product/view/id/60/">Amazing</a></h6>
                                <small>Review by <span>Sandra Parker</span>on 1/3/2014 </small>
                                <div class="review-txt"> Minimalism is the online ! </div>
                              </div>
                            </li>
                            <li>
                              <table class="ratings-table">
                                
                                <tbody>
                                  <tr>
                                    <th>Value</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                  <tr>
                                    <th>Quality</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                  <tr>
                                    <th>Price</th>
                                    <td><div class="rating-box">
                                        <div class="rating"></div>
                                      </div></td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="review">
                                <h6><a href="#/catalog/product/view/id/59/">Nicely</a></h6>
                                <small>Review by <span>Anthony  Lewis</span>on 1/3/2014 </small>
                                <div class="review-txt"> Unbeatable service and selection. This store has the best business model I have seen on the net. They are true to their word, and go the extra mile for their customers. I felt like a purchasing partner more than a customer. You have a lifetime client in me. </div>
                              </div>
                            </li> -->
                          </ul>
                        </div>
<!--                         <div class="actions"> <a class="button view-all" id="revies-button"><span><span>View all</span></span></a> </div> -->
                        <!-- <div class="actions"> <a class="button view-all" id="revies-button"><span><span>View all</span></span></a> </div> -->
                      </div>
                      
                      
                      
                      
                      <div class="clear"></div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="product_tabs_custom">
                    <div class="product-tabs-content-inner clearfix">
                      <p><strong>Lorem Ipsum</strong><span>&nbsp;is
                        simply dummy text of the printing and typesetting industry. Lorem Ipsum
                        has been the industry's standard dummy text ever since the 1500s, when 
                        an unknown printer took a galley of type and scrambled it to make a type
                        specimen book. It has survived not only five centuries, but also the 
                        leap into electronic typesetting, remaining essentially unchanged. It 
                        was popularised in the 1960s with the release of Letraset sheets 
                        containing Lorem Ipsum passages, and more recently with desktop 
                        publishing software like Aldus PageMaker including versions of Lorem 
                        Ipsum.</span></p>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="product_tabs_custom1">
                    <div class="product-tabs-content-inner clearfix">
                      <p> <strong> Comfortable </strong><span>&nbsp;preshrunk shirts. Highest Quality Printing.  6.1 oz. 100% preshrunk heavyweight cotton Shoulder-to-shoulder taping Double-needle sleeves and bottom hem     
                        
                        Lorem Ipsumis
                        simply dummy text of the printing and typesetting industry. Lorem Ipsum
                        has been the industry's standard dummy text ever since the 1500s, when 
                        an unknown printer took a galley of type and scrambled it to make a type
                        specimen book. It has survived not only five centuries, but also the 
                        leap into electronic typesetting, remaining essentially unchanged. It 
                        was popularised in the 1960s with the release of Letraset sheets 
                        containing Lorem Ipsum passages, and more recently with desktop 
                        publishing software like Aldus PageMaker including versions of Lorem 
                        Ipsum.</span></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-12">
                <div class="box-additional">
                  <div class="related-pro wow bounceInUp animated">
                    <div class="slider-items-products">
                      <div class="new_title center">
                        <h2>Related Products</h2>
                      </div>
                      <div id="related-products-slider" class="product-flexslider hidden-buttons">
                        <div class="slider-items slider-width-col4"> 
                          <c:forEach var="arr" items="${pBestSellList }">
                          <!-- Item -->
                          <div class="item">
                            <div class="col-item">
                              <div class="sale-label sale-top-right">Sale</div>
                              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail?p_no=${arr.p_no }"> 
                              <img src="${arr.p_image }" class="img-responsive" alt="a" /> 
                              </a>
                                <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                                  <div><i class="icon-shopping-cart"></i><span>Add to cart</span></div>
                                  </a> <a class="quick-view" href="quick_view.jsp">
                                  <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                                  </a> <a class="add_to_compare" href="compare.jsp">
                                  <div><i class="icon-random"></i><span>Add to compare</span></div>
                                  </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                                  <div><i class="icon-heart"></i><span>Add to Wishlist</span></div>
                                  </a>
                                 </div>
                              </div>
                              <div class="info">
                                <div class="info-inner">
                                  <div class="item-title"> <a href="#l" title=" Sample Product">${arr.p_name } </a> </div>
                                  <!--item-title-->
                                  <div class="item-content">
                                    <div class="ratings">
                                      <div class="rating-box">
                                        <div class="rating${arr.resultReview }"></div>
                                      </div>
                                    </div>
                                    <div class="price-box">
                                      <p class="special-price"> <span class="price"> ￦&nbsp;<fmt:formatNumber
																value="${arr.calculationPrice }" pattern="#,###,###"
																type="currency" /></span> </p>
                                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> ￦&nbsp;<fmt:formatNumber
																value="${arr.p_price }" pattern="#,###,###"
																type="currency" /></span> </p>
                                    </div>
                                  </div>
                                  <!--item-content--> 
                                </div>
                                <!--info-inner-->
                                
                                <div class="clearfix"> </div>
                              </div>
                            </div>
                          </div>
                          <!-- End Item --> 
                          </c:forEach>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="upsell-pro wow bounceInUp animated">
                    <div class="slider-items-products">
                      <div class="new_title center">
                        <h2>Upsell Products</h2>
                      </div>
                      <div id="upsell-products-slider" class="product-flexslider hidden-buttons">
                        <div class="slider-items slider-width-col4"> 
                          <c:forEach var="arr" items="${pUpSellList }">
                          <!-- Item -->
                          <div class="item">
                            <div class="col-item">
                              <div class="sale-label sale-top-right">Sale</div>
                              <div class="product-image-area"> <a class="product-image" title="Sample Product" href="product_detail?p_no=${arr.p_no }"> 
                              <img src="${arr.p_image }" class="img-responsive" alt="a" /> </a>
                                <div class="hover_fly"> <a class="exclusive ajax_add_to_cart_button" href="#" title="Add to cart">
                                  <div><i class="icon-shopping-cart"></i><span>Add to cart</span></div>
                                  </a> <a class="quick-view" href="quick_view.jsp">
                                  <div><i class="icon-eye-open"></i><span>Quick view</span></div>
                                  </a> <a class="add_to_compare" href="compare.jsp">
                                  <div><i class="icon-random"></i><span>Add to compare</span></div>
                                  </a> <a class="addToWishlist wishlistProd_5" href="wishlist.jsp" >
                                  <div><i class="icon-heart"></i><span>Add to Wishlist</span></div>
                                  </a> </div>
                              </div>
                              <div class="info">
                                <div class="info-inner">
                                  <div class="item-title"> <a href="#l" title=" Sample Product">${arr.p_name }</a> </div>
                                  <!--item-title-->
                                  <div class="item-content">
                                    <div class="ratings">
                                      <div class="rating-box">
                                        <div class="rating${arr.resultReview }"></div>
                                      </div>
                                    </div>
                                    <div class="price-box">
                                      <p class="special-price"> <span class="price"> ￦&nbsp;<fmt:formatNumber
																value="${arr.calculationPrice }" pattern="#,###,###"
																type="currency" /></span> </p>
                                      <p class="old-price"> <span class="price-sep">-</span> <span class="price"> ￦&nbsp;<fmt:formatNumber
																value="${arr.p_price }" pattern="#,###,###"
																type="currency" /></span> </p>
                                    </div>
                                  </div>
                                  <!--item-content--> 
                                </div>
                                <!--info-inner-->
                                
                                <div class="clearfix"> </div>
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
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
   </div>

  <!--End main-container --> 