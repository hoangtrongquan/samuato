<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Kuteshop is new Html theme that we have designed to help you transform your store into a beautiful online showroom. This is a fully responsive Html theme, with multiple versions for homepage and multiple templates for sub pages as well" />
<meta name="keywords" content="kuteshop,7uptheme" />
<meta name="robots" content="noodp,index,follow" />
<meta name='revisit-after' content='1 days' />
<title>Home</title>
<jsp:include page="linkcss.jsp"></jsp:include>
<jsp:include page="linkjs.jsp"></jsp:include>
<link rel="stylesheet" href="css/homepage.css">
<link rel="stylesheet" href="./css/news.css">
<script src="js/back_to_top.js"></script>
</head>

<body style="background: #f4f4f4">
	<button onclick="topFunction()" id="myBtn" title="Go to top"
		style="position: fixed; bottom: 20px; right: 30px; z-index: 99; font-size: 18px; border: none; outline: none; background-color: #ff4400; color: white; cursor: pointer; padding: 15px; border-radius: 4px;">
		<i class="fa fa-angle-double-up" style="width: 20px;"></i>
	</button>
	<div class="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div class="top-banner7">
				<div class="container">
					<div class="banner-slider banner-slider7">
						<div class="wrap-item" data-pagination="false"
							data-navigation="true" data-itemscustom="[[0,1]]">
							<div class="item-banner7">
								<div class="banner-thumb">
									<a href="#"><img src="images/home7/slide1.jpg" alt="" /></a>
								</div>
								<div
									class="banner-info text-uppercase right-to-left time-delay1">
									<h2 class="title60 color bottom-to-top time-delay2">Màn hình Stech</h2>
									<p class="bottom-to-top time-delay3">Lắp đặt màn hình Stech S800</p>
									<div class="bottom-to-top time-delay4">
										<a href="/page-news-full?title=Lắp%20đặt%20màn%20hình%20Steach%20S800" class="btn-rect bg-color white radius ">Đọc ngay</a>
									</div>
								</div>
							</div>
							<div class="item-banner7">
								<div class="banner-thumb">
									<a href="#"><img src="images/home7/slide2.jpg" alt="" /></a>
								</div>
								<div
									class="banner-info text-uppercase right-to-left time-delay1">
									<h2 class="title60 color bottom-to-top time-delay2">Màn hình Stech</h2>
									<p class="bottom-to-top time-delay3">Lắp đặt màn hình Stech S600</p>
									<div class="bottom-to-top time-delay4">
										<a href="/page-news-full?title=Lắp%20đặt%20màn%20hình%20Steach%20S600" class="btn-rect bg-color white radius ">Đọc ngay</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End Service -->
					<div style="text-align: center;">
						<h2>GIỚI THIỆU VỀ</h2>
					</div>
					<div class="introduce">
						<div class="image1 imagecenter">
							<img src="./images/Stech-image/stech.jpg" style="height: 250px;">
						</div>
						<div class="gioithieu">
							<div>
								<p>M&agrave;n h&igrave;nh Android &ocirc; t&ocirc; l&agrave; một sản phẩm Lu&ocirc;n được mọi người quan t&acirc;m nhiều nhất gi&uacute;p thỏa m&atilde;n c&aacute;c nhu cầu của người sử dụng xe như nghe nhạc v&agrave; xem tin tức, học tập, giải tr&iacute; cụ thể như xem youtube, kết nối internet 4G LTE , thu ph&aacute;t s&oacute;ng Wifi, camera h&agrave;nh tr&igrave;nh, camera 360, ...</p>
								<p>Hiện nay m&agrave;n h&igrave;nh theo xe &ocirc; t&ocirc; chỉ đ&aacute;p ứng được một v&agrave;i t&iacute;nh năng cơ bản. Ch&iacute;nh v&igrave; vậy M&agrave;n h&igrave;nh Android STECH l&agrave; một sản phẩm c&ocirc;ng nghệ c&oacute; tất cả c&aacute;c t&iacute;nh năng hỗ trợ người l&aacute;i xe an to&agrave;n, chỉ đường cảnh b&aacute;o tốc độ, giải tr&iacute; đa phương tiện, kết nối internet 4G LTE.</p>
								<p>M&agrave;n h&igrave;nh Android &ocirc; t&ocirc; Stech l&agrave; m&agrave;n h&igrave;nh DVD Android c&oacute; cấu h&igrave;nh khủng nhất với CPU Chip octa core 8 nh&acirc;n, giao diện đẹp, độ ph&acirc;n giải m&agrave;n h&igrave;nh Qled 1280x720, Cường lực 2.5d, c&oacute; hai k&iacute;ch thước 9inch, 10 inch, c&oacute; thể lắp đặt tr&ecirc;n mọi d&ograve;ng xe tại Việt Nam&hellip;..</p>
							</div>
						</div>
					</div>
					<div class="product">
						<h1>SẢN PHẨM MÀN HÌNH DVD ANDROID STECH</h1>
						<hr>
					</div>
					<div class="contenmodel123">
						<div class="cards">
							<c:forEach items="${s}" var="item">
								<div class="card">
									<div class="nameCard imagecenter">
										<a
											href="/page-news-full?title=Lắp%20đặt%20màn%20hình%20Steach%20${item.name}">
											<img src="./images/Stech-image/${item.img}" width="90px"
											height="auto">
										</a>
									</div>
									<div class="infoCard">
										<a
											href="/page-news-full?title=Lắp%20đặt%20màn%20hình%20Steach%20${item.name}"
											style="font-weight: 600;">${item.name}</a> ${item.infoScreen}
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- End Top Banner -->
			<div class="container">
				<div class="product-tab-ajax title-box6">
					<div class="tab-pro-ajax-header">
						<h2>S200</h2>
					</div>
					<div class="tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="clearfix">
								<c:forEach items="${screens200}" var="item">
									<div class="item-product-ajax item-product">
										<div class="product-thumb">
											<a
												href="/detail?name=${item.name}&&screen=${item.screen.name}"
												class="product-thumb-link"> <img
												src="images/Stech-image/${item.img}" alt="" />
											</a>
										</div>
										<div class="product-info">
											<h3 class="product-title" title="PAJERO 2010">
												<a
													href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
											</h3>
											<div class="product-price">
												<ins>
													<c:set var="balance" value="${item.price}" />
													<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
															value="${balance}" type="currency" pattern="####,###,###" />
														vnd
													</span>
												</ins>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- hết thẻ card -->
							</div>
						</div>
					</div>
				</div>
				<div class="product-tab-ajax title-box6">
					<div class="tab-pro-ajax-header">
						<h2>S400</h2>
					</div>
					<div class="tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="clearfix">
								<c:forEach items="${screenS400}" var="item">
									<div class="item-product-ajax item-product">
										<div class="product-thumb">
											<a
												href="/detail?name=${item.name}&&screen=${item.screen.name}"
												class="product-thumb-link"> <img
												src="images/Stech-image/${item.img}" alt="" />
											</a>
										</div>
										<div class="product-info">
											<h3 class="product-title" title="PAJERO 2010">
												<a
													href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
											</h3>
											<div class="product-price">
												<ins>
													<c:set var="balance" value="${item.price}" />
													<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
															value="${balance}" type="currency" pattern="####,###,###" />
														vnd
													</span>
												</ins>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- hết thẻ card -->
							</div>
						</div>
					</div>
				</div>
				<div class="product-tab-ajax title-box6">
					<div class="tab-pro-ajax-header">
						<h2>S600</h2>
					</div>
					<div class="tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="clearfix">
								<c:forEach items="${screenS600}" var="item">
									<div class="item-product-ajax item-product">
										<div class="product-thumb">
											<a
												href="/detail?name=${item.name}&&screen=${item.screen.name}"
												class="product-thumb-link"> <img
												src="images/Stech-image/${item.img}" alt="" />
											</a>
										</div>
										<div class="product-info">
											<h3 class="product-title" title="PAJERO 2010">
												<a
													href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
											</h3>
											<div class="product-price">
												<ins>
													<c:set var="balance" value="${item.price}" />
													<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
															value="${balance}" type="currency" pattern="####,###,###" />
														vnd
													</span>
												</ins>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="product-tab-ajax title-box6">
					<div class="tab-pro-ajax-header">
						<h2>S800</h2>
					</div>
					<div class="tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="clearfix">
								<c:forEach items="${screenS800}" var="item">
									<div class="item-product-ajax item-product">
										<div class="product-thumb">
											<a
												href="/detail?name=${item.name}&&screen=${item.screen.name}"
												class="product-thumb-link"> <img
												src="images/Stech-image/${item.img}" alt="" />
											</a>
										</div>
										<div class="product-info">
											<h3 class="product-title" title="PAJERO 2010">
												<a
													href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
											</h3>
											<div class="product-price">
												<ins>
													<c:set var="balance" value="${item.price}" />
													<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
															value="${balance}" type="currency" pattern="####,###,###" />
														vnd
													</span>
												</ins>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Why Testimo -->
		</div>
		<!-- End Content -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>

</html>