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
<title>update</title>


</style>
</head>

 <body bgcolor="#b28bc1">
<center>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database);
statement=connection.createStatement();
String sql ="select * from users";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
       
 <%       }
        else
        {
%>
         <h1><font size="15", color="white">student</font></h1>

         <table bgcolor="#f3f2f3" border="5"> 

         <tr>

           <th><font size="6">id</font></th>
         <th><font size="6">firstname</font></th>
         <th><font size="6">lastname</font></th>
	 <th><font size="6">email</font></th>
	 
      
      
      
      
         </tr>
        <td><font size="5"><%out.println(rs.getString(1));%></font></td>
	<td><font size="5"><%out.println(rs.getString(2));%></font></td>
	<td><font size="5"><%out.println(rs.getString(3));%></font></td>
	<td><font size="5"><%out.println(rs.getString(4));%></font></td>
	

 <%
        
         while(rs.next())
        {
%>
         <tr>
         <td><font size="5"><%out.println(rs.getString(1));%></font></td>
         <td><font size="5"><%out.println(rs.getString(2));%></font></td>
	<td><font size="5"><%out.println(rs.getString(3));%></font></td>
	<td><font size="5"><%out.println(rs.getString(4));%></font></td>
	


         
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
