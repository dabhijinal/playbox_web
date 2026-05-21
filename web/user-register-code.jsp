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
            String usname = request.getParameter("usname");
            String gender = request.getParameter("gender");
            String city = request.getParameter("city");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            String q = "insert into users (usname, gender, city, address, contact, email, password) values ('"
                    + usname + "', '"
                    + gender + "', '"
                    + city + "', '"
                    + address + "', '"
                    + contact + "', '"
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
