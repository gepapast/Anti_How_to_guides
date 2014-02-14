<%-- 
    Document   : testsql
    Created on : Jan 14, 2014, 7:09:53 PM
    Author     : George
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<%
       Connection conn = null;
       String url = "jdbc:mysql://localhost:3306/";
       String dbName = "db";
       String driver = "com.mysql.jdbc.Driver";
       String userName = "root"; 
       String password = "";
       try {
         Class.forName(driver).newInstance();
         conn = DriverManager.getConnection(url+dbName,userName,password);
        
       // check weather connection is established or not by isClosed() method 
            if(!conn.isClosed())
 
                    out.println("Successfully connected to " + "MySQL server using TCP/IP...");
                    conn.close();
        }
         catch(Exception e){

                    out.println("Unable to connect to database.");
        }


%>
