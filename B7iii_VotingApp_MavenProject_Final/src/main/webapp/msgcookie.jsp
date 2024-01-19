<%
String msg = null;
String fmsg = null;

Cookie[] cookies = request.getCookies();
for(int i = 0; i < cookies.length; i++) 
{
	
	
	
	
	if (cookies[i].getName().equals("vtradded")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	msg= "Successfully Registered Now You can login";
	} 
	
	
	if (cookies[i].getName().equals("vtrnotadded")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	fmsg= "Registration failed try using different EmailId...";
	} 
	
	
	if (cookies[i].getName().equals("cndadded")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	msg= "Successfully Voted";
	} 
	
	
	if (cookies[i].getName().equals("cndnotadded")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	fmsg= "Already Voted";
	} 
	
	if (cookies[i].getName().equals("loginfail")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	fmsg= "Please login first";
	} 
	
	
	if (cookies[i].getName().equals("loginfailed")) 
	{
    cookies[i].setMaxAge(0);
    response.addCookie(cookies[i]);
	fmsg= "Please Enter Correct Credentials!";
	} 
	
	
	
}


%>