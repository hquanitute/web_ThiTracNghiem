<%@page import="java.util.List"%>
<%@page import="Objects.TaiKhoanLopHoc"%>
<%@page import="Objects.dsTaiKhoanLopHoc"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Quản Lý Sinh Viên Trong Lớp</title>

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
				<img src ="assets33/img/ava.png" width ="150px" height="150px" style="margin-left:50px">
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item "><a class="nav-link"
						href="redirectCpanel"> Trang Chủ </a></li>
					<li class="nav-item " <%if(!session.getAttribute("role").equals("qlcauhoi")){%>hidden<%}%>><a class="nav-link"
						href="redirectCauHoi"> Câu Hỏi </a></li>
					<li class="nav-item" <%if(!session.getAttribute("role").equals("qldethi")){%>hidden<%}%>><a class="nav-link" href="redirectDeThi">
							Đề Thi </a></li>

				<li class="nav-item" <%if(!session.getAttribute("role").equals("qlthisinh")){%>hidden<%}%>><a class="nav-link hidden" href="redirectThiSinhLopHoc">
							Thí Sinh
					</a></li>
						<li class="nav-item active" <%if(!session.getAttribute("role").equals("qlthisinh")){%>hidden<%}%>><a class="nav-link" href="redirectLopHoc">
							Lớp Học
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
		
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="collapse navbar-collapse justify-content-end">
						<a class="btn btn-primary btn-round" href="logout">Đăng xuất</a>
					</div>
				</div>
			</nav>
		
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="card ">
							<div class="card-header card-header-primary">
								<div class="row">
									<h4 class="card-title col-xs-12 my-auto ml-sm-5">Danh Sách Thí Sinh Lớp</h4>
									<a > 
									</a>
								</div>
							</div>
							<form action="LuuTaiKhoanLopHocThem">
							<div class="card-body">
									<div class="row">
										<div class="col-md-4">
											<div class="row">
												<h5 class="mb-1 mt-3 col-sm-4">Mã Thí Sinh :</h5>
												<div class="col-md-4">
												<input type="text"
													class="form-control form-control-md col-md-12	"
													name="maTK" aria-describedby="helpId"
													class="col-md-6" style="text-align: center;"
													value="${param.maTK}" required>
													</div>
												<div class = "col-md-4">
												<button class="btn btn-success btn-round " style="" >Thêm</button>
												</div>
											</div>
											
											<div style="display:none">
												<input type ="text" name="maLopHoc" value="${param.maLopHoc}">
											</div>
											</div>									
											</div>
									</div>
								</form>
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<tr>
												<th style="text-align: center;" scope="col">Mã Thí Sinh</th>
												<th style="text-align: center;" scope="col">Tên Thí Sinh</th>
												<th style="text-align: center;" scope="col">Giới Tính</th>
												<th style="text-align: center;" scope="col">SĐT</th>
												<th style="text-align: center;" scope="col">Học Kỳ</th>
											</tr>
										</thead>
										<tbody>
											<%
												dsTaiKhoanLopHoc obj = (dsTaiKhoanLopHoc) request.getAttribute("dsLH");
												List<TaiKhoanLopHoc> ds = (List<TaiKhoanLopHoc>) obj.getDs();
											%>

											<%
												for (int i = 0; i < ds.size(); i++) {
											%>
											<tr>
												<td style="text-align: center;"><%=ds.get(i).getMaTK()%></td>
												<td style="text-align: center;"><%=ds.get(i).getTenSV()%></td>
												<td style="text-align: center;"><%=ds.get(i).getGioiTinh()%></td>
												<td style="text-align: center;"><%=ds.get(i).getSDT()%></td>
												<td style="text-align: center;"><%=ds.get(i).getHocKy()%></td>
												<td style="text-align: center;">
                                                    <a href="redirectXoaTaiKhoanLopHoc?maTK=<%=ds.get(i).getMaTK()%>&maLopHoc=<%=ds.get(i).getMaLopHoc()%>" class="btn btn-warning btn-round" ><i class="fa fa-trash"></i></a>
                                                </td>
											</tr>
											<%
												}
											%>

										</tbody>
									</table>
									<nav aria-label="Page navigation example">
										<ul class="pagination justify-content-center">
											<li class="page-item disabled"><a class="page-link"
												href="#" tabindex="-1">Trang Trước</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">Trang Sau</a>
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
	

</body>

</html>