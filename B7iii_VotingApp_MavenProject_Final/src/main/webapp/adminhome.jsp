
<%@page import="com.conn.DBConnect"%>
<%@page import="com.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.CandidateDAO"%>
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
<%@ include file = "adminnavbar.jsp" %>
<%@ include file = "checkadmincookie.jsp" %>
<%@ include file = "msgcookie.jsp" %>

<div class = "center">
<div class="container">








<!--  -->
<div class="container" id="cb" >
<h1>All Candidates Votes</h1>

<%


CandidateDAO dao = new CandidateDAO(DBConnect.getConn());		
List<Candidate> list = dao.getCandidates();

for(Candidate l : list)
	
  {
	%>
  <h3>Candidate <%=l.getId() %> : Total Votes = <b style="color: limegreen"><%= l.getVotes()  %></b></h3>
		
  <% 
  }
%>
	
		
		
		
		
	
	
</div>	

<!--  -->

</div>
</div>

</body>
</html>