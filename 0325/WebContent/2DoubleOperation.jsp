<%@ page import ="java.util.Random"  %>
<%@ page import="java.lang.Math" %>
<%@ page import="math.DoubleOperation" %>
<%@ page import="java.math.BigInteger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<form action="doDoubleOperation.jsp" method="post">
	<div style="text-align:right;">
		<a href="1choose.jsp">选择类型</a>&nbsp;&nbsp;
		<a href="index.html">退出登录</a><br><br>
	</div>
	<h3 style="font-family:华文彩云; align="left">做题页面</h3>
	<div id="div1">
		  <div id="count">
		         <span id="id_H">00</span>
		         <span id="id_M">00</span>
		         <span id="id_S">00</span>
		   </div>
		   <input id="start" type="button" value="开始">
		        
	</div>
	<hr>
	<script>
	 //可以将查找标签节点的操作进行简化  var btn = getElementById('btn')
		        function $(id) {
		            return document.getElementById(id)
		        }
		        window.onload = function() {
		            //点击开始建 开始计数
		            var count = 0
		            var timer = null //timer变量记录定时器setInterval的返回值
		            $("start").onclick = function() {
		                timer = setInterval(function() {
		                    count++;
		                    console.log(count)
		                        // 需要改变页面上时分秒的值
		                    console.log($("id_S"))
		                    $("id_S").innerHTML = showNum(count % 60)
		                    $("id_M").innerHTML = showNum(parseInt(count / 60) % 60)
		                    $("id_H").innerHTML = showNum(parseInt(count / 60 / 60))
		                }, 1000)
		            }
		            $("pause").onclick = function() {
		                    //取消定时器
		                    clearInterval(timer)
		                }
		                //停止记数  数据清零  页面展示数据清零
		            $("stop").onclick = function() {
		                //取消定时器
		                $("pause").onclick()
		                    // clearInterval(timer)
		                    //数据清零  总秒数清零
		                count = 0
		                    //页面展示数据清零
		                $("id_S").innerHTML = "00"
		                $("id_M").innerHTML = "00"
		                $("id_H").innerHTML = "00"
		            }
		
		            //封装一个处理单位数字的函数
		            function showNum(num) {
		                if (num < 10) {
		                    return '0' + num
		                }
		                return num
		            }
		        }
		    </script>
	<% 
 int character=0;//运算符+，-，*，/
 int num1=0;//运算式中第一个数
 int num2=0;//运算式中第二个数
 int correct=0;//计算正确的数目
 int error=0;//计算错误的数目
 String operat=null;//计算式
 Random random = new Random();
 int Endtime=1; //跳转时间
 int operationNumber=Integer.parseInt(request.getParameter("OperationNumber"));//打印题目的数量
 String question[]=new String[operationNumber];
 double result[]=new double[operationNumber];//计算式的结果
  for(int i=0;i<operationNumber;i++)//初始化计算式的结果
  {
      result[i]=0;
      question[i]=null;
  }
 
  DoubleOperation doubleoperation=new DoubleOperation();//初始化.java文件中存储的计算公式个数，问题，答案
  doubleoperation.setOperationNumber(operationNumber);
  doubleoperation.setQuestion(question);
  doubleoperation.setResult(result); 
  
  for(int i=0;i<operationNumber;i++) 
  { 
     
    character=random.nextInt(4)%4+1; 
    if(character==1)//计算加法
    {
        num1=random.nextInt(100)%100;//随机出一个0~100的数
        num2=random.nextInt(100)%100;
        String number1=String.valueOf(num1);
        String number2=String.valueOf(num2);
        operat="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp第("+(i+1)+")题"+number1+"+"+number2+"=";
         result[i]=num1+num2;
    }
    else if(character==2)//计算减法
    {
        num1=random.nextInt(100)%100;//随机出一个1~100的数
        if(num1==0)
            num1=num1+2;//若num1=0,则加2
        num2=(int)random.nextInt(num1)%(num1);//随机出一个0~num1的数
        String number1=String.valueOf(num1);
        String number2=String.valueOf(num2);
        operat="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp第("+(i+1)+")题"+number1+"-"+number2+"=";
        result[i]=num1-num2;
    }
    else if(character==3)//计算乘法
    {
        num1=random.nextInt(9)%9;//随机出一个0~9的数
        num2=random.nextInt(9)%9;
        String number1=String.valueOf(num1);
        String number2=String.valueOf(num2);
         operat="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp第("+(i+1)+")题"+number1+"*"+number2+"=";
        result[i]=num1*num2;
    }
    else //计算除法
    {
        do{
        num1=random.nextInt(81)%81;//随机出一个0~81的数
        if(num1>9)
            num2=random.nextInt(9)%9;
        else 
        {
            if(num1==0)
                num1++;
            num2=(int)random.nextInt(num1)%(num1);
        }
        if(num2==0)//当num2=0再重新生成num2
        {
            num2=num2+1;
        } 
        String number1=String.valueOf(num1);
        String number2=String.valueOf(num2);
        operat="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp第("+(i+1)+")题"+number1+"/"+number2+"=";
        result[i]=num1/num2;
        }while((result[i]>=10)||(num1%num2!=0));//商为10以内的数
        
    }
    
    if(Double.valueOf(result[i])>100) {//如果结果大于100或小数位数大于1则不输出
        i--;
    }
    else {
        question[i]=operat;
        %>
        <%=operat %><input   type="text" name="child_result<%=i %>" >
        <br> <br>
    
        <% 
        
    }
}
 
%>
 <div id="div2">
	<input id="pause" type="button" value="暂停">
    <input id="stop" type="button" value="停止">
</div>
 <input type="submit" value="提交" name="提交" class="btn btn-primary btn-lg" style="margin:100px"> 
  

<%


doubleoperation.setOperationNumber(operationNumber);
doubleoperation.setQuestion(question);
doubleoperation.setResult(result); 

%>


</form>
</body>
</html>