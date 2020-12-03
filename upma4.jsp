
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>update</title>

</head>
<body>
<h3>
<%
	 
	String oldname=request.getParameter("oldname");
	String newname=request.getParameter("newname");
      	
        
	
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("update view set name='"+newname+"' where name='"+oldname+"'");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
	out.println(" updated Successfuly");
	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
	</h3>	
</body>
</html>
