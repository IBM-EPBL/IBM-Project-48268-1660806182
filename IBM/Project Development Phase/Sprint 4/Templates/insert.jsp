<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<form method="post">
		<CENTER>
			<h1>your details</h1>
		</CENTER>
		<%
		try {

			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String address = request.getParameter("address");
			
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String blood = request.getParameter("blood");

			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcUrl = "jdbc:mysql://localhost:3306/blood";
			String username = "root";
			String password = "bala8989";
			String sql = "insert into blood_table (id , name , age, address,phone ,email ,blood )" + "values (?,?,?,?,?,?,?)";

			Connection conn = DriverManager.getConnection(jdbcUrl, username, password);

			// create the mysql insert preparedstatement
			PreparedStatement Stmt = conn.prepareStatement(sql);
			Stmt.setInt(1, id);
			Stmt.setString(2, name);
			Stmt.setInt(3, age);
			Stmt.setString(4, address);
		
			Stmt.setString(5, phone);
			Stmt.setString(6, email);
			Stmt.setString(7, blood);
			// execute the preparedstatement
			Stmt.execute();

			conn.close();

			out.println("Record insert successfully");

		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		%>
		<br>
		<center>
			<a href="secount.html"><h3>home</h3></a>
		</center>

	</form>




</body>
</html>