<%-- 
    Document   : addpost
    Created on : Jan 15, 2014, 1:30:39 PM
    Author     : George
--%>

<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%
    request.setCharacterEncoding("UTF-8");
    
    String userid=(String)session.getAttribute("userid");
    userid = userid.replace("\'","\'\'");
    String title = request.getParameter("title");
    title = title.replace("\'","\'\'");
    String post = request.getParameter("post");
    post = post.replace("\'","\'\'");
    String category = request.getParameter("category");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8",
            "root", "password");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into posts(userid, title, post, postdate, category) values ('" + userid + "','" + title + "','" + post + "', CURDATE(),'" + category + "')");
        
    if (i > 0) {
        
        response.sendRedirect("index.jsp");
       
    } else {
        response.sendRedirect("newpost.jsp");
    }
%>%>
 