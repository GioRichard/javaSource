<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
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
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/common/variable.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/manager/layout/css.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/manager/layout/js.jsp"></jsp:include>
</head>
<body class="sb-nav-fixed">
	<!-- nav -->
	<jsp:include page="/WEB-INF/views/manager/layout/nav.jsp"></jsp:include>
	<!-- end nav -->

	<div id="layoutSidenav">
	
		<!-- layoutSidenav -->
		<jsp:include page="/WEB-INF/views/manager/layout/layoutSidenav.jsp"></jsp:include>
		<!-- End layoutSidenav -->
		<div id="layoutSidenav_content">
			<main> 
					 <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                            <form action="${base }/admin/list_products" method="get">
                            
                            <a class="btn btn-outline-primary mb-1"
								href="${base }/admin/ad_product" role="button">Add New</a>
								
								<input type="text" name="keyword" value="${searchModel.keyword }"/>
                            	<button id ="btnSearch" name="btnSearch" type="submit" class="btn btn-primary">Search</button>
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Status</th>
                                            <th>Avatar</th>
                                            <th>Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>#</th>
                                            <th>Title</th>
                                            <th>Price</th>
                                            <th>Category</th>
                                            <th>Status</th>
                                            <th>Avatar</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody> 
                                    	<c:forEach items="${products }" var="product" varStatus="loop">
											<tr>
												<th scope="row">${loop.index + 1 }</th>
												<td>${product.title }</td>
												<td>${product.price }</td>
												<td>${product.categories.name }</td>
												<td>
													<span id="_product_status_${product.id }"> 
															<c:choose>
																<c:when test="${product.status }">
																	<span class="badge badge-primary" style="color: blue;">Active</span>
																</c:when>
																<c:otherwise>
																	<span class="badge badge-warning" style="color: red;">InActive</span>
																</c:otherwise>
															</c:choose>
													</span>
												</td>
												<td>
													<img class="picture" alt=""
													src="${base }/upload/${product.avatar}" style="width: 50px;">
												</td>
												<td>
													<a class="btn btn-primary edit-product"
													href=""
													role="button" style="font-size: 12px;"><i
														class="fas fa-edit"></i> Edit </a>
													<button type="button" style="font-size: 12px;"
														class="btn btn-danger" onclick="deleteProduct(${product.id});">
														 Delete
													</button>
												</td>
											</tr> 
										</c:forEach>   
                                    </tbody>
                                </table>
                                </form>
                          </div>
                          
                     </div>
               </main>       
			</div>
			
	<!-- 		<script type="text/javascript">
				function deleteProduct(id){

					 const isConfirm = window.confirm('Bạn có chắc muốn xóa sản phẩm này?')
					if(!isConfirm) return
					let data = {
							id: id,// lay theo id
					};
					$.ajax({
						url : "/removeProduct/" +id,
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),
						dataType: "json", // kieu du lieu tra ve la json
						success: function(jsonResult){
							
							const selector = "tr[data-id='" + jsonResult.id + "']";
							$(selector).remove();
							alert(jsonResult.message); 
							
						},
						error: function(jqXhr, textStatus, errorMessage){
							
							}
						}); 
					}
			</script> -->

			<!-- footer -->
			<jsp:include page="/WEB-INF/views/manager/layout/footer.jsp"></jsp:include>
			<!--End footer -->
		</div>
</body>
</html>


					                                           
					                                        