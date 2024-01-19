<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Registration</title>

<link rel="stylesheet" href = "css/style.css">
<%@ include file = "msgcookie.jsp" %>

</head>
<body>
<%@ include file = "navbar.jsp" %>
<div class = "center">
<div class="container">


<form action="addUser" method="post">
<h1>Registration</h1>
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

User Name: <input type = "text" name = "name" placeholder="Enter Your User Name" required><br><br>

Password: <input type = "password" name= "password" placeholder="Enter Your Password" required><br><br>

Email Id: <input type = "text" name= "email" placeholder="Enter Your Email Id" required><br><br>

Phone No: <input type = "number" name= "phone" placeholder="Enter Your Phone No" required><br><br>


<input type = "submit" value="Signup">


</form>
</div>
</div>
</body>
</html>