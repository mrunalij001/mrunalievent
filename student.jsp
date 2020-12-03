<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>student login</title>
</head>
<body>

<%

     try{
         
       
	Class.forName("com.mysql.jdbc.Driver");
        
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

	Statement stmt=con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from student3");
       while(rs.next())
{
 if(request.getParameter("uname").equals(rs.getString(10)))
{ 
if(request.getParameter("pass").equals(rs.getString(11)))
{
%>
<center>
<form action="student.html">
<br><br><br><br><br><br><br><br><br>
<h1><font size=30 color="blue"> Login Successfully</font></h1>
<input type="submit" value="continue">



 </form>
</center>
<%
    }
    else
    {
%>

<form action="studentlogin.html">
<h1>password incorrect </h1>
<input type="submit" value="ok">
</form>
<%
}
}
}
}catch(Exception e)
{
 out.println(e);
}
%>

</body>
</html>
