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
			<title>Tin tức</title>
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
				<!-- End Header -->
				<div id="content">
					<div class="content-page">
						<div class="container">
							<div class="bread-crumb radius">
								<a href="#">Home</a> <span>Fashion</span>
							</div>
							<!-- End Bread Crumb -->
							<div class="row">
								<div class="col-md-3 col-sm-4 col-xs-12">
									<div class="sidebar sidebar-left">
										<div class="widget widget-product-cat">
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
											<div class="sort-bar select-box pull-left">
												<label>Sort By:</label> <select>
													<option value="">position</option>
													<option value="">price</option>
												</select>
											</div>
											<div class="sort-paginav pull-right">
												<div class="show-bar select-box">
													<label>Show:</label> <select>
														<option value="">20</option>
														<option value="">12</option>
														<option value="">24</option>
													</select>
												</div>
												<div class="pagi-bar">
													<a href="#" class="current-page">1</a> <a href="#">2</a> <a href="#"
														class="next-page"><i class="fa fa-caret-right"
															aria-hidden="true"></i></a>
												</div>
											</div>
										</div>
										<!-- End Sort PagiBar -->
										<div class="content-blog-small">
											<c:forEach items="${newsList}" var="item">
												<div class="item-post-small">
													<div class="row">
														<div class="col-md-5 col-sm-6 col-xs-12">
															<div class="post-thumb">
																<div class="wrap-item" data-itemscustom="[[0,1]]"
																	data-navigation="true" data-pagination="false">
																	<a href="/page-news-full?title=${item.title}"
																		class="post-thumb-link"><img
																			src="images/Stech-image/${item.img}"
																			alt="" /></a>
																</div>
															</div>
														</div>
														<div class="col-md-7 col-sm-6 col-xs-12">
															<div class="post-info">
																<h3 class="post-title">
																	<a
																		href="/page-news-full?title=${item.title}">${item.title}</a>
																</h3>
																<p class="desc">${item.discFirst}</p>
																<ul class="post-date-comment">
																	<li><i class="fa fa-user"
																			aria-hidden="true"></i><label>Được đăng bởi: </label><a href="#">admin</a></li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
											<div class="pagi-bar bottom">
												<a href="#" class="current-page">1</a> <a href="#">2</a> <a href="#"
													class="next-page"><i class="fa fa-caret-right"
														aria-hidden="true"></i></a>
											</div>
											<!-- ENd Pagibar -->
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