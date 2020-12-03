<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>admin login</title>
</head>
<body>
<%

     try{
       
	Class.forName("com.mysql.jdbc.Driver");
        
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

	Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from event1");
       while(rs.next())
{
if(request.getParameter("uname").equals(rs.getString(1)) && request.getParameter("psw").equals(rs.getString(2)))
{
response.sendRedirect("admin.html");
    }
    else
    {
%>

<form action="adminlogin.html">
<h1> Username or password incorrect </h1>
<input type="submit" value="ok">
</form>
<%
}
}
}catch(Exception e)
{
 out.println(e);
}
%>

</body>
</html>
