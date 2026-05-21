<%-- 
    Document   : login-code
    Created on : 19 Dec, 2024, 1:20:02 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            
                session.removeAttribute("user");
                response.sendRedirect("login.jsp");
                
            %>
    </body>
</html>
