<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="a2mwchaseemandi.Settings" %>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Connection with mysql database</title> 
</head> 
<body>
<h1>Connection status </h1>
<% 
Class.forName("com.ibm.db2.jcc.DB2Driver");
System.out.println("driver loaded sucesssssssssssssssssss");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;",Settings.db2uname,Settings.db2pass);
PreparedStatement Stmt=Conn.prepareStatement("SELECT reg_id FROM registration ");
System.out.println("Statement loaded sucesssssssssssssssssss");
Stmt.executeQuery(); 
ResultSet rs=Stmt.getResultSet(); 
System.out.println("query execute loaded sucesssssssssssssssssss");
String name= null; 
while(rs.next())
 {
  name=rs.getString(1);
  out.println(name);
   }
    rs.close();Stmt.close();Conn.close();
%>
</body> 
</html>