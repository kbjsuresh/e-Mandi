<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
  
<%@ page import="java.sql.*" %> 
<%@ page import="a2mwchaseemandi.Settings" %>
<% 
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/SAMPLE:retrieveMessagesFromServerOnGetMessage=true;",Settings.db2uname,Settings.db2pass);
%>
<%
if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submitbtn") != null)
{
String ffname=request.getParameter("fnametxt");
String flname=request.getParameter("lnametxt");
String femailid=request.getParameter("emailidtxt");
String fmobile=request.getParameter("mobiletxt");
String faddressl1=request.getParameter("address1txt");
String faddressl2=request.getParameter("address2txt");
String faddressl3=request.getParameter("address3txt");
String farea=request.getParameter("areatxt");
String fcity=request.getParameter("cityselect");
String fstate=request.getParameter("stateselect");
String facttype=request.getParameter("acttypeselect");
String fusername=request.getParameter("usernametxt");
String fpassword=request.getParameter("passwordtxt");
PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO registration(fname,lname,emailid,addressl1,addressl2,addressl3,area,city,states,username,password) values('"+ ffname +"','"+ flname +"','"+ femailid +"','"+ faddressl1 +"','"+ faddressl2 +"','"+ faddressl3 +"','"+ farea +"','"+ fcity +"','"+ fstate +"','"+fusername+"','"+fpassword+"') ");
PreparedStatement st=Conn.prepareStatement("INSERT INTO login values('"+fusername+"','"+fpassword+"')");
Stmt.executeUpdate();
st.executeUpdate();
out.println("SUBMIT BUTTON");
response.sendRedirect("signin.jsp"); 
}
if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("loginbtn") != null)
{
out.println("LOGIN BUTTON");
String username=request.getParameter("usernametxt");
String password=request.getParameter("passwordtxt");
session.setAttribute("susername",username);
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM login");
Stmt.executeQuery(); 
ResultSet rs=Stmt.getResultSet();  
int count=0;
while(rs.next())
 {
 if((username.equals(rs.getString(1))) && (password.equals(rs.getString(2))))
 {
 count++;
 }
 }
 if(count==1){
 response.sendRedirect("home.jsp"); 
 %>
    
  <%
 session.setAttribute("susername",username);
 }
 else
 {
 response.sendRedirect("signin.jsp"); 
 %>
     
 <%
 }
out.println(session.getAttribute("susername"));

}

if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("prdaddsubmitbtn") != null)
{
String prdname=request.getParameter("prdnametxt");
String prdprice=request.getParameter("prdpricetxt");
PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO products(p_name,p_price) values('"+ prdname +"','"+ prdprice +"') ");
Stmt.executeUpdate();
response.sendRedirect("product.jsp");
%>

<%
}
if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("prdupdsubmitbtn") != null)
{
PreparedStatement Stmt=Conn.prepareStatement("SELECT * FROM products");
Stmt.executeQuery(); 
ResultSet rs=Stmt.getResultSet(); 
int i=0;
while(rs.next())
 {
 i++;
 }
while(i!=0)
{
String p_name=request.getParameter(i+"prdupdnametxt");
String p_price=request.getParameter(i+"prdupdpricetxt");
PreparedStatement Stmt1=Conn.prepareStatement("update products set p_price='"+p_price+"' where p_id="+i+"");
Stmt1.executeUpdate();
i--;
}
response.sendRedirect("product.jsp");
%>


<%
}
if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("farmerprodsubmit") != null)
{
String uname=session.getAttribute("susername").toString();
String fp_name=request.getParameter("farmerprodselect");
String fp_qty=request.getParameter("farmerprodqty");
PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO availableprod values('"+ fp_name +"','"+uname+"','"+fp_qty+"')");
Stmt.executeUpdate();
response.sendRedirect("product.jsp");
}
%>
</body>
</html>