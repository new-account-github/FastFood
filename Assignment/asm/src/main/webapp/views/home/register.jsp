<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fast Food</title>
<link rel="shortcut icon" href="/images/favicon.svg" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
	integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
 <div class="register-page">
        <div class="register-form">
            <div class="logo">
                <img src="images/logo.svg" alt="">
            </div>
            <form action="/home/register" method="post">
                <div class="form-group">
                    <label for="name"><i class="fas fa-edit"></i></label>
                    <input path="username" name="username" type="text" id="name" placeholder="Tên">
                </div>
				     <div class="form-group">
                    <label for="login-fullname"><i class="fas fa-envelope"></i></label>
                    <input path="fullname" name="fullname" type="text" id="fullname" placeholder="Fullname">
                </div>
                <div class="form-group">
                    <label for="login-email"><i class="fas fa-envelope"></i></label>
                    <input path="email" name="email" name="txtTo"type="email" id="email" placeholder="Email">
                </div>

                <div class="form-group">
                    <label for="login-password"><i class="fas fa-lock"></i></label>
                    <input path="password" name="password" type="password" id="login-password" placeholder="Mật khẩu">
                </div>
    <!--             <div class="form-group">
                    <label for="confirm-password"><i class="fas fa-lock"></i></label>
                    <input  path="password" name="password" type="password" id="confirm-password" placeholder="Nhập lại mật khẩu">
                </div> -->
                <button class="btn-login">Đăng Ký</button>
            </form>
            <span>Bạn đã có tài khoản? <a href="/home/login">Đăng nhập</a></span>
            <div class="coppyright">
                <p>© 2023 Fast Food</p>
            </div>
        </div>
    </div>

<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
		integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
		integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	    <script src="/js/main.js"></script>
</body>
</html>