<%-- 
    Document   : about
    Created on : 18 Dec, 2024, 8:53:38 PM
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

            <!-- Spinner End -->
            <!--
            
            <!-- Navbar Start -->
            <%@include file="header.jsp" %>
            <!-- Navbar End -->


            <!-- Header Start 
            <div class="container-fluid header bg-white p-0">
                <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                    <div class="col-md-6 p-5 mt-lg-5">
                        <h1 class="display-5 animated fadeIn mb-4">Courts</h1> 
                        
                    </div>
                    <div class="col-md-6 animated fadeIn">
                        <img class="img-fluid" src="img/header.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- Header End -->


            <!-- About Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-center">
                        <%
                            String newpid = "";
                            try {
                                String q = "SELECT * FROM courts ";
                                String cid = request.getParameter("cid");

                                if (request.getParameter("cid") != null) {
                                    q = "SELECT * FROM courts where cid=" + request.getParameter("cid");
                                }
                                ResultSet rs = con.display(q);
                                if (rs.next()) {
                                    newpid = rs.getString("pid");
                        %>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <h2 class="mb-4"><%= rs.getString("cname")%></h2>
                            <div class="about-img position-relative overflow-hidden p-5 pe-0">
                                <img class="img-fluid w-60" src="img/<%= rs.getString("img1")%>" alt="Sport Icon" style="height: 450px; width: 500px">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s"><br><br>
                            <a class="btn btn-primary py-2 px-5 mt-3" style="width: 610px;margin-bottom:10px" href="booking.jsp?cid=<%=rs.getString(1)%>">Book Now</a>
                            <div class="rounded p-2" style="border: 1px solid #C7F6C7; margin-bottom:10px">
                                <p><i class="fa fa-check text-primary me-3"></i><strong style="color: black">Time  : </strong><%= rs.getString("time")%></p>
                                <p><i class="fa fa-check text-primary me-3"></i><strong style="color: black">Area  : </strong> <%= rs.getString("area")%></p>
                                <p><i class="fa fa-check text-primary me-3"></i><strong style="color: black">Rent  : </strong><%= rs.getString("rent")%> / Hour</p>
                            </div>
                            <div class="rounded p-2" style="border: 1px solid #C7F6C7;margin-bottom:10px">
                                <p class="mb-4"><strong style="color: black">Location : </strong><br><%= rs.getString("location")%></p>
                            </div>
                            <div class="col-md-12 wow fadeInUp" data-wow-delay="0.1s">
                                <iframe class="position-relative rounded w-100 h-100"
                                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
                                        frameborder="0" style="min-height: 200px; border:0;" allowfullscreen="" aria-hidden="false"
                                        tabindex="0"></iframe>
                            </div>

                        </div>
                        <%
                                }
                            } catch (Exception e) {
                                out.println("<p>Error: " + e.getMessage() + "</p>");
                            }
                        %>
                    </div><br>

                    <div class="rounded p-2" style="border: 1px solid #C7F6C7; margin-bottom:10px">
                        <h6>Available Courts:</h6> 

                        <p>
                            <%
                                String Sq = "select courts.*,provider.amenities,sports.icon from courts,provider,sports where courts.spid=sports.spid and courts.pid=provider.pid and courts.pid= '" + newpid + "'";

                                ResultSet Srs = con.display(Sq);
                                while (Srs.next()) {

                            %>
                            <a href="court-single.jsp?cid=<%= Srs.getString("cid")%>">
                                <img src="img/<%=Srs.getString("icon").replace("", "")%>" style="width: 60px;height: 60px;margin-left: 40px" />
                            </a> 
                            <%
                                }
                            %>
                        </p>

                    </div>

                    <%
                        String pq = "select courts.*,provider.pid,provider.amenities,sports.icon from courts,provider,sports where courts.spid=sports.spid and courts.cid=provider.id";

                        if (request.getParameter("cid") != null) {
                            String cid = request.getParameter("cid");
                            pq = "select courts.*,provider.amenities,sports.icon from courts,provider,sports where courts.spid=sports.spid and courts.pid=provider.pid and courts.cid= '" + cid + "'";
                        }

                        ResultSet prs = con.display(pq);
                        if (prs.next()) {

                    %>
                    <div class="rounded p-2" style="border: 1px solid #C7F6C7" style="margin:2px">
                        <h6>Amenities:</h6> 
                        <p class="mb-4" ><%= prs.getString("amenities").replace(",", "<br>✔️ ")%></p>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <!-- About End -->


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