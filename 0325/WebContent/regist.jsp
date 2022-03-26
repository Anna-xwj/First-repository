<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register</title>
	<link href="bootstrap/css/bootstrap.min.css"rel="stylesheet" />
	<script src="./bootstrap/js/jquery-3.6.0.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

    <!--font-awesome 核心我CSS 文件-->
    <link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
		body{
			 background-image: url(./img/9.jpg);
			 background-size:cover;
			 background-repeat: no-repeat;
			 background-attachment:fixed;
			}
	</style>
</head>
<body>
<div class="container">
    <div class="form row">
        <form class="form-horizontal col-sm-offset col-md-offset-3" action="Regist",method="post">
            <h3 class="form-title">用户注册</h3>
                <div class="col-sm-9 col-md-9">
                    <div class="form-group">
<!--        用户名图标和用户名输入框            -->
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <input class="form-control required" type="text" name="username" id="username" placeholder="请输入用户名" required>
                    </div>

<!--        密码图标和密码输入框                -->
                    <div class="form-group">
                        <i class="fa fa-key" aria-hidden="true"></i>
                        <input class="form-control required" type="password" name="password" id="password" placeholder="请输入密码" required>
                    </div>
<!--          确认密码              -->
                    <div class="form-group">
                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                        <input class="form-control required" type="password" name="resetpw" id="resetpw" placeholder="请确认密码" required>
                    </div>
<!--        邮箱                -->
                    <div class="form-group">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <input class="form-control required" type="email" name="email" id="email" placeholder="请输入邮箱" required>
                    </div>

                    <div class="form-group">
                    </div>

<!--注册按钮-->
                    <div class="form-group">
                        <input type="submit" value="注册" class="btn btn-success pull-right">
						<a href="index.html">
							<input type="button" class="btn btn-info pull-left" id="back_btn" value="返回"/>
						</a>
                        
                    </div>
                </div>
        </form>
	
    </div>
</div>

</body>
</html>