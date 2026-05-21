<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
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

                String usid = request.getParameter("usid");
                String cid = request.getParameter("cid");
                
                Date date = new Date();
                
                String revdate = date.toLocaleString();
                String message = request.getParameter("message");

                String rq = "INSERT INTO reviews (usid, cid, revdate, message) VALUES ('"
                        + usid + "', '"
                        + cid + "', '"
                        + revdate + "', '"
                        + message + "')";

                out.println(rq);
                int result = db.allquery(rq);

                if (result > 0) {
                    response.sendRedirect("mybooking.jsp"); 
                } else {
                    out.println("Error in inserting review.");
                }

            } catch (Exception e) {
                out.println("Error: " + e);
            }

        %>
    </body>
</html>
