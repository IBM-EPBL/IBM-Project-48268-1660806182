<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show details</title>
</head>

<body  background="blood.jpg" >

	<h1>
		<center>
			<b> ENTER YOUR DETAILS</b>
		</center>
	</h1>

	<form action="insert.jsp" method="get">

		<center>
		
		Enter your id :	<input type="text" name="id"> <br><br><br>
	   	Enter your name :	<input type="text" name="name"><br><br><br>
			Enter your age :	<input type="text" name="age"><br><br><br>
				Enter your address:	<input type="text" name="address"><br><br><br>
					Enter your phone NO:	<input type="text" name="phone"><br><br><br>
						Enter your Email	<input type="text" name="email"><br><br><br>
							Enter your Blood group:	<input type="text" name="blood">	<br><br><br>						
			<input type="submit"value="insert"></input><br><br><br>

		</center>
	</form>

</body>
</html>