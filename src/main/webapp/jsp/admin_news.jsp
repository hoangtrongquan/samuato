<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
			<meta name="description" content="" />
			<meta name="author" content="" />
			<title>Sản phẩm</title>
			<!-- loader-->
			<link href="css/news.css" rel="stylesheet" />
			<jsp:include page="admin_linkcss.jsp"></jsp:include>
		</head>

		<body class="bg-theme bg-theme1">

			<!-- start loader -->
			<div id="pageloader-overlay" class="visible incoming">
				<div class="loader-wrapper-outer">
					<div class="loader-wrapper-inner">
						<div class="loader"></div>
					</div>
				</div>
			</div>
			<!-- end loader -->

			<!-- Start wrapper-->
			<div id="wrapper">

				<!--Start sidebar-wrapper-->
				<jsp:include page="admin_sidebar.jsp"></jsp:include>
				<!--End sidebar-wrapper-->

				<!--Start topbar header-->
				<jsp:include page="admin_topbar.jsp"></jsp:include>
				<!--End topbar header-->

				<div class="clearfix"></div>

				<div class="content-wrapper">
					<div style="text-align: right;">
						<a href="/add-news"><button class="custom-btn btn-7 marg">
								<span>Add news</span>
							</button></a>
					</div>
					<div class="cardsNews"
						style="background: none; color: #000; grid-template-columns: auto auto auto auto; grid-gap: 30px;">
						<c:forEach items="${news}" var="item">
							<div class="card">
								<img class="marg" src="./images/Stech-image/${item.img}" alt="Girl in a jacket"
									style="border-radius: 5px;">
								<div class="title marg">${item.title}</div>
								<div class="member marg">Member</div>
								<div class="textquick marg"
									style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 4; /* number of lines to show */ -webkit-box-orient: vertical;">
									${item.discription}</div>
								<div style="display: flex; justify-content: space-around;">
									<a href="/change-news?id=${item.id}"><button class="custom-btn btn-7 marg">
											<span>Change</span>
										</button></a> <a href="/page-news-full?title=${item.title}"><button
											class="custom-btn btn-7 marg">
											<span>Read More</span>
										</button></a>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- End container-fluid-->

				</div>
				<!--End content-wrapper-->
				<!--Start Back To Top Button-->
				<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
				<!--End Back To Top Button-->

				<!--Start footer-->
				<!--End footer-->

				<!--start color switcher-->
				<div class="right-sidebar">
					<div class="switcher-icon">
						<i class="zmdi zmdi-settings zmdi-hc-spin"></i>
					</div>
					<div class="right-sidebar-content">

						<p class="mb-0">Gaussion Texture</p>
						<hr>

						<ul class="switcher">
							<li id="theme1"></li>
							<li id="theme2"></li>
							<li id="theme3"></li>
							<li id="theme4"></li>
							<li id="theme5"></li>
							<li id="theme6"></li>
						</ul>

						<p class="mb-0">Gradient Background</p>
						<hr>

						<ul class="switcher">
							<li id="theme7"></li>
							<li id="theme8"></li>
							<li id="theme9"></li>
							<li id="theme10"></li>
							<li id="theme11"></li>
							<li id="theme12"></li>
							<li id="theme13"></li>
							<li id="theme14"></li>
							<li id="theme15"></li>
						</ul>

					</div>
				</div>
				<!--end color switcher-->

			</div>
			<!--End wrapper-->


			<!-- Bootstrap core JavaScript-->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/popper.min.js"></script>
			<script src="assets/js/bootstrap.min.js"></script>

			<!-- simplebar js -->
			<script src="assets/plugins/simplebar/js/simplebar.js"></script>
			<!-- sidebar-menu js -->
			<script src="assets/js/sidebar-menu.js"></script>

			<!-- Custom scripts -->
			<script src="assets/js/app-script.js"></script>
		</body>

		</html>