<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-MANDI Home Page</title>
<style type="text/css">
div{
border-radius:15px;
}
#titlediv{
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
background-color:#CCC;
}
#logindiv
{
-moz-border-radius: 10px;
-webkit-border-radius: 10px;
background-color:red;
padding:10px;
}
#createactdiv
{
border-radius:15px;
background-color:yellow;
padding:10px;
}
#actdiv{
background-color:#CCC;
padding:15px;
}
#wrapper{
background-color:#CCC;
padding:15px;
}
</style>
</head>
<style type="text/css">
html{
background:orange 10%;
}
</style>
<style type="text/css">
html{
font-family:"AERIAL";
background-attachment:fixed;
}
#wrapper{
margin:0 auto;
width:1035px;
background-color:#CCC;
padding:10px;
background: rgba(98,135,167,.4);
border-radius:10px;
height:600px;
}
#main{
width:600px;
float:left;
margin-top:9px;
background-color:#CCC;
border-radius:10px;
padding:10px;
margin-bottom:10px;
text-align:justify;
}
.headerright{
margin-left:10px;
width:280px;
border-radius:10px;
background-color:#CCC;
height:145px;
padding:10px;
}
.headerleft{
width:690px;
border-radius:10px;
background-color:#CCC;
height:125px;
padding:5px;
font-weight:bold;
font-family:"Alien Encounters";
FONT-SIZE:35PX;
}

.createactbtn{
border-radius:10px;
background-color:#1BC0B6;
text-decoration:none;
margin-top:20px;
color:#OOO;
font-size:24px;
}
.login
{
border-radius:10px;
background-color:#C01413;
padding:4px;
text-decoration:none;
border:double 6px #c01413
color:#OOO;
font-size:24px;
margin-top:30px;
}
.sidebar{
width:280px;
height:250px;
background-color:#CCC;
border-radius:10px;
padding:10px;
float:right;
margin-right:20px;
}
#footer {
text-decoration:none;
position:absolute;
left:0;
bottom:10px;
}
#t{
margin-top:40px;
margin-left:50px;

}
#i{float:left;
}
</style>

<body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
</script>
<script>
$(document).ready(function(){
  $("#downa").mouseenter(function(){
       $("#signint").slideToggle("slow");
    });
});
$(document).ready(function(){
  $("#signint").mouseleave(function(){
       $("#signint").slideToggle("slow");
    });
});
</script>
<div id="wrapper">
<table border="0" width="1000px">
<tr>
<td>
<div class="headerleft">
<div id="i">
<a href="http://kbjsureshkumar.site11.com/" title="HOME">
<img style="margin-LEFT:0px"src="data:image/jpeg;base64,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"
 width="110" height="125"></div>
						<div id="t" style="height: 71px">
							</a>WELCOME TO e-MANDI
						</div>
					</div>
</td>
<td>
<div class="headerright"><CENTER><a href="http://kbjsureshkumar.site11.com/signin.html">
<div class="login">LOG IN</a>
<img id="downa" border="0"
src="http://www.razorleaf.com/wp-content/uploads/2009/09/Down-Arrow-Icon-245x249.png"
alt="LOG IN" width="50" height="25">
<a href="http://kbjsureshkumar.site11.com/form.html"></center>
						<div class="createactbtn"><center>CREATE ACCOUNT</center></div>
						</a>
					Please create a account</div></div>
</td>
</tr>
</table>
<DIV ID="D">
<table border="1" >
<tr>
<td>HOME</td>
<td>VIEW PRODUCTS</td>
<td>ABOUT US</td>
</tr>
</table>
<div id="main">
</div></DIV></body>
</html>