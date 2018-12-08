<%@page import="java.util.List"%>
<%@page import="Objects.CauHoi"%>
<%@page import="Objects.dsCauHoi"%>
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
					<li class="nav-item active" <%if(!session.getAttribute("role").equals("qlcauhoi")){%>hidden<%}%>><a class="nav-link"
						href="redirectCauHoi"> Câu Hỏi </a></li>
					<li class="nav-item" <%if(!session.getAttribute("role").equals("qldethi")){%>hidden<%}%>><a class="nav-link" href="redirectDeThi">
							Đề Thi </a></li>

				<li class="nav-item" <%if(!session.getAttribute("role").equals("qlthisinh")){%>hidden<%}%>><a class="nav-link hidden" href="redirectThiSinhLopHoc">
							Thí Sinh
					</a></li>
						<li class="nav-item " <%if(!session.getAttribute("role").equals("qlthisinh")){%>hidden<%}%>><a class="nav-link" href="redirectLopHoc">
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
									placeholder="Tìm trong trang ...">
								<button type="submit"
									class="btn btn-white btn-round btn-just-icon">
									<i>search</i>
									<div class="ripple-container"></div>
								</button>
							</div>
						</form>
						<a class="btn btn-primary" href="logout">Đăng xuất</a>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="card ">
							<div class="card-header card-header-primary">
								<div class="row">
									<h4 class="card-title col-xs-12 my-auto ml-sm-5">Thêm câu hỏi</h4>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div class="card-body">
										<!--Phần body -->
										<form action="redirectLuuCauHoiThem">
											<h5 class="card-title mb-0">Mức độ :</h5>
											<div class="row">
												<div class="input-group my-auto col-xs-12 col-sm-4">
													<div class="input-group-text"
														style="border: none; background: none">
														<input checked type="radio" name="radLevel" value="easy" class="ml-2 mr-1" aria-label="Radio button for following text input">
														Dễ 
														<input type="radio" name="radLevel" value="normal" class="ml-2 mr-1" aria-label="Radio button for following text input">
														Trung bình 
														<input type="radio" value="hard" name="radLevel" class="ml-2 mr-1" aria-label="Radio button for following text input">
														Khó
													</div>
												</div>
											</div>
											<div class="">
												<!--Đề bài-->
												<div class="form-group">
													<label>Nội dung câu hỏi :</label> <input type="text"
														class="form-control form-control-sm" name="e_ndCH"
														id="question" aria-describedby="helpId" class="col-sm-12"
														required>
												</div>
											</div>
											<input-group-text> <!-- câu trả lời -->

											<div class="row mx-auto">
												<label
													class="btn btn-outline-success col-sm-12 px-auto py-auto">
													<input type="radio" name="DapAn" id="a" value = "dapAn_A" autocomplete="off"class="col-sm-1">A. 
													<input type="text" name="daA" id="a" class="col-sm-11" required>
												</label>
											</div>
											<div class="row mx-auto">
												<label class="btn btn-outline-success col-sm-12"> 
													<input type="radio" name="DapAn" id="b" value = "dapAn_B" autocomplete="off" class="col-sm-1">B. 
													<input type="text" name="daB" id="b" class="col-sm-11" required>
												</label>
											</div>
											<div class="row mx-auto">
												<label class="btn btn-outline-success col-sm-12">
													<input type="radio" name="DapAn" id="c" value = "dapAn_C" autocomplete="off" class="col-sm-1">C. 
													<input type="text" name="daC" id="c" class="col-sm-11" required>
												</label>
											</div>
											<div class="row mx-auto">
												<label class="btn btn-outline-success col-sm-12"> 
													<input type="radio" name="DapAn" id="d" value = "dapAn_D" autocomplete="off" class="col-sm-1" required>D. 
													<input type="text" name="daD" id="d" class="col-sm-11" required>
												</label>
											</div>
											
											</input-group-text>
											<div class="row row justify-content-center">
												<div class="col-ms-4 ">
													<a href="redirectCauHoi" class="btn btn-danger col-auto ">Hủy</a>
													<button class="btn btn-success col-auto ">Lưu Thông Tin</button>
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
		</div>
	</div>
	<!-- <footer class="footer">
		<div class="container-fluid">
			<nav class="float-left">
				<ul>
					<li></li>
					<li></li>
					<li><a href="#"> Group 1 </a></li>
					<li><a href="#"> Licenses </a></li>
					<li><a href="#"> About </a></li>
					<li><a href="#"> Contact </a></li>
				</ul>
			</nav>

		</div>
	</footer> -->


</body>

</html>