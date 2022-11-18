<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.com</title>
</head>     

<body >


<form method="post">
<CENTER><h1>Donor Details</h1></CENTER>
<%
try
{



Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/blood";
String username="root";
String password="bala8989";
String query="select * from  blood_table";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<center>

		 <table border="1" >
			<tr>
				<th>id</th>
				<th>name</th>
				<th>age</th>
				<th>address</th>
				<th>phone</th>
				<th>email</th>
				<th>blood</th>
			</tr>
			<tr>
				<td><%=rs.getInt(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getInt(3)%></td>
				<td><%=rs.getString(4)%></td>
				
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			    <td><%=rs.getString(7)%></td>
			</tr>
		</table>

	</center>
 <%

}
%>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>



<br><center>
<a href="secount.html"><h3>home</h3></a>
</center>
</form>




</body>
</html>