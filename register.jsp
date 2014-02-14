<%-- 
    Document   : register
    Created on : Jan 13, 2014, 11:38:04 AM
    Author     : George
--%>

<%@ page import ="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String name = request.getParameter("name");
    
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8",
            "root", "password");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(name, email, uname, pass, regdate) values ('" + name + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        session.setAttribute("userid", user);
        response.sendRedirect("index.jsp");
       
    } else {
        response.sendRedirect("loginregister.jsp#toregister");
    }
%>