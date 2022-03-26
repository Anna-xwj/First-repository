<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title></title>
		<link href="bootstrap/css/bootstrap.min.css"rel="stylesheet" />
		<script src="./bootstrap/js/jquery-3.6.0.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
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
<div style="text-align:right;margin-right: 20px;">
	<br>
	<a href="index.html">
		 <input type="button" value="退出" class="btn btn-success ">
	</a>
	 
<hr>
</div>
	<h1 style="font-family:华文新魏;font-size:5em" align="center">WELCOME</h1>
			<br>
			<br>

	<form action="Connect.jsp" class="form-horizontal col-md-offset-4">
        <h2>选择要练习的类型</h2>
        <hr>
        <p >
        <h3 >选择题目类型：</h3>
            <select name="elementNum">
                <option>2</option>
                <option>3</option>
            </select>元运算<br />
        </p>
   		<h3 > 选择题目数量：</h3> 
                <input name="count" value="10" type="radio" />10
                <input name="count" value="20" type="radio" />20
                <input name="count" value="30" type="radio" />30
                <input name="count" value="40" type="radio" />40
                <input name="count" value="50" type="radio" />50
            <br /><br />
            <button class="submit" style="margin-top:50px">开始答题！</button>
    </form>
   
	 
</body>
</html>