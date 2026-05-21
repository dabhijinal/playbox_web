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
                <span class="sr-only"></span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar Start -->
        <%@include file="header.jsp" %>
        <!-- Navbar End -->

        <style>
            button {
                width: 90%;
            }

            input.form-control, select.form-control {
                width: 90%;
                margin-bottom: 20px;
            }

            .input-icon {
                position: relative;
            }

            .input-icon i {
                position: absolute;
                left: 10px;
                top: 50%;
                transform: translateY(-50%);
                color: #aaa;
            }

            .input-icon input, .input-icon select {
                padding-left: 30px;
                /* Space for the icon */
            }
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
                        <div class="contact-wrap w-100 p-md-5 p-4 main">
                            <div id="form-message-warning" class="mb-4"></div>
                            <form action="user-register-code.jsp" id="register" method="post">
                                <div class="form-group input-icon">
                                    <i class="fa fa-user"></i>
                                    <input class="form-control" type="text" name="usname" placeholder="Enter Your Name" />
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-info-circle"></i>
                                    <select class="form-control" name="gender">
                                        <option value="" disabled selected>Select Gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-city"></i>
                                    <input class="form-control" type="text" name="city" placeholder="Enter City" />
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-map-marker-alt"></i>
                                    <input class="form-control" type="text" name="address" placeholder="Enter Address" />
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-phone"></i>
                                    <input class="form-control" type="text" name="contact" placeholder="Contact" />
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-envelope"></i>
                                    <input class="form-control" type="text" name="email" placeholder="Enter Your Email Id" />
                                </div>

                                <div class="form-group input-icon">
                                    <i class="fa fa-lock"></i>
                                    <input class="form-control" type="password" name="password" placeholder="Password" />
                                </div>
                                <button type="submit" name="submit" id="form-submit" class="filled-button btn btn-primary" style="background-color:#3EB489;border:0px solid #3EB489; width: 90%;">Register</button>
                                <br><br>

                                <p>Already have an account? <a href="login.jsp">Login</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </center>

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
