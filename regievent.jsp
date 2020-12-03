<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>Registration</title>
<br><br><br><br><br>


</head>
<body>


<%
	String firstname=request.getParameter("firstname");

	String lastname=request.getParameter("lastname");


	
	
	String eventname=request.getParameter("eventname");
        String divi =request.getParameter("divi");

      String branch=request.getParameter("branch");

      String class1=request.getParameter("class1");

      

	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("insert into regievent values('"+firstname+"','"+lastname+"','"+eventname+"','"+divi+"','"+branch+"','"+class1+"')");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
	

 %>
<center>
 <form action="student.html" >
     <br><br><br><br><br><br>
<h1><font size=30 color="blue"> Registration Successfull</font></h1>
<h4><font size=5 color="Red"> Do you want to register another events?</font></h4>
<a  href="stud.html"><input type="Button" value="Yes" ></a>
<a  href="student.html"><input type="Button" value="No" ></a>



 </form>
 </center>
<%
}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
