
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<header class="header">
	<div class="grid wide">
		<nav class="header__navbar hide-on-mobile-tablet ">
			<ul class="header__navbar-list">
				<li
					class="header__navbar-item header__navbar-item--has--qr header__navbar-item--separate">
					Cửa hàng Gió Shoppet
					<div class="header__qr">
						<img
							src="${base}/user/img/qr.png"
							alt="QR code" class="header__qr-img">
						<div class="header__qr-apps">
							<a href="" class="header__qr-link"> <img
								src="${base}/user/img/google_play.png"
								alt="Google Play"
								class="header__qr-dowload-img header__qr-dowload-img-chplay">
							</a> <a href="" class="header__qr-link"> <img
								src="${base}/user/img/appstore.png"
								alt="App Store" class="header__qr-dowload-img">
							</a>
						</div>
					</div>
				</li>
				<li class="header__navbar-item"><span
					class="header__navbar-title--no--pointer"> Kết nối</span> <a
					href="" class="header__navbar-icon-link"> <i
						class="header__navbar-icon fab fa-facebook"></i>
				</a> <a href="" class="header__navbar-icon-link"> <i
						class="header__navbar-icon fab fa-instagram"></i>
				</a></li>
			</ul>

			<ul class="header__navbar-list">
				<li class="header__navbar-item header__navbar-item--has--notify">
					<a href="" class="header__navbar-item-link"> <i
						class="header__navbar-icon far fa-bell"></i> Thông báo
				</a>
					<div class="header__notify">
						<header class="header__notify-header">
							<h3>Thông báo mới nhận</h3>
						</header>
						<ul class="header__notify-listt">
							<li class="header__notify-item"><a href=""
								class="header__notify-link"> <img
									src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
									alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Mỹ phẩm Ohi chính hãng cac san pham chat luong</span> <span
											class="header__notify-descriotion">Gio ShopPet la giai phap xac thuc hang chinh hang bang cong nghe tien tien nhat hien nay.Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội</span>
									</div>
							</a></li>
							<li class="header__notify-item header__notify-item--viewed">
								<a href="" class="header__notify-link"> <img
									src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
									alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Mỹ phẩm Ohi chính hãng</span> <span class="header__notify-descriotion">Mỹ phẩm Ohi chính hãng</span>


									</div>
							</a>
							</li>
							<li class="header__notify-item header__notify-item--viewed">
								<a href="" class="header__notify-link"> <img
									src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
									alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Mỹ phẩm Ohi chính hãng</span>
										 <span class="header__notify-descriotion">Mỹ phẩm Ohi chính hãng</span>


									</div>
							</a>
							</li>
							<li class="header__notify-item"><a href=""
								class="header__notify-link"> <img
									src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
									alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Mỹ phẩm Ohi chính hãng</span> 
										<span class="header__notify-descriotion">Mỹ phẩm Ohi chính hãng</span>


									</div>
							</a></li>
						</ul>
						<footer class="header__notify-footer">
							<a href="" class="header__notify-footer-btn">Xem tất cả</a>
						</footer>
					</div>
				</li>
				<li class="header__navbar-item"><a href="${base }/contact"
					class="header__navbar-item-link"> <i
						class="header__navbar-icon far fa-question-circle"></i> Trợ giúp
				</a></li>
				<!-- ************PHáº¦N NGÆ¯á»I DÃNG CHÆ¯A ÄÄNG KÃ************ -->
				<!-- <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate "> ÄÄng kÃ½</li>
					<li class="header__navbar-item header__navbar-item--strong"> ÄÄng Nháº­p</li> -->

				<!-- ************PHáº¦N NGÆ¯á»I DÃNG ÄÃ ÄÄNG NHáº¬P************ -->
				<li class="header__navbar-item header__navbar-user "><img
					src="https://cf.shopee.vn/file/9887f0a4e6f1c18429a25444187efac5_tn"
					alt="" class="header__navbar-user-img"> <span
					class="header__navbar-user-name">Hà Quốc Phong</span>
					<ul class="header__navbar-user-menu">
						<li class="header__navbar-user-item"><a href="">Tài khoản của tôi</a></li>
						<li class="header__navbar-user-item"><a href="">Địa chỉ của tôi</a></li>
						<li class="header__navbar-user-item"><a href="">Đơn mua</a>
						</li>
						<li
							class="header__navbar-user-item header__navbar-user-item--separate">
							<a href="${base }/login">Đăng xuất</a>
						</li>
					</ul></li>
			</ul>
		</nav>

		<!-- HEADER WITH SEARCH -->
		<div class="header-with-search">
			<!-- search mobile -->
			<label for="mobile-search-checkbox" class="header__mobile-search">
				<i class="header__mobile-search-icon fas fa-search"></i>
			</label>
			<!-- end searh mobile -->
			<div class="header__logo">
				<a href="${base }/index" class="header__logo-link"> <img
					class="header__logo-img" src="${base}/user/img/logo.png" alt="">
				</a>
			</div>

			<input type="checkbox" hidden id="mobile-search-checkbox"
				class="header__search-checkbox">

			<div class="header__search ">
				<div class="header__search-input-wrap">
					<input type="text" class="header__search-input"
						placeholder="Nhập sản phẩm tìm kiếm">

					<!-- SEARCH HISTORY  -->
					<div class="header__search-history">
						<h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
						<ul class="header__search-history-list">
							<li class="header__search-history-item"><a href="">Kem dưỡng da</a></li>
							<li class="header__search-history-item"><a href="">Kem dưỡng nắng</a></li>
							<li class="header__search-history-item"><a href="">Kem làm mát</a></li>
						</ul>
					</div>
				</div>
				<div class="header__search-select hide-on-tablet">
					<span class="header__search-select-label">Trong Shop</span> <i
						class="header__search-select-icon fas fa-angle-down"></i>

					<ul class="header__search-option">
						<li
							class="header__search-option-item header__search-option-item--active">
							<span>Trong Shop</span> <i class="fas fa-check"></i>
						</li>
						<li class="header__search-option-item"><span>Ngoài
								Shop</span> <i class="fas fa-check"></i></li>
					</ul>
				</div>
				<button class="header__search-btn">
					<i class=" header__search-btn-icon fas fa-search"></i>
				</button>
			</div>

			<!-- CART LAYOUT -->
			<div class="header__cart">
				<div class="header__cart-wrap">
					<i class="header__cart-icon fas fa-shopping-cart"></i> <span
						class="header__cart-notice">10</span>

					<!-- No cart: header__cart-list--no--cart -->
					<div class="header__cart-list">
						<img src="${base}/user/img/no_cart1.png" alt=""
							class="header__cart-no-cart-img">

						<h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
						<ul class="header__cart-list-item">
							<!-- CART ITEM -->
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">Xóa</span>
									</div>
								</div></li>
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">XÃ³a</span>
									</div>
								</div></li>
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">Xóa</span>
									</div>
								</div></li>
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">Xóa</span>
									</div>
								</div></li>
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">Xóa</span>
									</div>
								</div></li>
							<li class="header_cart-item"><img
								src="https://cf.shopee.vn/file/080e3fe11aed44804c64f5c7c91f8b8a_tn"
								alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo sơ mi cao cấp chất lượng cao, vai thun mát, phù hợp mọi nữa tuổi.</h5>
										<div class="header__cart-item-price-wrap">
											<span class="header__cart-item-price">200.000</span> <span
												class="header__cart-item-multipl">X</span> <span
												class="header__cart-item-qnt">2</span>
										</div>
									</div>

									<div class="header__cart-item-body">
										<span class="header__cart-item-discription">Phân loại: Bạc</span> <span class="header__cart-item-remove">Xóa</span>
									</div>
								</div></li>
						</ul>

						<a href="#" class="btn btn--primary btn header__cart-view-cart">Xem giỏ hàng</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- header sort bar -->
	<ul class="header__sort-bar">
		<li class="header__sort-item"><a href=""
			class="header__sort-link">Shop</a></li>
		<li class="header__sort-item header__sort-item--active"><a
			href="" class="header__sort-link">Sản phẩm</a></li>
		<li class="header__sort-item"><a href=""
			class="header__sort-link">Hàng Mới</a></li>
		<li class="header__sort-item"><a href=""
			class="header__sort-link">Giá</a></li>
	</ul>
</header>