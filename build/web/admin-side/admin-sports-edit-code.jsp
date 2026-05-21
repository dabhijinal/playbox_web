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

                String spid = request.getParameter("spid");
                String spname = request.getParameter("spname");
                String icon = request.getParameter("icon");

                String q = "update sports set spname='"  + spname + "', icon='" + icon + "' where spid=" + spid;

               
                int result = db.allquery(q);

                if (result > 0) {
                    response.sendRedirect("admin-sports-view.jsp");
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
