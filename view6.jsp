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
<title>View Student</title>


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
        ResultSet rs=stmt.executeQuery("select * from feed");
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
         <h1><font size="15", color="white">feedback</font></h1>

         <table bgcolor="#f3f2f3" border="5"> 

         <tr>
         <th><font size ="6">name</font></th>
         <th><font size="6">feed</font></th>
         
      
      
      
      
         </tr>
        <td><font size="5"><%out.println(rs.getString(1));%></font></td>
	<td><font size="6"><%out.println(rs.getString(2));%></font></td>
         <%
         while(rs.next())
        {
%>
         <tr>
         <td><font size="5"><%out.println(rs.getString(1));%></font></td>
	<td><font size="5"><%out.println(rs.getString(2));%></font></td>
        
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
