
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
	<div class="app">
	
		<!-- PHáº¦N Äáº¦U -->
		<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>
		<!-- Háº¾T THÃC PHáº¦N Äáº¦U -->

		<!-- SLIDER  -->
		<div class="slider">
			<div class="grid wide">
				<img src="${base}/user/img/slider1.png" alt="áº£nh minh há»a" class="slider-img">
			</div>
		</div>



		<!-- PHáº¦N THÃN -->
		<div class="app__container">
			<div class="grid wide">
				<div class="row sm-gutter app__content">
					<div class="col l-2 m-0 c-0">
						<nav class="category">
							<h3 class="category__heading">
								Danh mục
							</h3>
						
								<c:forEach var = "category" items="${categories }">
						         		<%-- <p>${category.name}</p> --%>
						         		<ul class="category-list">
											<li class="category-item category-item--active">
												<a href="" class="category-item-link">${category.name}</a>
											</li>
											<%-- <li class="category-item">
												<a href="" class="category-item-link"><p>${category.name}</p></a>
											</li>
											<li class="category-item">
												<a href="" class="category-item-link"><p>${category.name}</p></a>
											</li>
											<li class="category-item category-item--active">
												<a href="" class="category-item-link"><p>${category.name}</p></a>
											</li>
											<li class="category-item">
												<a href="" class="category-item-link"><p>${category.name}</p></a>
											</li>
											<li class="category-item">
												<a href="" class="category-item-link"><p>${category.name}</p></a>
											</li> --%>
										</ul>
						         		
						     	</c:forEach>
						

								
							<!-- <ul class="category-list">
								<li class="category-item category-item--active">
									<a href="" class="category-item-link">Phụ kiện cho thú cưng</a>
								</li>
								<li class="category-item">
									<a href="" class="category-item-link">Thức ăn cho thú cưng</a>
								</li>
								<li class="category-item">
									<a href="" class="category-item-link">Thời trang thú cưng</a>
								</li>
								<li class="category-item category-item--active">
									<a href="" class="category-item-link">Phụ kiện cho thú cưng</a>
								</li>
								<li class="category-item">
									<a href="" class="category-item-link">Thức ăn cho thú cưng</a>
								</li>
								<li class="category-item">
									<a href="" class="category-item-link">Thời trang thú cưng</a>
								</li>
							</ul> -->
							
						</nav>
					</div>

					<div class="col l-10 m-12 c-12">
						<!-- HOME FILTER -->
						<div class="home-filter hide-on-mobile-tablet">
							<span class="home-filter__label">Sắp xếp theo</span>
							<button class="home-filter__btn btn">Phổ biến</button>
							<button class="home-filter__btn btn btn--primary">Mới nhất</button>
							<button class="home-filter__btn btn">Bán chạy</button>
							
							<div class="select-input">
								<span class="select-input__label">Giá</span>
								<i class="select-input-icon fas fa-angle-down"></i>

								<ul class="select-input__list">
									<li class="select-input__item">
										<a href="" class="select-input__link">Giá thấp đến cao</a>
									</li>
									<li class="select-input__item">
										<a href="" class="select-input__link">Giá cao đến thấp</a>
									</li>
								</ul>
							</div>
							<div class="home-filter__page">
								<span class="home-filter__page-num">
									<span class="home-filter__page-curent">1</span>/10
								</span>

								<div class="home-filter__page-control">
									<a href="" class="home-filter__page-btn home-filter__page-btn-disabled ">
										<i class="home-filter__page-icon fas fa-angle-left"></i>
									</a>
									<a href="" class="home-filter__page-btn">
										<i class="home-filter__page-icon fas fa-angle-right"></i>
									</a>
								</div>

							</div>
						</div>
						<!-- END HOME FILTER -->

						<nav class="mobile-category">
							<ul class="mobile-category__list">
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thời trang</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Phụ kiện</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thức ăn</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thời trang </a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thời trang</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Phụ kiện</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thức ăn</a>
								</li>
								<li class="mobile-category__item">
									<a href="" class="mobile-category__link">Thời trang</a>
								</li>
							</ul>
						</nav>
						
						
						<!-- LIST PRODUCT -->
						<div class="home-product">
								<div class="row sm-gutter">

									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/def43820172bb9778e087a7790bc7034_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>

									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/def43820172bb9778e087a7790bc7034_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/a61c1623daffdb6974b580d33cba49f2_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/0ce677fa2c10b80c078a5cf73c03ebe4_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/806da55554052910aa0f0b05a95aa2b7_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/215d0a0279ea2582a765a42b7d33ffb2_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/51ddfa19b1f0852b4f27f0a65bb3fd4e_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/e494811a25f82b617b4776b8cd8ed29d_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/31f219dda400fcfaffbf487c01d5c411_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
									<!-- product item -->
									<div class="col l-2-4 m-3 c-6">
										<a href="${base }/product" class="product-item-link">
											<div class="home-product-item">
												<div class="home-product-item__img" style="	background-image: url(https://cf.shopee.vn/file/31f219dda400fcfaffbf487c01d5c411_tn);"></div>
												<h4 class="home-product-item__name">Vòng cổ cho chó, vòng cổ bằng dù cho chó có nệm lót khóa gài lỗ lim loại</h4>
												<div class="home-product-item__price">
													<span class="home-product-item__price-old">50.000</span>
													<span class="home-product-item__price-current">30.000</span>
												</div>
												<div class="home-product-item__active">
													<span class="home-product-item__like home-product-item__like--liked">
														<i class="home-product-item__like-icon-empty far fa-heart"></i>
														<i class="home-product-item__like-icon-fill fas fa-heart"></i>
													</span>

													<div class="home-product-item__rating">
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="home-product-item__star--gold fas fa-star"></i>
														<i class="fas fa-star"></i>
													</div>
													<div class="home-product-item__sold">10 đã bán</div>
												</div>

												<div class="home-product-item__origin">
													<!-- <span class="home-product-item__origin-brand">GIPO</span> -->
													<span class="home-product-item__origin-name">Hà Nội</span>
												</div>

												<div class="home-product-item__favourite">
													<i class="fas fa-check"></i>
													<span>Yêu thích</span>
												</div>

												<div class="home-product-item__sale-off">
													<span class="home-product-item__sale-off-percent">10%</span>
													<span class="home-product-item__sale-off-name">GIẢM</span>
												</div>
											</div>
										</a>
									</div>
								</div>
						</div>

						<ul class="pagination home-product__pagination">
							<li class="pagination-item">
								<a href="" class="pagination-item__link">
									<i class="pagination-item__icon  fas fa-angle-left"></i>              
								</a>
							</li>
							<li class="pagination-item pagination-item--active">
								<a href="" class="pagination-item__link">1</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">2</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">3</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">4</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">5</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">...</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">10</a>
							</li>
							<li class="pagination-item">
								<a href="" class="pagination-item__link">
									<i class="pagination-item__icon fas fa-angle-right"></i>              
								</a>
							</li>
						</ul>

					</div>
				</div>
			</div>
		</div>
		<!-- Háº¾T PHáº¦N THÃN -->




		 <!-- PHáº¦N CUá»I -->
		<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
		<!-- Háº¾T PHáº¦N CUá»I -->
	</div>

	<!-- DAO DIEN MODAL -->
	<!-- <div class="modal">
		<div class="modal__overlay"></div>

		<div class="modal__body"> -->
				<!-- register form / Dang  ky -->
					<!-- <div class="auth-form">
						<div class="auth-form__container">
							<div class="auth-form__header">
								<h3 class="auth-form__heading">ÄÄng kÃ½</h3>
								<span class="auth-form__switch-btn">ÄÄng nháº­p</span>
							</div>

							<div class="auth-form__form">
								<div class="auth-form__group">
									<input type="text" class="auth-form__input" placeholder="Email cá»§a báº¡n">
								</div>
								<div class="auth-form__group">
									<input type="password" class="auth-form__input" placeholder="Máº­t kháº©u">
								</div>
								<div class="auth-form__group">
									<input type="password" class="auth-form__input" placeholder="Nháº­p láº¡i máº­t kháº©u">
								</div>
							</div>

							<div class="auth-form__aside">
								<p class="auth-form__policy-text">
									Báº±ng viá»c ÄÄng kÃ½, báº¡n Äá»ng Ã½ vá»i GiÃ³ Shop Pet vá»
									<a href="" class="auth-form__text-link">Äiá»u khoáº£n dá»ch vá»¥</a> &
									<a href="" class="auth-form__text-link">ChÃ­nh sÃ¡ch báº£o máº­t</a>
								</p>
							</div>

							<div class="auth-form__controls">
								<button class="btn--normal btn auth-form__controls-back"> TRá» Láº I</button>
								<button class="btn btn--primary"> ÄÄNG KÃ</button>
							</div>
						</div>

						<div class="auth-form__socials">
							<a href="" class="auth-form__socials--facebook btn btn--size-s btn--with-icon">
								<i class="auth-form__socials-icon fab fa-facebook"></i>
								<span class="auth-form__socials-title">Káº¿t ná»i vá»i Facebook</span>
							</a>
							<a href="" class="auth-form__socials--google btn btn--size-s btn--with-icon">
								<img src="assets/img/4.png" alt="" class="auth-form__socials-img">
								<span class="auth-form__socials-title">Káº¿t ná»i vá»i Google</span>
							</a>
						</div>
				</div>	 -->
				<!-- Login form / Dang  nhap --> <!-- <i class="auth-form__socials-icon fab fa-google"></i> -->
				 <!-- <div class="auth-form">
					<div class="auth-form__container">
						<div class="auth-form__header">
							<h3 class="auth-form__heading">ÄÄng nháº­p</h3>
							<span class="auth-form__switch-btn">ÄÄng kÃ½</span>
						</div>

						<div class="auth-form__form">
							<div class="auth-form__group">
								<input type="text" class="auth-form__input" placeholder="Email/Sá» Äiá»n thoáº¡i/TÃªn ÄÄng nháº­p">
							</div>
							<div class="auth-form__group">
								<input type="password" class="auth-form__input" placeholder="Máº­t kháº©u">
							</div>
						</div>

						<div class="auth-form__aside">
							<div class="auth-form__help">
								<a href="" class="auth-form__help-link auth-form__help-forgot"> QuÃªn máº­t kháº©u</a>
								<span class="auth-form__help-separate"></span>
								<a href="" class="auth-form__help-link">Cáº§n trá»£ giÃºp?</a>
							</div>
						</div>

						<div class="auth-form__controls">
							<button class="btn--normal btn auth-form__controls-back"> TRá» Láº I</button>
							<button class="btn btn--primary"> ÄÄNG NHáº¬P</button>
							
						</div>
					</div>

					<div class="auth-form__socials">
						<a href="" class="auth-form__socials--facebook btn btn--size-s btn--with-icon">
							<i class="auth-form__socials-icon fab fa-facebook"></i>
							<span class="auth-form__socials-title">Káº¿t ná»i vá»i Facebook</span>
						</a>
						<a href="" class="auth-form__socials--google btn btn--size-s btn--with-icon">
							<img src="assets/img/4.png" alt="" class="auth-form__socials-img">
							<span class="auth-form__socials-title">Káº¿t ná»i vá»i Google</span>
						</a>
					</div>
				</div> -->
		</div>
	</div>


	

</body>
</html>

