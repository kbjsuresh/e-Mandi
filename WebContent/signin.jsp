<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-MANDI SIGNIN!!</title>
</head>
<STYLE>
#footer
{
font-size:10px;
}
form
{
background-color:gray;
width:200px;
}
</STYLE>
<body>
<form name="signinform" action="process.jsp" method="post">
LOGIN DETAILS
<BR/>
USERNAME:<BR/><input name="usernametxt" type="text"/><br/>
PASSWORD:<BR/><input name="passwordtxt" type="password"/> <div id="footer"> FORGOT PASSWORD ?</div><br/>
<input type="submit" name="loginbtn" value="LOGIN"/>
</form>
</body>
</html>