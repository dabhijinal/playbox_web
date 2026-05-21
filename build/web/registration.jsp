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

            <!-- Navbar Start -->
            <%@include file="header.jsp" %>
            <!-- Navbar End -->

          

            <style>

                .rev{
                    display: flex;
                    align-items: flex-start;
                }
                .image{
                    margin: 100px;
                }
                h2{
                    margin-top: 20px;
                }
                .image:hover{
                    box-shadow:10px 10px 5px #009472;
                }


            </style>
        </style>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-content"></div>
                </div>
            </div>
        </div>

        <center>
            <div class="main1" style="height: auto;width: 900px; margin: 0 auto; padding: 20px;border-radius: 10px;
                 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); margin-top: 30px;">
                <h1 style="font-family: Century; font-size: 50px; color: #3EB489; margin-top: 20px;">Register</h1><br>

                <div class="row">
                    <div class="col-md-12">
                        <div class="contact-wrap w-100 p-md-5 p-4 main rev">
                            
                            <div id="form-message-warning" class="mb-4">
                                <h2>USER</h2>
                                <a href="user-registration.jsp"><img src="img/users.jpg" style="height:200px;width:200px" class="image"></a>
                                
                                
                            </div>
                           
                            <div id="form-message-warning" class="mb-4">
                                <h2>PROVIDER</h2>
                                <a href="provider-register.jsp"><img src="img/provider.jpg" style="height:200px;width:200px" class="image"></a>
                                    
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
    </div>

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
