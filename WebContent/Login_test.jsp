<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
<link href="${pageContext.request.contextPath}/Source/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="${pageContext.request.contextPath}/Source/bootstrap.min.js"></script>
<script src="./assets/"></script>
<script src="${pageContext.request.contextPath}Source/jquery-3.3.1.min.js"></script>
<style>


* {
    -webkit-box-sizing: border-box;
	   -moz-box-sizing: border-box;
	        box-sizing: border-box;
	outline: none;
}

    .form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}



.login-form {
	margin-top: 60px;
}

form[role=login] {
	color: #5d5d5d;
	background: Black ;
	padding: 26px;
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
}
	form[role=login] img {
		display: block;
		margin: 0 auto;
		margin-bottom: 35px;
	}
	form[role=login] input,
	form[role=login] button {
		font-size: 18px;
		margin: 16px 0;
	}
	form[role=login] > div {
		text-align: center;
	}
</style>
</head>
<body>
<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form method="post" action="login" >
          <img src="Source/Imagelogin.jpg"
           class="img-responsive" alt="" />
          <input type="text" name="inputUserName" placeholder="Tên đăng nhập" required class="form-control input-lg"/>
          
          <input type="password" class="form-control input-lg" name="inputPassword" placeholder="Mật khẩu"  />
          
          
          <div class="pwstrength_viewport_progress"></div>
          
          
          <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Đăng Nhập</button>
          
          </form>
      </section>  
      </div>     
      </div>
</div>
</body>
</html>