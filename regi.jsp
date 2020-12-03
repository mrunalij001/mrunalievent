<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>Registration</title>

</head>
<body>

<%
	String firstname=request.getParameter("firstname");

	String lastname=request.getParameter("lastname");


	String email=request.getParameter("email");
	
	String mobileno=request.getParameter("mobileno");
        String divi =request.getParameter("divi");

      String branch=request.getParameter("branch");

      String class1=request.getParameter("class1");

      String gender=request.getParameter("gender");
      String address=request.getParameter("address");
      String uname=request.getParameter("uname");
      String pass=request.getParameter("pass");

	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("insert into student3 values('"+firstname+"','"+lastname+"','"+email+"','"+mobileno+"','"+divi+"','"+branch+"','"+class1+"','"+gender+"','"+address+"','"+uname+"','"+pass+"')");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
	
%><center>
 <form action="student.html" >
     <br><br><br><br><br><br>
<h1><font size=30 color="blue"> Registration Successfull</font></h1>
<h4><font size=5 color="Red"> Do you want to register for another account?</font></h4>
<a  href="registration.html"><input type="Button" value="Yes" ></a>
<a  href="studentlogin.html"><input type="Button" value="No" ></a>



 </form>
 </center>
<%
}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
