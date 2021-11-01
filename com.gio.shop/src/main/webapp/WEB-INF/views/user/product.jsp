<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- https://cdnjs.com/libraries/normalize: trang lay thu vien reset CSS -->

<!-- SPRING FORM -->
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
	
	<!--JSTL  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${projectTitle}</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
	<link rel="stylesheet" href="${base}/user/fonts/fontawesome-free-5.15.4/css/all.min.css">
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
</head>
<body>

  	<!-- PHẦN ĐẦU -->
  	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
		<!-- HẾT THÚC PHẦN ĐẦU -->

  <!-- strart product -->
   <div class="grid wide">
        <div class="row product-container">
       <c:forEach items="${products }" var="product">
            <!-- card left -->
            <div class="col l-5 m-5 c-12 ">
            <img class="picture" alt=""
							src="${base }/upload/${product.avatar}" style="width: 50px;">
                <%-- <div class="product-imgs">
                    <div class = "img-display">
                        <div class = "img-showcase ">
                          <img  src = "${base}/user/img/picture2.jpg" alt = "image">
                          <img src = "${base}/user/img/picture2.jpg" alt = "image">
                          <img src = "${base}/user/img/picture3.jpg" alt = "image">
                          <img src = "${base}/user/img/picture4.jpg" alt = "image">
                        </div>
                    </div>

                    <div class = "img-select">
                        <div class = "img-item">
                          <a href = "${base}/user/img/picture4.jpg" data-id = "1">
                            <img src = "${base}/user/img/picture2.jpg" alt = "image">
                          </a>
                        </div>
                        <div class = "img-item">
                          <a href = "#" data-id = "2">
                            <img src = "${base}/user/img/picture2.jpg" alt = "image">
                          </a>
                        </div>
                        <div class = "img-item">
                          <a href = "#" data-id = "3">
                            <img src = "${base}/user/img/picture2.jpg" alt = "image">
                          </a>
                        </div>
                        <div class = "img-item">
                          <a href = "#" data-id = "4">
                            <img src = ".${base}/user/img/picture2.jpg" alt = "image">
                          </a>
                        </div>
                      </div>

                </div> --%>
            </div>

            <!-- card right -->
            <div class="col l-7 m-7 c-12">
                <div class = "product-content">
                	
                    <!-- <h2 class = "product-title">Vòng Cổ Cho Cún</h2> -->
                    <h2 class = "product-title">${product.title }</h2>
                    <!-- <a href = "#" class = "product-link">visit nike store</a> -->
                    <div class = "product-rating">
                      <i class = "icon-star fas fa-star"></i>
                      <i class = "icon-star fas fa-star"></i>
                      <i class = "icon-star fas fa-star"></i>
                      <i class = "icon-star fas fa-star"></i>
                      <i class = "icon-star fas fa-star-half-alt"></i>
                      <span>4.7(21)</span>
                    </div>
            
                    <div class = "product-price">
                      <!-- <p class = " text-price last-price">Giá Cũ: <span>50.000</span></p> -->
                  <p class = " text-price new-price">Giá Mới: <span>30.000 (5%)</span></p>
                    <p class = " text-price new-price">Giá Mới: <span>${product.price }</span></p>
                    </div>
            
                    <div class = "product-detail">
                      <h2>Thông tin sản phẩm: </h2>              
                      <!--  <p class="text-desc">+ Vòng  đeo cổ cho chó XDD với thiết kế dày dặn và chắc chắn, chiếc vòng cổ này sẽ nằm thật gọn gàng và êm ái trên cổ chú thú cưng của bạn, sẵn sàng cho mọi chuyến đi dạo hoặc chạy bộ đầy hứng khởi phía trước.
+ Ngoài tác dụng giúp bạn giữ chặt và theo sát chú thú cưng của mình, thời trang của chiếc vòng đeo cổ còn là điểm nhấn nổi bật để chú thú cưng của bạn trông thật “sành điệu”.
                    </p> -->
                    <p class="text-desc">${product.detail }</p>
                    
                      <!-- <ul>
                        <li>Color: <span>Black</span></li>
                        <li>Available: <span>in stock</span></li>
                        <li>Category: <span>Shoes</span></li>
                        <li>Shipping Area: <span>All over the world</span></li>
                        <li>Shipping Fee: <span>Free</span></li>
                      </ul> -->
                    </div>
                    
                    <div class = "purchase-info">
                      <span class="text-heading">So lượng: </span>
                      <input type = "number" min = "0" value = "1">
                    </div>

                    <div class = "purchase-info">
                      <button type = "button" class = "btn " onclick="addToCart(${product.id},1)">
                        Giỏ Hàng <i class = "fas fa-shopping-cart icon-cart"></i>
                      </button>
                      <button type = "button" class = "btn">Mua</button>
                    </div>
            
                    <div class = "social-links">
                      <p class="text-heading">Share: </p>
                      <a href = "#">
                        <i class = "fab fa-facebook-f"></i>
                      </a>
                      <!-- <a href = "#">
                        <i class = "fab fa-message"></i>
                      </a> -->
                      <a href = "#">
                        <i class = "fab fa-instagram"></i>
                      </a>
                      <a href = "#">
                        <i class = "fab fa-tiktok"></i>
                      </a>
                      <a href = "#">
                        <i class = "fab fa-youtube"></i>
                      </a>
                    </div>
                </div>   
            </div>
              </c:forEach>
         </div> 
        </div> 
        

        
        
    	<script type="text/javascript">
    		addToCart = function(productId, quality) {
    			let data = {
    					productId: productId,  //lay theo id
    					quanlity: quality //lay theo id
    					
    			};
    			
    			
    		
    			//$ ===jQuery
    			jQuery.ajax({
    				url : "/cart/add",
    				type : "post",
    				contentType : "application/json",
    				data : JSON.stringify(data),
    				
    				dataType : "json", //kieu tra ve tu controller la json
    				success : function(jsonResult){
    					
    				},
    				error : function(jqXhr, textStatus, errorMessage){ //error callback
    					
    				}
    			});
			}
    	</script>
    	<!-- end product -->
			<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
		
		<!-- HẾT PHẦN CUỐI -->

   
</body>
</html>