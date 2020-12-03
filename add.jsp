<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>

<html>
<head>

<title>AddEvent</title>

</head>
<body>

<%
	String Event_Name=request.getParameter("Event_Name");

	String Event_Place=request.getParameter("Event_Place");


	String Event_Guest=request.getParameter("Event_Guest");
	
	String Event_Date=request.getParameter("Event_Date");
        String Event_Time =request.getParameter("Event_Time");
         String Branch=request.getParameter("Branch");

     
	int b=0;
     try{
       
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
	Statement stmt=con.createStatement();
        b=stmt.executeUpdate("insert into addevent2 values('"+Event_Name+"','"+Event_Place+"','"+Event_Guest+"','"+Event_Date+"','"+Event_Time+"','"+Branch+"')");
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
<h1><font size=30 color="blue"> Insertion Successfully Done..!</font></h1>
<h4><font size=5 color="Red"> Do you want to add more events?</font></h4>
<a  href="add.html"><input type="Button" value="Yes" ></a>
<a  href="admin.html"><input type="Button" value="No" ></a>



 </form>
 </center>
<%

}	
	else
		out.println("Failed.... SomeThing Wrong");
	%>
</body>
</html>
