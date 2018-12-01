<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Kiểm tra</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/Source/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/Source/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Source/Style-Navigation.css" type="text/css" />
	<meta charset="UTF-8">
</head>

<body>
	<!-- Modal -->
	<!-- <div class="modal show" id="popupa" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Thông báo!</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Đã hết thời gian làm bài!
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger">Về trang chủ</button>
					<button type="button" class="btn btn-primary">Xem kết quả thi</button>
				</div>
			</div>
		</div>
	</div> -->
	<div class="row">
		<div class="image col-sm-8 justify-content-start">
			<img boder="0" src="online.png" width="400px" />
		</div>
		<div class="col-sm-4 float-right ">
			<div class="button-login float-right ml-1">
				<a href="logout" class="myButton">Đăng xuất</a>
			</div>
		</div>
	</div>

	<div class="wrapper">
		<div class="Main-Menu">
			<ul>
				<li><a href="#">TRANG CHỦ</a></li>
				<li><a href="#">THƯ VIỆN BÀI TẬP</a>
					<ul class="Sub-Menu">
						<li align="center"><a href="#">Lớp 10</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 11</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 12</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#">THƯ VIỆN ĐỀ THI</a>
					<ul class="Sub-Menu">
						<li align="center"><a href="#">Lớp 10</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 11</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 12</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="#">BÀI HỌC</a>
					<ul class="Sub-Menu">
						<li align="center"><a href="#">Lớp 10</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 11</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
						<li align="center"><a href="#">Lớp 12</a>
							<ul>
								<li align="center"><a href="#">Toán</a></li>
								<li align="center"><a href="#">Vật Lý</a></li>
								<li align="center"><a href="#">Hóa Học</a></li>
								<li align="center"><a href="#">Anh Văn</a></li>
								<li align="center"><a href="#">Sinh Học</a></li>
							</ul>
						</li>
					</ul>
				</li>

				<li><a href="#">HỎI ĐÁP</a></li>
				<li><a href="#">GIỚI THIỆU</a></li>
			</ul>
			<div class="clear">

			</div>

		</div>

		<div style="width:50%;heigh:100px;background-color:none;margin-top:20px;">
			<h2 style="margin-left:50%;width:100%;heigh:100px;background-color:orange;text-align:center;border-radius:20px;">
				Bài kiểm tra trắc nghiệm 15 phút </h2>
		</div>
		<div class="row px-5">
			<div class="col-md-8">
				<form>
					<div class="row">
						<h1>Câu 1: Mạng cơ bản có mấy tầng ?</h1>
						<label class="container">1
							<input type="radio"  name="1">
							<span class="checkmark"></span>
						</label>
						<label class="container">3
							<input type="radio" name="1">
							<span class="checkmark"></span>
						</label>
						<label class="container">5
							<input type="radio" name="1">
							<span class="checkmark"></span>
						</label>
						<label class="container">7
							<input type="radio" name="1">
							<span class="checkmark"></span>
						</label>

					</div>

					<div class="row">
						<h1>Câu 2: Đâu là một giao thức mạng đúng ?</h1>
						<label class="container">TCP/IP
							<input type="radio"  name="2">
							<span class="checkmark"></span>
						</label>
						<label class="container">TCP/DHCP
							<input type="radio" name="2">
							<span class="checkmark"></span>
						</label>
						<label class="container">DHCP/IPX
							<input type="radio" name="2">
							<span class="checkmark"></span>
						</label>
						<label class="container">IP/IPX
							<input type="radio" name="2">
							<span class="checkmark"></span>
						</label>

					</div>
					<div class="row">
						<h1>Câu 3: Cách kết nối hai thiết bị ngang hàng?</h1>
						<label class="container">Dây cáp xoắn
							<input type="radio"  name="3">
							<span class="checkmark"></span>
						</label>
						<label class="container">Dây cáp thẳng
							<input type="radio" name="3">
							<span class="checkmark"></span>
						</label>
						<label class="container">Cáp quang
							<input type="radio" name="3">
							<span class="checkmark"></span>
						</label>
						<label class="container">Cáp trục
							<input type="radio" name="3">
							<span class="checkmark"></span>
						</label>

					</div>
					<div class="row">
						<h1>Custom Radio Buttons</h1>
						<label class="container">One
							<input type="radio"  name="4">
							<span class="checkmark"></span>
						</label>
						<label class="container">Two
							<input type="radio" name="4">
							<span class="checkmark"></span>
						</label>
						<label class="container">Three
							<input type="radio" name="4">
							<span class="checkmark"></span>
						</label>
						<label class="container">Four
							<input type="radio" name="4">
							<span class="checkmark"></span>
						</label>

					</div>
					<div class="row float-right">
						<button type="submit" class="btn btn-primary pull-right">Nộp bài</button>
					</div>
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="col-md-4 float-right">
				<div class="row ml-5" style="border-radius: 20px;">
					<div style="color:#333;text-align: center; background-color: #ffd54f;position: fixed;border-radius: 20px;" class="float-right">
						<ul style="margin-top: 20px;">
							<li style="display: inline-block;font-size:20px;list-style-type: none;padding: 1px;text-transform: uppercase;">
								<span id="hours" style="display: block;font-size: 30px;"></span>Hours</li>
							<li style="display: inline-block;font-size:20px;list-style-type: none;padding: 1px;text-transform: uppercase;">
								<span id="minutes" style="display: block;font-size: 30px;"></span>Minutes</li>
							<li style="display: inline-block;font-size:20px;list-style-type: none;padding: 1px;text-transform: uppercase;">
								<span id="seconds" style="display: block;font-size: 30px;"></span>Seconds</li>
						</ul>
					</div>
				</div>
				<!-- <script>
					var _hours = 0;
					var _minute = 0;
					var _seconds = 5;
					var html = '<div class="alert alert-success"><strong>Success!</strong> Hết thời gian</div>';
					function demNguoc() {

						if (_seconds != 0 || _hours != 0 || _minute != 0) {
							if (_seconds == 0 && _minute != 0) {
								_seconds = 59;
								_minute--;
							}
							else { _seconds--; }
							document.getElementById("seconds").innerText = _seconds;
							document.getElementById("minutes").innerText = _minute;
							document.getElementById("hours").innerText = _hours;
							setTimeout("demNguoc()", 1000);
						} else {


							$('#popupa').modal('show');

						}
					}
					demNguoc();
				</script> -->


			</div>
		</div>
	</div>
</body>

</html>