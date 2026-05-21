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

                String spname = request.getParameter("spname");
                String icon = request.getParameter("icon");

                String q = "insert into sports (spname, icon) values ('"
                        + spname + "', '"
                        + icon + "')";
                int result = db.allquery(q);

                if (result > 0) {
                    response.sendRedirect("provider-sports-view.jsp");
                    out.println("Record inserted successfully.");
                } else {
                    out.println("Error");
                }
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        %>
    </body>
</html>
