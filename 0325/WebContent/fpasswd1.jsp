<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>找回密码流程</title>
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
	<div class="content">
    <div class="web-width">
        <div class="for-xu">
            <div class="xulist for-cur"></div>
            <div class="xulist"></div>
            <div class="xulist"></div>
            <div class="xutextbox">
                <div class="xutext for-cur"><em>1</em><br/>
                    <strong>验证身份</strong></div>
                <div class="xutext"><em>2</em><br/>
                    <strong>设置新密码</strong></div>
                <div class="xutext"><em>3</em><br/>
                    <strong>完成</strong></div>
            </div>
        </div>
	<form class="form-horizontal col-sm-offset col-md-offset-3" action="Fpwd1" action="post">
	            <h3 class="form-title">验证身份</h3>
	                <div class="col-sm-9 col-md-9">
	                    <div class="form-group">
	<!--        用户名图标和用户名输入框            -->
	                        <i class="fa fa-user" aria-hidden="true"></i>
	                        <input class="form-control required" type="text" name="username"  placeholder="请输入正确用户名" required>
	                    </div>
	<!--        邮箱                -->
	                    <div class="form-group">
	                        <i class="fa fa-envelope" aria-hidden="true"></i>
	                        <input class="form-control required" type="email" name="email"  placeholder="请输入正确邮箱" required>
	                    </div>
						<div class="form-group">
							<a href="fogetpasswd.html">
								<input type="submit" class="btn btn-info pull-left"  value="下一步"/>
							</a>            
						</div>
								
								
		</div>
	</form>
     
    </div>
</div>
<style type="text/css">
    .clears {
        clear: both
    }
 
    .for-xu{
        width: 640px;
        margin: 30px auto;
        height: 50px;
        padding: 20px 0 0 0;
        position: relative
    }
 
    .xulist {
        float: left;
        width: 25%;
        height: 7px;
        background: #ccc
    }
 
    .xutextbox {
        position: absolute;
        width: 100%;
        left: 0;
        top: 10px
    }
 
    .xutextbox .xutext {
        float: left;
        width: 25%;
        text-align: center
    }
 
    .xutextbox .xutext em {
        display: inline-block;
        width: 24px;
        height: 24px;
        -moz-border-radius: 24px;
        -webkit-border-radius: 24px;
        border-radius: 24px;
        background: #ccc;
        text-align: center;
        font-size: 14px;
        line-height: 24px;
        font-style: normal;
        font-weight: bold;
        color: #fff
    }
 
    .xutextbox .xutext strong {
        display: inline-block;
        height: 26px;
        line-height: 26px;
        font-weight: 400
    }
 
    .xulist.for-cur {
        background: #77b852
    }
 
    .xutextbox .for-cur em {
        background: #77b852
    }
 
    .xutextbox .for-cur strong {
        color: #77b852
    }
 
  
</style>
	
</body>
</html>