<%-- 
    Document   : contact-code
    Created on : 19 Jan, 2025, 12:15:15 PM
    Author     : ADMIN
--%>

<%@page import="connection.DBConnection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                DBConnection db = new DBConnection();

                String coname = request.getParameter("coname");
                String email = request.getParameter("email");
                String subject = request.getParameter("subject");
                String date = request.getParameter("date");
                String message = request.getParameter("message");

                String q = "insert into contacts (coname, email, subject, date, message) values ('"
                        + coname + "', '"
                        + email + "', '"
                        + subject + "', '"
                        + date + "', '"
                        + message + "')";
                int result = db.allquery(q);

                if (result > 0) {
                    response.sendRedirect("index.jsp");
                    //out.println("Record inserted successfully.");
                } else {
                    out.println("Error");
                }
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        %>
    </body>
</html>

