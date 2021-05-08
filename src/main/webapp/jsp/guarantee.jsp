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
<title>Bảo hành</title>
<jsp:include page="linkcss.jsp"></jsp:include>
<jsp:include page="linkjs.jsp"></jsp:include>
<link rel="stylesheet" href="css/homepage.css">
<link rel="stylesheet" href="./css/news.css">
</head>

<body style="background: #f4f4f4">
	<div class="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="content">
			<div class="container">
				<div class="row"
					style="padding: 40px; background: white; margin: 40px 0; border-radius: 5px;">
					<div class="col-md-12">
						<h2 class="title-shop-page">Kiểm tra bảo hành</h2>
						<div class="register-content-box">
							<div class="row">
								<div class="col-md-3 col-sm-3 col-ms-12">
									<div class="check-billing">
										<div class="form-my-account" style="margin: -25px;">
											<form class="block-login" action="/guarantee-customer">
												<p>
													<label for="username">Số điện thoại<span
														class="required">*</span></label> <input type="text" name="phone"
														required />
												</p>
												<p>
													<input type="submit" class="register-button"
														value="Kiểm tra">
												</p>
											</form>
										</div>
									</div>
								</div>
								<div class="col-md-9 col-sm-9 col-ms-12">
									<div class="check-address">
										<table class="table">
											<tr>
												<th><span>Tên</span></th>
												<th><span>Thời gian bắt đầu</span></th>
												<th><span>Thời gian kết thúc</span></th>
												<th><span>Sản phẩm bảo hành</span></th>
											</tr>
											<c:forEach items="${guarantees}" var="item">
												<tr>
													<td>
														<div class="product-thumb">${item.user.name}</div>
													</td>
													<td>
														<div class="product-thumb">
															<ins>
																<span>${item.timeBegin}</span>
															</ins>
														</div>
													</td>
													<td>
														<div class="product-thumb">${item.timeEnd}</div>
													</td>
													<td>
														<div class="product-thumb">${item.product.name}</div>
													</td>
												</tr>
											</c:forEach>
										</table>
									</div>
								</div>
							</div>
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