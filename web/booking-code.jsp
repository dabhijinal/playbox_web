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

        String cid = request.getParameter("cid");
        String usid = "-1";
        if (session.getAttribute("user") != null) {
            usid = session.getAttribute("user").toString();
        }
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String duration = request.getParameter("duration");
        String adv_amount = request.getParameter("adv_amount");

        String qCourts = "SELECT * FROM courts where cid=" + request.getParameter("cid");
        ResultSet rsCourts = db.display(qCourts);
        rsCourts.next();
        int rent = rsCourts.getInt("rent");
        String status = "Pending";
        int total_rent = rent * Integer.parseInt(duration);

        String q = "INSERT INTO booking(cid,usid,date,time,duration,total_rent,adv_amount,status) VALUES ('"
                + cid + "','"
                + usid + "','"
                + date + "','"
                + time + "','"
                + duration + "','"
                + total_rent + "','"
                + adv_amount + "','"
                + status + "')";

        int result = db.allquery(q);

        if (result > 0) {
%>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                Swal.fire({
                    icon: 'success',
                    title: 'Booking Successful!',
                    text: 'Your booking has been confirmed.',
                    confirmButtonText: 'OK'
                }).then(() => {
                    window.location.href = 'mybooking.jsp';
                });
            </script>
<%
        } else {
%>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                Swal.fire({
                    icon: 'error',
                    title: 'Booking Failed!',
                    text: 'Something went wrong. Please try again.',
                    confirmButtonText: 'OK'
                });
            </script>
<%
        }

    } catch (Exception e) {
%>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: '<%= e.getMessage() %>',
                confirmButtonText: 'OK'
            });
        </script>
<%
    }
%>

    </body>
</html>