<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>feedback</title>

</head>
<body>

<%
	String feed1=request.getParameter("feed1");

	
     
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("insert into feed values('"+studentname+"','"+rollnumber+"','"+feedback+"')");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
	
 %>
<form action="admin.html"><center><h1>Insertion Successfull</h1></center>
<center><a href="student.html"><h3> Click Here to </h3> ok</a>
</center>
</form>       
<%

}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
