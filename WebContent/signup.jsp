<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-MANDI Signup Form!!</title>
</head>
<body>
	<h1 align="center">
		<font face="Times New Roman TUR">WELCOME TO e-MANDI SIGNUP FORM<br></font></h1>
	<p align="left">* All Fields are Mandatory.</p>
	<form name="signupform" action="process.jsp" method="post">
First Name: <br/> <input name="fnametxt" type="text" size="50"/><br/>
Last Name: <br/> <input name="lnametxt" type="text" size="50"/><br/>
Date of Birth: <br/>
<select name="dayselect">
<option> </option>
</select>
<select name="monthselect">
<option> </option>
</select>
<select name="yearselect">
<option> </option>
</select><br/>
Email ID: <br/> <input name="emailidtxt" type="text" size="50"/><br/>
Mobile:<br/><input name="mobiletxt" type="text" size="50"/><br/>
Address Line 1:<br/><input name="address1txt" type="text" size="50"/><br/>
Address Line 2:<br/><input name="address2txt" type="text" size="50"/><br/>
Address Line 3:<br/><input name="address3txt" type="text" size="50"/><br/>
Area:<br/><input name="areatxt" type="text" size="50"/><br/>
Select State:<br/> <select name="stateselect" size="1">
			<option>TamilNadu</option>
		</select><br/>
Select City:<br/>
<select name="cityselect" >
<option>Chennai</option>
</select><br/>
Type of Account:<br/>
<select name="acttypeselect" size="0">
<option>Farmer</option>
<option>Whole Seller</option>
<option>Retailer</option>
<option>Civilian</option>
</select><br>
		Username:<br><input name="usernametxt" type="text" size="50"> <br>
		Password:<br> <input name="passwordtxt" type="password" size="50"><br>
		Conform Password:<br> <input name="conformpasswordtxt" type="password" size="50"><br/><br><div
			align="left">
			<input type="submit" name="submitbtn" value="REGISTER"
				style="width: 179px; height: 34px"> <input type="reset"
				value="RESET" style="height: 34px; width: 155px">
		</div>
	</form>
</body>
</html>