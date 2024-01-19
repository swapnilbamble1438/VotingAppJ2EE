<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Login</title>
<link rel="stylesheet" href = "css/style.css">

</head>
<body>
<%@ include file = "navbar.jsp" %>
<%@ include file = "msgcookie.jsp" %>
<%@ include file = "killcookie.jsp" %>


<div class = "center">
<div class="container">

<form action = "checkLogin" method = "post">

<h1>Login</h1>
<%
if(msg != null)
{%>
<p style="color: green"><%=msg %></p>
<% }%>

<%
if(fmsg != null)
{%>
<p style="color: red"><%=fmsg %></p>
<% }%>

<%
if(logoutmsg != null)
{%>
<p style="color: green"><%=logoutmsg %></p>
<% }%>


Email Id: <input type = "text" placeholder="Enter Your Email Id"  name = "email"><br><br>

Password: <input type = "password" placeholder="Enter Your Password"  name= "password"><br><br>

<input type = "submit" value="Login">

</form>

<hr>
<div style="color: firebrick">
<h2>For Signing-in as an Admin </h2>
<h3>Use</h3>
<h3>Email Id: admin</h3>
<h3>Password: admin</h3>

</div>
</div>

</body>
</html>