<%-- 
    Document   : index
    Created on : Dec 18, 2013, 12:11:24 PM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="css/antihow.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

</head>
    <body>
    <div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="images/sign.jpg" alt="" width="42" height="42" />
			<h1><a href="http://83.212.114.129:8080/finalproject/web/index.jsp">AntiHowTo
                            guides</a></h1>
		</div>
		<div id="menu">
                    <p style="font-family:arial;color:red;font-size:20px;margin: 5px;">Categories</p>
                        <hr>
                        <ul>
				<li><a href="funny.jsp" accesskey="2" title="">Funny</a></li>
				<li><a href="technology.jsp" accesskey="3" title="">Technology</a></li>
				<li><a href="cars.jsp" accesskey="4" title="">Cars</a></li>
                        </ul>			
		</div>
                <form method="get" action="/search" id="search">
                    <input name="q" type="text" size="40" placeholder="Search..." />
                </form>
	</div>
        <div id="main">
		<div id="banner">
			<img src="images/board.jpg" alt="" class="image-full" />
		</div>
		<div id="welcome">
			<div class="title">
				<h2>welcome to anti-how-to guides</h2>
				<span class="byline">a site about how to don't do something</span>
			</div>
			<br>
                        <%
                        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                        %>    
 
                        
			<p>If you want to post your own guide or make a comment you have to <strong>log in</strong>,if you are a registered user or <strong>register now</strong> ! </p>
			<ul class="actions">
				<li><a href="loginregister.jsp" class="button">login or register </a></li>
                        </ul>
                        
		</div>
                <br>
                    
                   
                
                <%} else {
                %>
                <p>You are logged in as <strong><%=session.getAttribute("userid")%> <strong></p>
                    
                <p>If you want to write a a new post click here</p>
                <br>
                <br>
                <ul class="actions">
                    <li><a href="newpost.jsp" class="button">Write your story </a></li>
                </ul>  
                    
                    <br>
                    <br>
                        <a href='logout.jsp'>Log out</a>
                <%
                }
                %>
                    
                    
		<br>
                
		<div id="copyright">
			<span>Created By Gepapast</a></span>
			
		</div>
	</div>
    </div>
    
    
    </body>
</html>
