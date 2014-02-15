<%-- 
    Document   : newpost
    Created on : Jan 15, 2014, 1:18:48 PM
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
        <%  if ((session.getAttribute("userid") != null) || (session.getAttribute("userid") == "")) {
        %> 
       
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
	</div>
        <div id="main">
		
            <div id="welcome">
                <div class="title">
				<h2>Write your guide</h2>
				<span class="byline">enter the title, the main text and select a category</span>
			</div>
                        <br>
                    <form method="post" action="addpost.jsp">
                        <center>
                        <table  width="50%" cellpadding="5">
                            <thead>
                                <tr>
                                    <th colspan="2">Create your post</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Title</td>
                                    <td><input type="text" name="title" placeholder="Guide title" class="titlearea" value="" required /></td>
                                </tr>
                                <tr>
                                    <td>Post</td>
                                    <td><textarea name="post" placeholder="Type your text here..." class="postarea" cols="25" rows="5" required /></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Video, if you want(copy and paste the code from the embed option of youtube)</td>
                                    <td><input type="text" name="video" placeholder="Paste the link from youtube" class="titlearea" value="" /></td>
                                </tr>
                                <tr>
                                    <td>Category</td>
                                    <td><select name="category">
                                        <option value="funny">Funny</option>
                                        <option value="technology">Technology</option>
                                        <option value="cars">Cars</option>
                                        
                                        </select></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="Submit" /></td>
                                    <td><input type="reset" value="Reset" /></td>
                                </tr>

                            </tbody>
                        </table>
                        </center>
                    </form>
                <div id="copyright">
			<span>Created By Gepapast</a></span>
			
		</div>
	</div>
    </div>
    
    <% } else {
            response.sendRedirect("index.jsp");
        }
    %>
    </body>
</html>
                  
    