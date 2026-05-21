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
            try 
            {
                DBConnection db = new DBConnection();

                String pid = "0";  //session here 

                if (session.getAttribute("provider") != null) {
                    pid = session.getAttribute("provider").toString();
                }

                int spid = Integer.parseInt(request.getParameter("spid"));
                String cname = request.getParameter("cname");
                String area = request.getParameter("area");
                String rating = request.getParameter("rating");
                int rent = Integer.parseInt(request.getParameter("rent"));
                String time = request.getParameter("time");
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");

                String q = "insert into courts (pid ,spid ,cname, area, rating, rent, time, img1,img2) values ('"
                        + pid + "', '"
                        + spid + "', '"
                        + cname + "', '"
                        + area + "', '"
                        + rating + "', '"
                        + rent + "', '"
                        + time + "', '"
                        + img1 + "', '"
                        + img2 + "')";
                int result = db.allquery(q);

                if (result > 0) {
                    response.sendRedirect("provider-courts-view.jsp");
                } else {
                    out.println("Error");
                }
            } 
            catch (Exception e) {
                out.println("Error: " + e);
            }
        %>
    </body>
</html>
