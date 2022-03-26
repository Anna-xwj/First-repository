<%@ page import="math.DoubleOperation" %>
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
	 <div style="text-align:right">
		<a href="1choose.jsp">选择类型</a>&nbsp;&nbsp;
		<a href="index.html">退出登录</a><br><br>
	</div>
	<hr>
	<h3 style="font-family:华文彩云" align="left">答题结果</h3>
<%
    int correct=0;//计算正确的数目
    int error=0;//计算错误的数目
    int nullerror=0;//没答题的数目 
    DoubleOperation doubleoperation=new DoubleOperation();
    double[] result=doubleoperation.getResult();
    String[] question=doubleoperation.getQuestion();
    int operationNumber=doubleoperation.getOperationNumber();
    System.out.println("count="+operationNumber);
    for(int i=0;i<operationNumber;i++)
    {
        String child_result=request.getParameter("child_result"+i);
        %>
        
        <%=question[i] %><%=child_result %>&nbsp;&nbsp;&nbsp;
<% 
        if((null==child_result)||("".equals(child_result)))
        {
            nullerror++;
            %>
            &nbsp;&nbsp;&nbsp;正确答案是<%=result[i]%><br><br>
            <% 
        }
        else
        {
            double child_result2=Double.valueOf(child_result);
          if(child_result2==result[i])
          {
             correct++;
             %>
            √<br><br>
             <% 
          }
          else
          {
            error++;
            %>
            ×&nbsp;&nbsp;&nbsp;正确答案是<%=result[i]%><br><br>
            <% 
           }
        }
    }
%>
 <!-- <iframe src='DoubleOperation.jsp'/> -->
	恭喜你呀！一共答对了<%=correct %>道题，答错了<%=error %>道题，没答<%=nullerror %>道题！！要继续加油哦！

</body>
</html>