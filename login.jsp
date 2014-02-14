<%-- 
    Document   : login
    Created on : Jan 15, 2014, 10:55:15 AM
    Author     : George
--%>

<%@ page import ="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db",
            "root", "password");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='loginregister.jsp#tologin'>try again</a>");
    }
%>
