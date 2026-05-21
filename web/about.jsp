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


            <!-- Header Start -->
            <%@include file="slider.jsp" %>
            <!-- Header End -->


            <!-- About Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <div class="about-img position-relative overflow-hidden p-5 pe-0">
                                <img class="img-fluid w-100" src="img/about.jpg">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <h1 class="mb-4">#1 Place To Find The Perfect Platform</h1>
                            <p class="mb-4">We can design and develop multi-purpose modular designs that allow for the adaptation of the facility to suit individual  requirements This way we can make optimal usage of available space and play several games on the same surface/playing area</p>
                            <p><i class="fa fa-check text-primary me-3"></i>Where dreams take the field.</p>
                            <p><i class="fa fa-check text-primary me-3"></i>A stage for champion,a playground for all.</p>
                            <p><i class="fa fa-check text-primary me-3"></i>Fueling passion ,one play at a time.</p>
                            <p><i class="fa fa-check text-primary me-3"></i>Your battleground for greatness.</p>
                            <p><i class="fa fa-check text-primary me-3"></i>Dream Big, Play Hard.</p>   
                        </div>

                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Team Start -->
            <div class="container-xxl py-5">
                        <div class="container">
                            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                                <h1 class="mb-3">Property Agents</h1>
                                <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
                            </div>

                            <div class="row g-1">
                                <%
                                    ResultSet rs1 = con.display("select * from provider order by RAND() LIMIT 4 ");
                                    while (rs1.next()) {
                                %>
                                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="team-item rounded overflow-hidden">

                                        <div class="position-relative">

                                            <!-- <img class="img-fluid" src="img/team-1.jpg" alt="">-->
                                            <img class="img-fluid" src="img/<%= rs1.getString("img")%>" alt="Sport Icon" style="height: 320px;width: 260px"> 
                                            <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                                <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                            </div>
                                        </div>
                                        <div class="text-center p-4 mt-3">
                                            <h5 class="fw-bold mb-0"><%= rs1.getString("pname")%></h5>
                                            <small></small>
                                        </div>

                                    </div>
                                </div>
                                <%
                                    }
                                %>
                            </div>

                        </div>
                    </div>
            <!-- Team End -->


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