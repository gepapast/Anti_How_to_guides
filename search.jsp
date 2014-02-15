<%-- 
    Document   : search
    Created on : Feb 14, 2014, 2:59:27 PM
    Author     : George
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
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
		
		<div id="welcome">
			<div class="title">
				<h2>Search results</h2>
				<span class="byline">below you see the posts that match with your search words</span>
			</div>
                        <br>
                        <br>
                        <%
                            String query = request.getParameter("q");
                            try {
                                request.setCharacterEncoding("UTF-8");
                                /* Create string of connection url within specified format with machine
                                name, port number and database name. Here machine name id localhost and 
                                database name is student. */
                                String connectionURL = "jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8";
                                // declare a connection by using Connection interface
                                Connection connection = null;
                                /* declare object of Statement interface that is used for executing sql 
                                statements. */
                                Statement statement = null;
                                // declare a resultset that uses as a table for output data from tha table.
                                ResultSet rs = null;
                                // Load JBBC driver "com.mysql.jdbc.Driver"
                                Class.forName("com.mysql.jdbc.Driver").newInstance();
                                /* Create a connection by using getConnection() method that takes parameters 
                                of string type connection url, user name and password to connect to database.*/
                                connection = DriverManager.getConnection(connectionURL, "root", "password");
                                /* createStatement() is used for create statement object that is used for 
                                sending sql statements to the specified database. */
                                statement = connection.createStatement();
                                // sql query to retrieve values from the secified table.
                                String QueryString = "SELECT * from posts WHERE title LIKE '%" + query + "%' OR post LIKE '%" + query + "%'";
                                rs = statement.executeQuery(QueryString);
                                %>
                
                <div id="featured">
			
                        <%
                            while (rs.next()) {
                        %>
			<ul class="style1">
				<li class="first">
					<p class="date"> <%=rs.getObject(5)%></p>
					<h3><%=rs.getString(3)%></h3>
                                        <br>
					<p><%=rs.getString(4)%></p>
                                        <p>Author: <%=rs.getString(2)%></p>
                                        <p>Posted in category: <%=rs.getString(6)%> </p>
				</li>
				
			</ul>
                        <% } %>
                        <%
                        // close all the connections.
                        rs.close();
                        statement.close();
                        connection.close();
                        } catch (Exception ex) {
                        %>
                        </font>
                        <font size="+3" color="red"></b>
                        <%
                        out.println("Unable to connect to database.");
                        }
                        %>
		</div>
                <br>
                  <%  if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                        %>    
 
                        
			<p>If you want to post your own guide or make a comment you have to <strong>log in</strong>,if you are a registered user or <strong>register now</strong> ! </p>
			<ul class="actions">
				<li><a href="loginregister.jsp" class="button">log in or register </a></li>
                        </ul>
                        
		</div>
                <br>
                    
                   
                
                <%}
                else {%>
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
