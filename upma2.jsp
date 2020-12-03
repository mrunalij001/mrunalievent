
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>update</title>

</head>
<body>
<h3>
<%
	 
	String old_name=request.getParameter("old_name");
	String new_name=request.getParameter("new_name");
      	
        
	
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("update addevent2 set Event_Name='"+new_name+"' where Event_Name='"+old_name+"';");
      }
   catch(Exception ex)
     {
      out.println(ex);
     }
	
	if(b==1)
{
                  

 %>
<center>
 <form action="admin.html" >
     <br><br><br><br><br><br>
<h1><font size=30 color="blue"> Updation Successfully Done..!</font></h1>
<h4><font size=5 color="Red"> Do you want to update more events?</font></h4>
<a  href="update.html"><input type="Button" value="Yes" ></a>
<a  href="admin.html"><input type="Button" value="No" ></a>



 </form>
 </center>
<%
}
	
	else
{
		out.println("Failed.... SomeThing Wrong");
}
	%>
	</h3>	
</body>
</html>
