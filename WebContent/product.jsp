<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>ADD NEW PRODUCT</p>
	<form name="productform" action="process.jsp" method="post">
				<table border=1 width="299" height="106">
<TR>
<td height="25" width="85">
 NAME 
</td> 
<TD width="201">
<input name="prdnametxt" type="text" size="30">
</TD>
</TR>
<tr>
<TD height="25" width="85">
PRICE
</TD>
<TD width="201">
<input name="prdpricetxt" type="text" size="30">
</TD>
</tr>
<tr>
<TD height="46" width="85" style="width: 85px" colspan="2" align="center">
<INPUT name="prdaddsubmitbtn" type="submit" value="ADD NEW" >
</TD></tr>
</table>
</form>
	<p>UPDATE PRODUCT</p>
	<form name="prdupdateform" action="process.jsp" method="post">
	<table  border="1">
	<%@ page import="a2mwchaseemandi.Settings" %>
<% 
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;",Settings.db2uname,Settings.db2pass);
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM products ");
Stmt.executeQuery(); 
ResultSet rs=Stmt.getResultSet(); 
String name= null; 
int i=1;
while(rs.next())
{
    out.println(" <TR><td>NAME</td> <td> <input name='"+i+"prdupdnametxt' type='text' value='");
	out.println(rs.getString(2));
	out.println("'> </td>");
	out.println("<td>PRICE</td> <td> <input name='"+i+"prdupdpricetxt' type='text' value='");
	out.println(rs.getString(3));
	out.println("'> </td></TR>");
	i++;
}
out.println("<input name='hidfield' type='hidden' value='");
out.println(i);
out.println("'>");
%>
<tr>
<td>
<input name="prdupdsubmitbtn" type="submit" value="UPDATE">
</td>
</tr>
	</table>
	</form>
	<form name="farmerprodform" action="process.jsp" method="post">
	SELECT A PRODUCT:
 <select name="farmerprodselect">
<%
	PreparedStatement Stmt1=Conn.prepareStatement("SELECT * FROM products ");
Stmt1.executeQuery(); 
ResultSet rs1=Stmt1.getResultSet();
while(rs1.next())
{	
out.println("<option>"+rs1.getString(2)+"</option>");
}
%>
</select><br/>
QUANTITY(Kg):
<input name="farmerprodqty" type="text" ><br/>
<input name="farmerprodsubmit" type="submit" value="ADD">
	</form>
</body>
</html>