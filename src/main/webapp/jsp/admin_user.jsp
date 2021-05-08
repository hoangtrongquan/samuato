<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dòng xe</title>
<!-- loader-->
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
			<div class="container-fluid">
				<div class="row" style="display: flex; justify-content: center;">
					<div class="card" style="width: 70%;">
						<div class="card-body">
							<div style="display: flex; justify-content: space-between;">
								<h5 class="card-title">Khách hàng và admin</h5>
								<div style="font-weight: 900; font-size: x-large;">
									<button style="background: none; border: none; color: white;">
										<a href="/add-user">+</a>
									</button>
								</div>
							</div>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">Id</th>
											<th scope="col">Tên</th>
											<th scope="col">Quyền</th>
											<th scope="col">Số điện thoại</th>
											<th colspan="2">Địa chỉ</th>
											<th scope="col">Note</th>
											<th>#</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${user}" var="item">
											<tr>
												<th scope="row">${item.id}</th>
												<td>${item.name}</td>
												<td>${item.role}</td>
												<th>${item.phone}</th>
												<td colspan="2">${item.address}</td>
												<td>${item.note}</td>
												<td><a href="/change-user?id=${item.id}"><i class="zmdi zmdi-brush"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!--End Row-->
				<!--start overlay-->
				<div class="overlay toggle-menu"></div>
				<!--end overlay-->

			</div>
			<!-- End container-fluid-->

		</div>
		<!--End content-wrapper-->
		<!--Start Back To Top Button-->
		<a href="javaScript:void();" class="back-to-top"><i
			class="fa fa-angle-double-up"></i> </a>
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