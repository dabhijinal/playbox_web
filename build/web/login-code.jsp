<%-- 
    Document   : login-code
    Created on : 19 Dec, 2024, 1:20:02 PM
    Author     : ADMIN
--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
            DBConnection con = new DBConnection();

            String usname = request.getParameter("usname");
            String password = request.getParameter("password");

            String qUser = "select * from users where email='" + usname + "' and password='" + password + "'";
            ResultSet rsUser = con.display(qUser);

            String qAdmin = "select * from admins where email='" + usname + "' and password='" + password + "'";
            ResultSet rsAdmin = con.display(qAdmin);

            String qProvider = "select * from provider where email='" + usname + "' and password='" + password + "'";
            ResultSet rsProvider = con.display(qProvider);

            if (rsUser.next()) {
                session.setAttribute("user", rsUser.getString(1));
                response.sendRedirect("index.jsp");
            } else if (rsProvider.next()) {
                session.setAttribute("provider", rsProvider.getString(1));
                response.sendRedirect("admin-side/provider-index.jsp");
            } else if (rsAdmin.next()) {
                session.setAttribute("admin", rsAdmin.getString(1));
                response.sendRedirect("admin-side/admin-index.jsp");
            } else {
                session.setAttribute("status", "Invalid username or password!");
                response.sendRedirect("login.jsp");
            }
        %>

    </body>
</html>
