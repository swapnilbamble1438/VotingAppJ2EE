
<%@page import="com.entity.User"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Voter Login</title>
<link rel="stylesheet" href = "css/bootstrap.css">
<link rel="stylesheet" href = "css/style.css">

<link rel="stylesheet" href = "css/table.css">

</head>
<body>

<%@ include file = "checkvotercookie.jsp" %>
<%@ include file = "voternavbar.jsp" %>
<%@ include file = "msgcookie.jsp" %>

<div class = "center">
<div class="container">





<%
UserDAO dao = new UserDAO(DBConnect.getConn());
User user = dao.getVoterByEmail(voter);

%>
<div class="layout">
	<div class = "col col-main">
	
   		
   		<!-- 1st Col Start -->
		
		<table>
						<h2>Voter Details:</h2>
							<img src="image/user.png" height="125px" alt="User Icon">
							
					</table>
						
						<table border = '1' align='center'>
							
							<tr>
								<th>Id: </th>
								<th> <h4><%= user.getId() %></h4></th>
							</tr>
							
							<tr>
								<th>Name: </th>
								<th> <h4><%= user.getName() %></h4></th>
							</tr>
							
							
						
								<tr>
									<th>Email Id: </th>
									<th><h4 ><%= user.getEmail() %></h4> </th>
								</tr>
					
								<tr>
									<th>Phone No.: </th>
									<th><h4><%= user.getPhone() %></h4> </th>
								</tr>
								
								<tr>
									<th>Status.: </th>
									<th>
										<h4><%= user.getStatus() %></h4> 
									</th>
								</tr>

								
				
						</table>
		
		</div>
		
		<!-- 1st Col End  -->


<!--  -->

<div class = "col col-complementary">

<!-- 2nd Col start -->
<% try{%>

	
<%if(user.getStatus().equals("Voted") && msg == null ) 
{%>
<h1 style="color: green">You are already Voted..</h1>
<% }
  else if(msg != null){%>
	  <h1 style="color: green"><%=msg %></h1>
  <%}
  else {%>
  
		<% 	if(fmsg != null)
		{%>
		<h1 style="color: red"><%=fmsg %></h1>
		<%} %>
		
	<form action = "addVote" method ="post">
		
			<input value ="<%=voter %>" name = "voter" type="hidden" >
		 <br>
		 <input type="radio" name="Candidates"  value ="candidate1" >Candidate 1  <br><br>
		  <input type="radio" name="Candidates"  value = "candidate2" >Candidate 2 <br><br>
		  <input type="radio" name="Candidates"  value = "candidate3" >Candidate 3 <br><br>
		  <input type="radio" name="Candidates"  value = "candidate4" >Candidate 4 <br><br>
		    
		    <br>
		 
		
		
		<input type = "submit" value="Vote">
		<br><br>
		<!--  -->

	</form>

<% }%>

<%}catch(Exception e){
	e.printStackTrace();
}%>

</div>
</div>
</div>
</div>

</body>
</html>