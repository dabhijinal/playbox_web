<%-- 
    Document   : index
    Created on : 28 Dec, 2024, 8:27:32 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


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
            <%@include file="slider.jsp" %>
            <!-- Header End -->


            <!-- Category Start -->



            <div class="container" >
                <div class="text-center mx-auto mb-4 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Discover Your Favorite Sports</h1>
                    <p>Discover various sports activities and find the perfect one for you. Dive into the world of sports and explore your passion</p>
                </div>
                <div>
                    <div class="row g-2">
                        <%
                            ResultSet rs = con.display("select * from sports");
                            while (rs.next()) {
                        %>
                        <div class="col-lg-4 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                            <a class="cat-item d-block bg-light text-center rounded p-2" href="court-list.jsp?spid=<%=rs.getString(1)%>">
                                <div class="rounded p-2">
                                    <div class="icon mb-2">
                                        <img class="img-fluid" src="img/<%= rs.getString("icon")%>" alt="Sport Icon" style="max-width: 50px;">
                                    </div>
                                    <h6><%= rs.getString("spname")%></h6>
                                    <span>  </span>

                                </div>
                            </a>
                        </div>
                        <%
                            }

                        %>
                    </div>
                    <br><br><br>
                </div>

            </div>

            <!-- Category End -->

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

            <!-- Property List Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-0 gx-5 align-items-end">
                        <div class="col-lg-6">
                            <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                                <h1 class="mb-3">Popular Courts</h1>
                                <p>A human activity involving physical exertion and skill as the primary focus of the activity, with elements of competition or social participation where rules and patterns of behaviour governing the activity exist formally through organisations and is generally recognised as a sport.</p>
                            </div>
                        </div>

                    </div>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">

                                <div class="container">
                                    <div class="row">
                                        <%                                                    try {

                                                String q = "SELECT * FROM courts order by RAND() LIMIT 3 ";
                                                if (request.getParameter("spid") != null) {
                                                    q = "SELECT * FROM courts where spid=" + request.getParameter("spid");
                                                }
                                                ResultSet crs = con.display(q);
                                                while (crs.next()) {
                                        %>
                                        <div class="col-lg-4 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
                                            <div class="property-item rounded overflow-hidden">
                                                <div class="position-relative overflow-hidden">
                                                    <a href="court-single.jsp?cid=<%=crs.getString(1)%>"><img class="img-fluid" src="img/<%= crs.getString("img1")%>" alt="" style="height: 340px; width: 500px"></a>
                                                </div>
                                                <div class="p-4 pb-0">
                                                    <h5 class="text-primary mb-3"><%= crs.getString("rent")%></h5>
                                                    <a class="d-block h5 mb-2" href="court-single.jsp?cid=<%=crs.getString(1)%>"><%= crs.getString("cname")%></a>
                                                    <p><i class="fa fa-map-marker-alt text-primary me-2"></i><%= crs.getString("location")%></p>
                                                </div>
                                                <div class="d-flex border-top">
                                                    <small class="flex-fill text-center border-end py-2">
                                                        <i class="fa fa-ruler-combined text-primary me-2"></i><%= crs.getString("area")%>
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


            <!-- Team Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                        <h1 class="mb-3">Property Agents</h1>
                        <p style="text-align: justify;">Looking for the perfect sports court to play your favorite game? We provide top-quality, well-maintained courts for all sports at the best locations. Book hassle-free, enjoy premium facilities, and take your game to the next level!</p></div>

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


            <!-- Testimonial Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                        <h1 class="mb-3">Our Clients Say!</h1>
                        <p>Play with passion, train like a pro, and enjoy the perfect sporting experience. Every match, every moment, made better with the best courts</p>
                    </div>
                    <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                        <%
                            try {
                                //String q = "select reviews.*,users.usname,courts.cname from reviews,users,courts where reviews.usid=users.usid and reviews.cid=courts.cid";
                                        
                                //select reviews.*,users.usname,courts.cname f
                                String q = "select reviews.*,users.usname,courts.cname from reviews,users,courts where reviews.cid=courts.cid";
                                if (request.getParameter("revid") != null) {
                                    q = "SELECT * FROM reviews";
                                }
                                ResultSet crs = con.display(q);
                                while (crs.next()) {
                        %>
                        <div class="testimonial-item bg-light rounded p-3">
                            <div class="bg-white border rounded p-4">
                                <p><%= crs.getString("message")%></p>
                                <div class="d-flex align-items-center">
                                    <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
                                    <div class="ps-3">
                                        <h6 class="fw-bold mb-1"><%= crs.getString("usname")%></h6>
                                        <small><%= crs.getString("cname")%></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <% }
                            } catch (Exception e) {
                                out.print("Error" + e);
                            }
                        %>
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

            <!-- Footer Start -->
            <%@include file="footer.jsp" %>
            <!-- Footer End -->

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
