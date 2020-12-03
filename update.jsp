<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>updateEvent</title>

</head>
<body>

<%
	String Event Name=request.getParameter("Event Name");

	String Event Place=request.getParameter("Event Place");


	
     
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("select * from addevent2");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
	
 %><center><h1>updation Successfull</h1></center>
<center><h3> Click Here to </h3> <a href="update.html">ok</a></center>       
<%

}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
