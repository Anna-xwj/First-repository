<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>连接</title>
</head>
<body>
<%
  String type=request.getParameter("elementNum");
  String OperationNumber=request.getParameter("count");
  if(OperationNumber==null||"".equals(OperationNumber))
  {
      OperationNumber="10";
  }
  if(type.equals("2"))
  {
      response.sendRedirect("2DoubleOperation.jsp?OperationNumber="+OperationNumber);
  }
  else
  {
      response.sendRedirect("3ThreeOperation.jsp?OperationNumber="+OperationNumber);
  }

%>


</body>
</html>