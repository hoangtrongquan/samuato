<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<div id="content">
			<div class="content-page">
				<div class="container">
					<div class="bread-crumb radius">
						<a href="#">Home</a> <span>Tin Tức</span>
					</div>
					<!-- End Bread Crumb -->
					<div class="row">
						<div class="col-md-3 col-sm-4 col-xs-12">
							<div class="sidebar sidebar-left">
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
															<h3 class="product-title">
																<a
																	href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
															</h3>
															<div class="product-price">
																<ins>
																	<c:set var="balance" value="${item.price}" />
																<span>
																	<fmt:setLocale value="vie" />
																	<fmt:formatNumber value="${balance}" type="currency"
																		pattern="####,###,###" />
																	vnd
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
															<h3 class="product-title">
																<a
																	href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
															</h3>
															<div class="product-price">
																<ins>
																	<c:set var="balance" value="${item.price}" />
																<span>
																	<fmt:setLocale value="vie" />
																	<fmt:formatNumber value="${balance}" type="currency"
																		pattern="####,###,###" />
																	vnd
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
						<div class="col-md-9 col-sm-8 col-xs-12">
							<!-- nội dung viết ở đây  -->
							<div
								style="text-align: center; font-size: xx-large; font-weight: 600;">
								${news3.title}</div>
							<div
								style="text-align: right; color: #cc0000; margin-bottom: 40px;">${news3.author}
							</div>
							<div>${news3.discription}</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Content -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>

</html>