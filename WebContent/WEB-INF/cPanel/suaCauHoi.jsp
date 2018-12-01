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
<meta content-width="device-width" initial-scale="1.0"
	maximum-scale="1.0" user-scalable="0" shrink-to-fit="no"
	name="viewport" />
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
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="#" class="simple-text logo-normal"> GROUP 1 </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item  "><a class="nav-link"
						href="redirectCpanel"> Trang Chủ </a></li>
					<li class="nav-item active"><a class="nav-link"
						href="redirectCauHoi"> Câu hỏi </a></li>
					<li class="nav-item"><a class="nav-link" href="redirectDeThi">
							Đề thi </a></li>

					<li class="nav-item "><a class="nav-link"
						href="redirectThiSinhLopHoc"> Thí sinh và lớp học </a></li>
					<!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#"> Web Demo</a>
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
									placeholder="Tìm kiếm ...">
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
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="card ">
							<div class="card-header card-header-primary">
								<div class="row">
									<h4 class="card-title col-xs-12 my-auto ml-sm-5">Sửa câu
										hỏi</h4>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div class="card-body">
										<!--Phần body -->
										<h5 class="card-title mb-0">Mức độ</h5>
										<div class="row">
											<div class="input-group my-auto col-xs-12 col-sm-4">
												<div class="input-group-text"
													style="border: none; background: none">
													<input checked type="radio" name="radLevel"
														class="ml-2 mr-1" <c:if test="${param.mucDo == '1'}">checked</c:if>
														aria-label="Radio button for following text input">
													Dễ <input type="radio" name="radLevel" class="ml-2 mr-1" <c:if test="${param.mucDo == '2'}">checked</c:if>
														aria-label="Radio button for following text input">
													Trung bình <input type="radio" name="radLevel"
														class="ml-2 mr-1" <c:if test="${param.mucDo == '3'}">checked</c:if>
														aria-label="Radio button for following text input">
													Khó
												</div>
											</div>
										</div>
										<div class="">
											<!--Đề bài-->
											<div class="form-group">
												<label>Đề bài</label> <input type="text"
													class="form-control form-control-sm" name="e_ndCH"
													id="question" aria-describedby="helpId" class="col-sm-12" value="${param.ndCH}">
											</div>
										</div>
										<input-group-text> <!-- câu trả lời -->

										<div class="row mx-auto">
											<label
												class="btn btn-outline-success col-sm-12 px-auto py-auto">
												<input type="radio" name="a" id="a" autocomplete="off" <c:if test="${param.daDung == 'A'}">checked</c:if>
												class="col-sm-1"> <input type="text" name="a" id="a" class="col-sm-11" value="${param.daA}">
											</label>
										</div>
										<div class="row mx-auto">
											<label class="btn btn-outline-success col-sm-12"> <input
												type="radio" name="a" id="b" autocomplete="off" <c:if test="${param.daDung == 'B'}">checked</c:if>
												class="col-sm-1"> <input type="text" name="a" id="b" value="${param.daB}" class="col-sm-11">
											</label>
										</div>
										<div class="row mx-auto">
											<label class="btn btn-outline-success col-sm-12"> <input
												type="radio" name="a" id="c" autocomplete="off" <c:if test="${param.daDung == 'C'}">checked</c:if>
												class="col-sm-1"> <input type="text" name="a" id="c" value="${param.daC}" class="col-sm-11">
											</label>
										</div>
										<div class="row mx-auto">
											<label class="btn btn-outline-success col-sm-12"> <input
												type="radio" name="a" id="d" autocomplete="off" <c:if test="${param.daDung == 'D'}">checked</c:if>
												class="col-sm-1"> <input type="text" name="a" id="d" value="${param.daD}" class="col-sm-11">
											</label>
										</div>

										</input-group-text>
										<div class="row row justify-content-center">
											<div class="col-ms-4 ">
												<a href="redirectCauHoi"  class="btn btn-danger col-auto ">Hủy</a>
											</div>
											<div class="col-ms-4 ">
												<a href="suaCauHoi" class="btn btn-success col-auto ">Sửa
													câu hỏi</a>
											</div>
										</div>
									</div>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-center">
											<li class="page-item disabled"><a class="page-link"
												href="#" tabindex="-1">Previous</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">Next</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
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
			<div class="#">
				&copy;
				<script>
					document.write(new Date().getFullYear())
				</script>
				, made with <i class="material-icons">favorite</i> by <a href="#"
					target="_blank">Group 1</a> for a demo web.
			</div>
		</div>
	</footer>


</body>

</html>