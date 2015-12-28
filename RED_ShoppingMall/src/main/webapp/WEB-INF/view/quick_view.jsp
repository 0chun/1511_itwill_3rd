<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="fancybox-overlay">
  <div id="fancybox-wrap">
    <div id="fancybox-outer">
      <div id="fancybox-content"> <a href="index.jsp"></a>
        <div>
          <div class="product-view">
            <div class="product-essential">
                <input name="form_key" value="6UbXroakyQlbfQzK" type="hidden">
                <div class="product-img-box col-lg-6 col-sm-6 col-xs-12">
                  <ul class="moreview" id="moreview">
                    <li class="moreview_thumb thumb_1"> <img id="moreview_img_1" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_1" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_1" class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_2 moreview_thumb_active"> <img id="moreview_img_2" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_2" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_2" class="zoomImg" src="images/product4.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_3"> <img id="moreview_img_3" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_3" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_3" class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_4"> <img id="moreview_img_4" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_4" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_4" class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_5"> <img id="moreview_img_5" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_5" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_5" class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                    <li class="moreview_thumb thumb_6"> <img id="moreview_img_6" class="moreview_thumb_image" src="products-images/product1.jpg" alt="thumbnail"> <img id="source_img_6" class="moreview_source_image" src="products-images/product1.jpg" alt=""> <span class="roll-over">Roll over image to zoom in</span> <img id="zoom_img_6" class="zoomImg" src="products-images/product1.jpg" alt="thumbnail"></li>
                  </ul>
                  <div class="moreview-control"> <a href="javascript:void(0)" class="moreview-prev"></a> <a href="javascript:void(0)" class="moreview-next"></a> </div>
                </div>
                <div class="product-shop col-lg-6 col-sm-6 col-xs-12">
                  <div class="product-next-prev"> <a class="product-next" href="#"><span></span></a> <a class="product-prev" href="#"><span></span></a> </div>
                  <div class="product-name">
                    <h1 id="p_name">심플</h1>
                  </div>
                  <div class="ratings">
                    <div class="rating-box">
                      <div class="rating"></div>
                    </div>
                    <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Your Review</a> </p>
                  </div>
                  <p class="availability in-stock">Availability: <span>In stock</span></p>
                  <div class="price-block">
                    <div class="price-box">
                      <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price" id="p_price"> $315.99 </span> </p>
                      <p class="special-price"> <span class="price-label">Special Price</span> <span class="price" id="p_dc_price"> $309.99 </span> </p>
                    </div>
                  </div>
                 <div> <!-- style="display:none" -->
                    <label for="qty">색상:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                   <select id="colorSelect">
                   	<option value="0">색상을 선택하세요.</option>
                   </select>
                  </div>
                  <br/>
                  <div>
                    <label for="qty">사이즈:&nbsp;</label>
                    <select id="sizeSelect">
                   	<option value="0">사이즈를 선택하세요.</option>
                   </select>
                  </div>
                  <div class="add-to-box">
                    <div class="add-to-cart">
                      <label for="qty">Quantity:</label>
                      <div class="pull-left">
                        <div class="custom pull-left">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;" class="reduced items-count" type="button"><i class="icon-minus">&nbsp;</i></button>
                          <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="icon-plus">&nbsp;</i></button>
                        </div>
                      </div>
                      <form id="product_form" action="addCart" method="POST">
                   		<input id="p_no" name="p_no" value="" type="hidden"/>
					  	<input id="p_size" name="p_size" type="hidden"/>
					 	<input id="p_color" name="p_color" type="hidden"/>
					 	<input id="p_qty" name="p_qty" type="hidden"/>
					 </form>
                      <button onClick="addCart(product_form)" class="button btn-cart" title="Add to Cart" type="button"><span><i class="icon-basket"></i> Add to Cart</span></button>
                      <div class="email-addto-box">
                        <ul class="add-to-links">
                          <li> <a class="link-wishlist" href="wishlist.jsp"><span>Add to Wishlist</span></a></li>
                          <li><span class="separator">|</span> <a class="link-compare" href="compare.jsp"><span>Add to Compare</span></a></li>
                        </ul>
                        <p class="email-friend"><a href="#" class=""><span>Email to a Friend</span></a></p>
                      </div>
                    </div>
                  </div>
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
          </div>
          <!--product-view--> 
          
        </div>
      </div>
      <a id="fancybox-close" href=""></a> </div>
  </div>
</div>
 


