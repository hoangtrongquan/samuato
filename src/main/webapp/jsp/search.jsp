<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<title>${search}</title>
				<jsp:include page="linkcss.jsp"></jsp:include>
				<jsp:include page="linkjs.jsp"></jsp:include>
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
						<div class="content-page grid-ajax-infinite">
							<div class="container">
								<div class="bread-crumb radius">
									<a href="#">Home</a> <span>Sản phẩm</span>
								</div>
								<div style="font-size: x-large; margin-bottom: 20px;">Kết quả
									tìm kiếm của từ khóa: ${search}</div>
								<ul class="grid-product-ajax list-unstyled clearfix">
									<c:forEach items="${products}" var="item">
										<li>
											<div class="item-pro-ajax">
												<div class="product-thumb">
													<div class="product-label">
														<span class="sale-label">sale</span>
													</div>
													<a class="product-thumb-link"
														href="/detail?name=${item.name}&&screen=${item.screen.name}">
														<img alt="" src="images/Stech-image/${item.img}">
													</a>
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
														<div class="product-rating" style="width: 90%"></div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Content -->
					<jsp:include page="footer.jsp"></jsp:include>
					<!--Start Back To Top Button-->
				</div>
			</body>

			</html>