<%-- 
    Document   : register
    Created on : Jan 12, 2014, 6:58:58 PM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
        <link href="css/registrationform.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/fonts.css" rel="stylesheet" type="text/css" media="all" />
    </head>
    <body>
        <div id="main">
        <form method="post" action="register.jsp">
            <center>
            <table width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" class="field" name="fname" placeholder="optional" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" class="field" name="lname" placeholder="optional" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" class="field" name="email" placeholder="required" value="" required /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" class="field" name="uname" placeholder="required" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" class="field" name="pass" placeholder="required" value="" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="button" value="Submit" /></td>
                        <td><input type="reset" class="button" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
