<%@page import="com.example.demo.module.Product"%>
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
<title>Dashtreme Admin - Free Dashboard for Bootstrap 4 by
	Codervent</title>
<!-- loader-->
<jsp:include page="admin_linkcss.jsp"></jsp:include>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/lib/ckeditor/ckeditor.js"></script>
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
				<div class="row mt-3"
					style="display: flex; justify-content: center;">
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<div class="card-title" style="text-align: center;">Sản
									phẩm mới</div>
								<hr>
								<form action="/create-guarantee" modelAttribute="product"
									method="post">
									<div class="form-group">
										<label for="input-1">Tên</label> <input type="text"
											class="form-control" id="input-1" name="name" required>
									</div>
									<div class="form-group">
										<label for="input-1">Thời gian kết thúc</label> <input
											type="date" class="form-control" id="input-1" name="timeend">
									</div>
									<div class="form-group">
										<label for="input-1">Sản phẩm</label> <input type="text"
											class="form-control" id="input-1" name="idProduct" required>
									</div>
									<div class="form-group">
										<label for="input-1">Số điện thoại</label> <input type="text"
											class="form-control" id="input-1" name="phone" required>
									</div>
									<div class="form-group">
										<label for="input-1">Chú thích</label> <input type="text"
											class="form-control" id="input-1" name="note">
									</div>
									<div class="form-group"
										style="display: flex; justify-content: center;">
										<button type="submit" class="btn btn-light px-5">Submit</button>
									</div>
								</form>
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
	<script type="text/javascript">
		CKEDITOR.replace('editer_info');
		CKEDITOR.replace('editer_des');
		function myFunction(id) {
			document.getElementById("show").innerText = id;
			console.log(id);
		}
	</script>
	<script>
		$("#cars").change(()=>{acx($("#cars").val())});
		function acx (id){
			$.ajax({
			url:"/getcaritem",
			data:{id:id},
			success:(e)=>{
				$("#carItems").html("");
				var html = "";
				for(var i = 0; i<e.length;i++){
					html += '<option value="'+ e[i].id +'">'+e[i].name+"</option>";
				}
				$("#carItems").html(html);
			}
		});
		}
	</script>

</body>
</html>
