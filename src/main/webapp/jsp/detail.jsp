<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description"
	content="Kuteshop is new Html theme that we have designed to help you transform your store into a beautiful online showroom. This is a fully responsive Html theme, with multiple versions for homepage and multiple templates for sub pages as well" />
<meta name="keywords" content="kuteshop,7uptheme" />
<meta name="robots" content="noodp,index,follow" />
<meta name='revisit-after' content='1 days' />
<title>${titleTab}</title>
<jsp:include page="linkcss.jsp"></jsp:include>
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
						<a href="#">Home</a> <span>${product.name}</span>
					</div>
					<!-- End Bread Crumb -->
					<div class="row">
						<div class="col-md-9 col-sm-8 col-col-xs-12">
							<div class="product-detail accordion-detail border radius">
								<div class="row">
									<div class="col-md-5 col-sm-12 col-xs-12">
										<div class="detail-gallery">
											<div class="mid">
												<img src="images/Stech-image/${product.img}" alt="" />
											</div>
										</div>
									</div>
									<div class="col-md-7 col-sm-12 col-xs-12">
										<div class="detail-info">
											<h2 class="title-detail">${product.name}</h2>
											<div class="product-rate">
												<div class="product-rating" style="width: 90%"></div>
											</div>
											<div style="font-weight: 600; margin-top: 30px;">Mô tả:
											</div>
											<p class="desc">${product.productDetail.inoProduct}</p>
											<div class="product-price">
												<ins>
													<c:set var="balance" value="${product.price}" />
													<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
															value="${balance}" type="currency" pattern="####,###,###" />
														vnd
													</span>
												</ins>
											</div>

										</div>
										<!-- Detail Info -->
									</div>
								</div>
								<div class="tab-detal toggle-tab">
									<div class="item-toggle-tab active">
										<h2 class="toggle-tab-title title14 radius border">Thông
											tin sản phẩm</h2>
										<div class="toggle-tab-content">
											<div class="content-detail-tab">
												<div class="detail-tab-info">
													<p class="desc">${product.productDetail.discription}</p>
												</div>
											</div>
										</div>
									</div>

									<div class="item-toggle-tab">
										<h2 class="toggle-tab-title title14 radius border">Reviews</h2>
										<div class="toggle-tab-content">
											<div class="content-detail-tab">
												<div class="detail-tab-thumb">
													<img src="images/Stech-image/${product.img}" alt="" />
												</div>
												<div class="detail-tab-info">
													<p class="desc">${product.productDetail.inoProduct}</p>
												</div>
											</div>
										</div>
									</div>
									<div class="item-toggle-tab">
										<h2 class="toggle-tab-title title14 radius border">Thẻ
											tag</h2>
										<div class="toggle-tab-content">
											<div class="content-detail-tab"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- End Main Detail -->
							<div class="product-related border radius">
								<h2 class="title18">Tin tức</h2>
								<div class="product-related-slider">
									<div class="wrap-item"
										data-itemscustom="[[0,1],[480,2],[1024,3],[1200,4]]"
										data-pagination="false" data-navigation="true">
										<c:forEach items="${news}" var="item">
											<div class="card" style="margin-right: 10px;">
												<img class="marg" src="images/Stech-image/${item.img}"
													alt="Girl in a jacket" style="border-radius: 5px;">
												<div class="title marg">${item.title}</div>
												<div class="member marg">Member</div>
												<div class="textquick marg">
													<p class="desc"
														style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 4; /* number of lines to show */ -webkit-box-orient: vertical;">
														${item.discFirst}</p>
												</div>
												<div style="display: flex; justify-content: center;">
													<a href="/page-news-full?title=${item.title}"><button
															class="custom-btn btn-7 marg">
															<span>Read More</span>
														</button></a>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!-- End Product Related -->
						</div>
						<div class="col-md-3 col-sm-4 col-col-xs-12">
							<div class="sidebar sidebar-right">
								<div class="list-detail-adv">
									<div class="detail-adv">
										<a><img class="radius wobble-horizontal" alt=""
											src="images/shop/pro-adv1.jpg"></a>
									</div>
									<div class="detail-adv">
										<a><img class="radius wobble-horizontal" alt=""
											src="images/shop/pro-adv2.jpg"></a>
									</div>
									<div class="detail-adv">
										<a><img class="radius wobble-horizontal" alt=""
											src="images/shop/pro-adv3.jpg"></a>
									</div>
								</div>
								<div class="widget widget-seller">
									<h2 class="widget-title title14">Sản phẩm tương tự</h2>
									<div class="widget-content">
										<div class="wrap-item" data-pagination="false"
											data-navigation="true" data-itemscustom="[[0,1]]">
											<div class="list-pro-seller">
												<c:forEach items="${products1}" var="item">
													<div class="item-pro-seller">
														<div class="product-thumb">
															<a href="#" class="product-thumb-link"><img
																src="images/Stech-image/${item.img}" alt="" /></a>
														</div>
														<div class="product-info">
															<h3 class="product-title" title="${item.name}">
																<a
																	href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
															</h3>
															<div class="product-price">
																<ins>
																	<c:set var="balance" value="${item.price}" />
																	<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																			value="${balance}" type="currency"
																			pattern="####,###,###" /> vnd
																	</span>
																</ins>
															</div>
															<div class="product-rate">
																<div style="width: 90%" class="product-rating"></div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
											<div class="list-pro-seller">
												<c:forEach items="${products2}" var="item">
													<div class="item-pro-seller">
														<div class="product-thumb">
															<a href="#" class="product-thumb-link"><img
																src="images/Stech-image/${item.img}" alt="" /></a>
														</div>
														<div class="product-info">
															<h3 class="product-title" title="${item.name}">
																<a
																	href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
															</h3>
															<div class="product-price">
																<ins>
																	<c:set var="balance" value="${item.price}" />
																	<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																			value="${balance}" type="currency"
																			pattern="####,###,###" /> vnd
																	</span>
																</ins>
															</div>
															<div class="product-rate">
																<div style="width: 90%" class="product-rating"></div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
								<!-- End widget -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Content -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<jsp:include page="linkjs.jsp"></jsp:include>
</body>

</html>