<%@page import="java.util.List"%>
<%@page import="Objects.LopHoc"%>
<%@page import="Objects.dsLopHoc"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Website Demo Of Group 1</title>

<!--     Fonts and icons     -->


<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath}/assets/css/material-dashboard.css?v=2.1.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link
	href="${pageContext.request.contextPath}/Source/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />

</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="../assets/img/sidebar-1.jpg">
			<div class="logo">
				<a href="#" class="simple-text logo-normal"></a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item  "><a class="nav-link"
						href="redirectCpanel"> Trang Chủ </a></li>
					<li class="nav-item "><a class="nav-link"
						href="redirectCauHoi"> Câu Hỏi </a></li>
					<li class="nav-item "><a class="nav-link" href="redirectDeThi">
							Đề Thi </a></li>

				<li class="nav-item "><a class="nav-link" href="redirectThiSinhLopHoc">
							Thí Sinh
					</a></li>
						<li class="nav-item active "><a class="nav-link" href="redirectLopHoc">
							Lớp Học
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#"> LẬP TRÌNH WEB</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span> <span
							class="navbar-toggler-icon icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end">
						<form class="navbar-form">
							<div class="input-group no-border">
								<input type="text" value="" class="form-control"
									placeholder="Tìm trong trang  ...">
								<button type="submit"
									class="btn btn-white btn-round btn-just-icon">
									<i>search</i>
									<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<a href="logout">Đăng xuất</a>
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="card ">
							<div class="card-header card-header-primary">
								<div class="row">
									<h4 class="card-title col-xs-12 my-auto ml-sm-5">Chỉnh sửa lớp học</h4>
								</div>
							</div>
							<div class="card-body">
							<form action="LuuLopHocThem">
									<div class="row">
										<div class="col-sm-6">
											<div class="row">
												<h5 class="mb-0 mt-2 col-sm-4">Tên lớp học</h5>
												<input type="text"
													class="form-control form-control-sm col-sm-4	"
													name="tenLopHoc" aria-describedby="helpId"
													class="col-sm-3" style="text-align: center;"
													value="${param.tenLopHoc}" required>
											</div>

											<!--  -->
											<div class="row">
												<h5 class="mb-0 mt-2 col-sm-4">Học kỳ</h5>
												<input type="text"
													class="form-control form-control-sm col-sm-4"
													name="hocKy" aria-describedby="helpId"
													class="col-sm-3" style="text-align: center;"
													value="${param.hocKy}" required>
											</div>
											<div class="row" style="display:none">
												
												<input type="text"
													class="form-control form-control-sm col-sm-4"
													name="maLopHoc" aria-describedby="helpId"
													class="col-sm-3" style="text-align: center;"
													value="${param.maLopHoc}">
											</div>
											
										</div>
										<div class="col-sm-6 py-4">
											<button class="btn btn-success my-auto" >Lưu thông tin</button>
											<a class="btn btn-warning " href="redirectLopHoc">Hủy</a>
										</div>
									</div>
								</form>
									
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	
</body>

</html>