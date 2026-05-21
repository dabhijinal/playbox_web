<%-- 
    Document   : courtmybookinglist
    Created on : 8 Jan, 2025, 1:47:59 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Makaan - Real Estate HTML Template</title>
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


            <!-- Header Start -->

            <!-- Header End -->





            <!-- Property List Start -->
            <div class="container-xxl py-5">
                <div class="container">


                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row ">

                                <div class="container">
                                    <div class="row">
                                        <%
                                            try {

                                                String usid = "-1";
                                                if (session.getAttribute("user") != null) {
                                                    usid = session.getAttribute("user").toString();
                                                }

                                                String q = "select booking.*, users.usname, courts.cname, courts.img1 from booking, users, courts where booking.usid = users.usid and booking.cid = courts.cid and booking.usid=" + usid;

                                                if (request.getParameter("bid") != null) {
                                                    q = "select booking.*, users.usname, courts.cname, courts.img1 from booking, users, courts where booking.usid = users.usid and booking.cid = courts.cid and booking.bid = " + request.getParameter("bid");

                                                }

                                                ResultSet rs = con.display(q);
                                                while (rs.next()) {
                                        %>
                                        <div class="container-xxl py-5">
                                            <div class="container">
                                                <div class="row g-5 align-items-center">

                                                    <!-- Left Side: Image -->
                                                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                                                        <div class="about-img position-relative overflow-hidden rounded" style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                                                            <img src="img/<%= rs.getString("img1")%>" alt="Image" class="img-fluid rounded" style="height: 350px; width: 100%; object-fit: cover;">
                                                        </div>
                                                    </div>

                                                    <!-- Right Side: Details -->
                                                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                                                        <h5 class="mb-3"><strong style="font-size:25px"><%= rs.getString("cname")%></strong>  <strong style="padding-left: 30px;color: orange">Status: </strong> <span style="font-size: 15px; color:gray"><%= rs.getString("status")%></span>
                                                        </h5>
                                                        <p><strong style="color: black;">Name:</strong> <%= rs.getString("usname")%></p>
                                                        <p><strong style="color: black;">Date:</strong> <%= rs.getString("date")%>
                                                            <strong style="padding-left: 30px;color: black;">Time:</strong> <%= rs.getString("time")%> O'Clock
                                                            <strong style="padding-left: 30px;color: black;">Duration:</strong> <%= rs.getString("duration")%> Hours</p>
                                                        <p><strong style="color: black;" >Advanced Payment:</strong> ₹ <%= rs.getString("adv_amount")%>
                                                            <strong style="padding-left: 30px;color: black;">Total Rent:</strong> ₹ <%= rs.getString("total_rent")%></p>

                                                        <form role="form" action="review-code.jsp" method="post">
                                                            <input class="form-control" type="hidden" value="<%=usid%>" style="margin-bottom: 10px;" name="usid">
                                                            <input class="form-control" type="hidden" style="margin-bottom: 10px;" value="<%=rs.getString("cid")%>" name="cid">
                                                            <textarea name="message" class="form-control" placeholder="Give Review..." 
                                                                      style="width:510px; border-radius: 3px" name="message"></textarea>
                                                            <button type="submit" class="btn btn-primary" style="margin-top: 10px; width:510px;">Submit</button>
                                                        </form>
                                                    </div>

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
        </div>
        <!-- Property List End -->





        <!-- Footer Start -->
        <%@include file="footer.jsp" %>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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
