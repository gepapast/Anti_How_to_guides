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
			<h1><a href="index.jsp">AntiHowTo
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
                <form method="get" action="search.jsp" id="search">
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
                <SCRIPT>
                function GetCookie (name) { 
                var arg = name + "="; 
                var alen = arg.length; 
                var clen = document.cookie.length; 
                var i = 0; 
                while (i < clen) {
                var j = i + alen; 
                if (document.cookie.substring(i, j) == arg) 
                return getCookieVal (j); 
                i = document.cookie.indexOf(" ", i) + 1; 
                if (i == 0) break; 
                } 
                return null;
                }
                function SetCookie (name, value) { 
                var argv = SetCookie.arguments; 
                var argc = SetCookie.arguments.length; 
                var expires = (argc > 2) ? argv[2] : null; 
                var path = (argc > 3) ? argv[3] : null; 
                var domain = (argc > 4) ? argv[4] : null; 
                var secure = (argc > 5) ? argv[5] : false; 
                document.cookie = name + "=" + escape (value) + 
                ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + 
                ((path == null) ? "" : ("; path=" + path)) + 
                ((domain == null) ? "" : ("; domain=" + domain)) + 
                ((secure == true) ? "; secure" : "");
                }
                function DeleteCookie (name) { 
                var exp = new Date(); 
                exp.setTime (exp.getTime() - 1); 
                var cval = GetCookie (name); 
                document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString();
                }
                var expDays = 30;
                var exp = new Date(); 
                exp.setTime(exp.getTime() + (expDays*24*60*60*1000));
                function amt(){
                var count = GetCookie('count')
                if(count == null) {
                SetCookie('count','1')
                return 1
                }
                else {
                var newcount = parseInt(count) + 1;
                DeleteCookie('count')
                SetCookie('count',newcount,exp)
                return count
                }
                }
                function getCookieVal(offset) {
                var endstr = document.cookie.indexOf (";", offset);
                if (endstr == -1)
                endstr = document.cookie.length;
                return unescape(document.cookie.substring(offset, endstr));
                }
                </SCRIPT>
                
                <p>You are logged in as <strong><%=session.getAttribute("userid")%> <strong></p>
                <p>
                   <SCRIPT>
                     document.write("You've been here <b>" + amt() + "</b> times during the last month.")
                   </SCRIPT>
                </p>  
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
