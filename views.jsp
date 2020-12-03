<%@ page import="java.sql.*" %>
<%@ page import="java.lang.ClassNotFoundException" %>
<html>
<head>
<style>
table,th
{
 border:2px solid black;
 border-collapse:collapse;
 text-align:center;
}

th
{
 padding:20px;
}
<br>
<title>feedback</title>


</style>
</head>

 <body bgcolor="#b28bc1">
<center>
<%
       try
       {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/event","root","");
	Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from regievent");
        if(rs.next()==false)
        {
          %><br><br><br><br><br><br><br><br><br><h1><%out.write("student not found");%>   
         <h1>
           <form >
          <input type="submit" value="Ok" style="width:100px;height:50px">
          </form>
 <%       }
        else
        {
%>
         <h1><font size="15", color="white">student</font></h1>

         <table bgcolor="#f3f2f3" border="5"> 

         <tr>

         <th><font size="6">firstname</font></th>
         <th><font size="6">lastname</font></th>
	 <th><font size="6">eventname</font></th>
	 <th><font size="6">divi</font></th>
	 <th><font size="6">branch</font></th>
	 <th><font size="6">class</font></th>
         
      
      
      
      
      
         </tr>
        <td><font size="5"><%out.println(rs.getString(1));%></font></td>
	<td><font size="5"><%out.println(rs.getString(2));%></font></td>
	<td><font size="5"><%out.println(rs.getString(3));%></font></td>
	<td><font size="5"><%out.println(rs.getString(4));%></font></td>
	<td><font size="5"><%out.println(rs.getString(5));%></font></td>
	<td><font size="5"><%out.println(rs.getString(6));%></font></td>
        	

 <%
        
         while(rs.next())
        {
%>
         <tr>
         <td><font size="5"><%out.println(rs.getString(1));%></font></td>
         <td><font size="5"><%out.println(rs.getString(2));%></font></td>
	<td><font size="5"><%out.println(rs.getString(3));%></font></td>
	<td><font size="5"><%out.println(rs.getString(4));%></font></td>
	<td><font size="5"><%out.println(rs.getString(5));%></font></td>
	<td><font size="5"><%out.println(rs.getString(6));%></font></td>
	
	


         
         </tr>
         
<%
        }
%>
        </table>
         </br>
         <form >
        
	<a  href="faculty1.html"><input type="Button" value="Back" style="width:100px;height:50px"></a>
         </form>
         </center>
<%
       }
      }
      catch(Exception e)
      {
       out.println(e);
     }
%>
</body>
</html>
