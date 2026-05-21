<%-- 
    Document   : court-list
    Created on : 8 Jan, 2025, 1:47:59 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>sportscourts</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container-xxl bg-white p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Navbar Start -->
            <%@include file="header.jsp" %>
            <!-- Navbar End -->

            <!-- Property List Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-0 gx-5 align-items-end">
                        <div class="col-lg-6">
                            <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                                <h1 class="mb-3">Courts</h1>
                                <p>We can design and develop multi-purpose modular designs that allow for the adaptation of the facility...</p>
                            </div>
                        </div>
                    </div>
                    <div class="row g-0 gx-5 align-items-end"> 
                        <div class="col-lg-12 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                            <ul class="nav nav-pills d-inline-flex justify-content-end mb-5" style="margin-right:300px;">
                                <%
                                    String q2 = "SELECT * FROM sports";
                                    ResultSet rs1 = con.display(q2);
                                    while (rs1.next()) {
                                %>
                                <li class="nav-item me-2">
                                    <a class="btn btn-outline-primary" href="court-list.jsp?spid=<%= rs1.getString("spid")%>">
                                        <%= rs1.getString("spname")%>
                                    </a>
                                </li>
                                <%
                                    }
                                %>   
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="container">
                                <div class="row">
                                    <%
                                        try {
                                            String q = "SELECT * FROM courts order by RAND() limit 3 ";
                                            if (request.getParameter("spid") != null) {
                                                q = "SELECT * FROM courts WHERE spid=" + request.getParameter("spid");
                                            }

                                            ResultSet rs = con.display(q);
                                            while (rs.next()) {
                                    %>
                                    <div class="col-lg-4 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href="court-single.jsp?cid=<%= rs.getString("cid")%>">
                                                    <img class="img-fluid" src="img/<%= rs.getString("img1")%>" alt="" style="height: 350px; width: 500px">
                                                </a>
                                            </div>
                                            <div class="p-4 pb-0">
                                                <h5 class="text-primary mb-3"><%= rs.getString("rent")%></h5>
                                                <a class="d-block h5 mb-2" href="court-single.jsp?cid=<%= rs.getString("cid")%>">
                                                    <%= rs.getString("cname")%>
                                                </a>
                                                <p><i class="fa fa-map-marker-alt text-primary me-2"></i><%= rs.getString("location")%></p>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2">
                                                    <i class="fa fa-ruler-combined text-primary me-2"></i><%= rs.getString("area")%>
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            out.println("<p>Error: " + e.getMessage() + "</p>");
                                        }
                                    %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Property List End -->

        <!-- Footer Start -->
        <%@include file="footer.jsp" %>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>