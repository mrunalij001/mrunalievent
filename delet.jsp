
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>
<title>Delete</title>

</head>
<body>

<%
	String Event_Name=request.getParameter("Event_Name");

       	
	
	
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("delete from addevent2 where(Event_Name='"+Event_Name+"')");
        
         }
   catch(Exception ex)
     {
      out.println(ex);
     ex.printStackTrace();
     }
	
     if(b!=0)

{
  %>
<center>
 <form action="admin.html" >
     <br><br><br><br><br><br>
<h1><font size=30 color="blue"> Deletion Successfully Done..!</font></h1>
<h4><font size=5 color="Red"> Do you want to delete more events?</font></h4>
<a  href="delete.html"><input type="Button" value="Yes" ></a>
<a  href="admin.html"><input type="Button" value="No" ></a>



 </form>
 </center>
<%

}
else
{
out.println("deleted unsuccessfully");
}


%>
</body>
</html>
