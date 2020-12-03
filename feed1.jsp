<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>Registration</title>
<br><br><br><br><br>
<center><h1><font size=30 color="blue"> Your feedback is save!</font></h1></center>
</head>
<body>


<%
	

	String firstname=request.getParameter("firstname");
	String lastname=request.getParameter("lastname");
	String divi=request.getParameter("divi");
        
        String feedback=request.getParameter("feedback");
        
        int b=0;
try{
       
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	 Statement stmt=con.createStatement();
         b=stmt.executeUpdate("insert into feed1 values('"+firstname+"','"+lastname+"','"+divi+"','"+feedback+"')");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
	

 %>
<center><a href="student.html"> <input type="submit" value="Exit"></a></center> 
       
<%
}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
