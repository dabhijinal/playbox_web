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
            String pname = request.getParameter("pname");
            String img = request.getParameter("img");
            String contact = request.getParameter("contact");
            String about = request.getParameter("about");
            String location = request.getParameter("location");
            String amenities = request.getParameter("amenities");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            String q = "insert into provider (pname, img, contact, about, location, amenities, email,password) values ('"
                    + pname + "', '"
                    + img + "', '"
                    + contact + "', '"
                    + about + "', '"
                    + location + "', '"
                    + amenities + "', '"
                    + email + "', '"
                    + password + "')";

            int result = db.allquery(q);

            if (result > 0) {
                response.sendRedirect("index.jsp");
                out.println("Record inserted successfully.");
            } else {
                out.println("Failed to insert record.");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</body>
</html>
