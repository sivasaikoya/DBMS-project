<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dbms.dao.getting.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
getting_increased_expiry_dates gied=new getting_increased_expiry_dates();
gied.exp_dates("103");
out.print(gied.policy_num[0]);
%>
</body>
</html>