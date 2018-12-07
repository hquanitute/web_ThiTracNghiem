<%@page import="java.util.List"%>
<%@page import="Objects.CauHoi"%>
<%@page import="Objects.dsCauHoi"%>
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
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="#" class="simple-text logo-normal"></a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item  "><a class="nav-link"
						href="redirectCpanel">Trang Chủ</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="redirectCauHoi">Câu Hỏi</a></li>
					<li class="nav-item"><a class="nav-link" href="redirectDeThi">
							Đề Thi</a></li>

					<li class="nav-item "><a class="nav-link" href="redirectThiSinhLopHoc">
						Thí Sinh
					</a></li>
						<li class="nav-item "><a class="nav-link" href="redirectLopHoc">
							Lớp Học
					</a></li>
				
				</ul>
			</div>
		</div>
		<div class="main-panel">
		
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<a class="navbar-brand" href="#"> LẬP TRÌNH WEB </a>
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
						<a class="btn btn-primary " href="logout">Đăng xuất</a>
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
									<h4 class="card-title col-xs-12 my-auto ml-sm-5">Danh sách câu hỏi</h4>
									<a class="btn btn-success col-xs-12 ml-auto mr-sm-5"
										href="redirectThemCauHoi"> Thêm câu hỏi
									</a>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary">
											<tr>
												<th style="text-align: center;" scope="col">Mã CH</th>
												<th style="text-align: center;" scope="col">Nội dung câu hỏi</th>
												<th style="text-align: center;"  scope="col">Câu trả lời</th>
												<th style="text-align: center;" scope="col">Đáp án đúng</th>
												<th style="text-align: center;" scope="col">Mức độ </th>
											</tr>
										</thead>
										<tbody>
											<%
												dsCauHoi obj = (dsCauHoi) request.getAttribute("dsCH");
												List<CauHoi> ds = (List<CauHoi>) obj.getDs();
											%>

											<%
												for (int i = 0; i < ds.size(); i++) {
											%>
											<tr>
												<td style="text-align: center;"><%=ds.get(i).getMaCauHoi()%></td>
												<td style="text-align: center;"><%=ds.get(i).getNoiDungCauHoi()%></td>
												<td style="text-align: center;"><%=ds.get(i).isDapAn_A()%>...</td>
												<td style="text-align: center;"><%=ds.get(i).getDapAnDung()%></td>
												<td style="text-align: center;" ><%=ds.get(i).getMaMucDo()%></td>
												<td style="text-align: center;">
                                                    <a href="redirectSuaCauHoi?maCH=<%=ds.get(i).getMaCauHoi()%>&ndCH=<%=ds.get(i).getNoiDungCauHoi()%>&daA=<%=ds.get(i).isDapAn_A()%>&daB=<%=ds.get(i).isDapAn_B()%>&daC=<%=ds.get(i).isDapAn_C()%>&daD=<%=ds.get(i).isDapAn_D()%>&daDung=<%=ds.get(i).getDapAnDung()%>&mucDo=<%=ds.get(i).getMaMucDo()%>" class="btn btn-info"><i class="fa fa-pencil"></i></a>
                                                    <a href="redirectXoaCauHoi?maCH=<%=ds.get(i).getMaCauHoi()%>" class="btn btn-warning" ><i class="fa fa-trash"></i></a>
                                                    
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
												href="#" tabindex="-1">Trước</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">Sau</a>
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
	</footer>
 -->

</body>

</html>