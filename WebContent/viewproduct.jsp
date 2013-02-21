<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="a2mwchaseemandi.Settings" %>
<%@ page import="java.sql.*" %> 
<% 
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;",Settings.db2uname,Settings.db2pass);
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM products");
Stmt.executeQuery(); 
ResultSet rs=Stmt.getResultSet(); 
out.println("<table name='' border=''><tr><td>NAME</td><td>PRICE/Kg</td>");
while(rs.next())
 {
 out.println("<tr><td>"+rs.getString(2)+"</td><td>");
 out.println(rs.getString(3)+"</td>");
 }
 out.println("</table>");
%>

<%PreparedStatement Stmt1=Conn.prepareStatement("SELECT * FROM products ");
Stmt1.executeQuery(); 
ResultSet rs1=Stmt1.getResultSet();
int count=0;
String[] prod_name=new String[100];
String[] prod_price=new String[100];
out.println("<form name='process.jsp' action='process.jsp' method='post'>SELECT A PRODUCT:<select name='prodselect'>");
while(rs1.next())
 {
 prod_name[count]=rs1.getString(2);
  prod_price[count]=rs1.getString(3);
out.println("<option>"+rs1.getString(2)+"</option>");
count++;
 }
 out.println("</select><table name='' border='1'>");
 while(count+1>0)
 {
 out.println("<tr><td>NAME:</td><td>"+prod_name[count]+"</td><td>PRICE:</td><td>"+prod_price[count]+"</td>");
 out.println("<td><input name='bid"+count+"' type='submit' value='BID'></td></tr>");
 count--;
 }
 out.println(" </table></form>");
 %>

</body>
</html>