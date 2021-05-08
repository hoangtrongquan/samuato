<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<html>

		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1" />
			<meta name="description"
				content="Kuteshop is new Html theme that we have designed to help you transform your store into a beautiful online showroom. This is a fully responsive Html theme, with multiple versions for homepage and multiple templates for sub pages as well" />
			<meta name="keywords" content="kuteshop,7uptheme" />
			<meta name="robots" content="noodp,index,follow" />
			<meta name='revisit-after' content='1 days' />
			<title>Đại lý</title>
			<jsp:include page="linkcss.jsp"></jsp:include>
			<jsp:include page="linkjs.jsp"></jsp:include>
			<link rel="stylesheet" href="css/homepage.css">
			<link rel="stylesheet" href="./css/agency-style.css">
			<link rel="stylesheet" href="./css/news.css">
			<script src="js/back_to_top.js"></script>
			<style>
				.column {
					width: 100%;
					padding: 10px;
				}

				/* Remove extra left and right margins, due to padding */
				.row {
					margin: 0 -5px;
				}

				/* Clear floats after the columns */
				.row:after {
					content: "";
					display: table;
					clear: both;
				}

				/* Responsive columns */
				@media screen and (max-width: 600px) {
					.column {
						width: 100%;
						display: block;
						margin-bottom: 20px;
					}
				}

				/* Style the counter cards */
				.card {
					box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
					padding: 16px;
					background-color: #f1f1f1;
					display: flex;
				}
			</style>
		</head>
		<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />

		<body style="background: #f4f4f4">
			<div class="wrap">
				<jsp:include page="header.jsp"></jsp:include>
				<!-- End Header -->
				<div id="content">
					<div class="content-page">
						<div class="container">
							<div class="bread-crumb radius">
								<a href="#">Home</a> <span>Fashion</span>
							</div>
							<!-- End Bread Crumb -->
							<div class="row">
								<div class="col-md-3 col-sm-4 col-xs-12 moble">
									<div class="sidebar sidebar-left">
										<div class="widget widget-product-cat ">
											<h2 class="widget-title title14">Hãng xe</h2>
											<div class="widget-content">
												<ul>
													<c:forEach items="${cars}" var="item">
														<li><a
																href="/product-list-car?name=${item.name}">${item.name}</a>
														</li>
													</c:forEach>
												</ul>
											</div>
										</div>
										<!-- End widget -->
										<div class="widget widget-recent-post">
											<h2 class="widget-title title14">Sản phẩm nổi bật</h2>
											<div class="widget-content">
												<ul>
													<c:forEach items="${product}" var="item">
														<li>
															<div class="post-thumb">
																<a href="#" class="post-thumb-link"><img
																		src="images/Stech-image/${item.img}"
																		alt="" /></a>
															</div>
															<div class="post-info">
																<h3 class="post-title">
																	<a
																		href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																</h3>
																<ul class="post-date-comment">
																	<li><i class="fa fa-clock-o"
																			aria-hidden="true"></i><span>Dec.8.
																			2016</span></li>
																</ul>
															</div>
														</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-9 col-sm-8 col-xs-12">
									<div class="content-blog-page border radius">
										<div class="sort-pagi-bar clearfix">
											<h1 style="text-align: center;">Danh sách các đại lý</h1>
										</div>
										<!-- End Sort PagiBar -->
										<div class="content-blog-small">
											<c:forEach items="${agencys}" var="item">
												<div class="column">
													<div class="card">
														<div
															style="width: 200px; align-items: center; display: flex; justify-content: center; border-right: 2px solid #9a9a9a;">
															<h3 style="text-align: center;">${item.province}</h3>
														</div>
														<div
															style="text-align: left; margin-left: 20px; align-items: center;">

															<h4 style="font-weight: 600"><a
																	href="http://samautocare.net/"
																	target="_blank">${item.shop}</a></h4>
															<p><span style="color: blue">Số điện thoại:</span>
																${item.phone}</p>
															<p style="color: blue;">Địa chỉ: <a
																	href="${item.hrefAddress}"
																	target="_blank">${item.address}</a></p>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</body>

		</html>