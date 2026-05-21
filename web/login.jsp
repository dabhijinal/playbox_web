<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Makaan - Real Estate HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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

        <!-- SweetAlert2 -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>

    <body>

        <div class="container-xxl bg-white p-0">
            <!-- Spinner Start -->

            <!-- Spinner End -->


            <!-- Navbar Start -->
            <%@include file="header.jsp" %>
            <!-- Navbar End -->


            <!-- Header Start -->
            <!-- Header End -->

            <style>
                .main {
                    height: 400px;
                    width: 600px;
                    margin: 0 auto;
                    background: rgba(255, 255, 255, 0.8);
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    margin-top: 30px;
                }
                button {
                    width: 80%;
                }
                input.form-control {
                    width: 80%;
                    margin-bottom: 20px;
                }
                .input-icon {
                    position: relative;
                }

                .input-icon i {
                    position: absolute;
                    left: 20px;
                    top: 50%;
                    transform: translateY(-50%);
                    color: #aaa;
                }

                .input-icon input {
                    padding-left: 30px; /* Space for the icon */
                }

            </style>

            <div class="content-wrapper">

                <div class="row pad-botm">
                    <div class="col-md-12">
                        <div class="panel panel-info">
                            <div class="main">
                                <center><h1 style="font-family: Century; font-size: 50px; color: #3EB489; margin-top: 20px;">Login</h1><br>

                                    <div class="panel-body">
                                        <form id="loginForm" role="form" action="login-code.jsp" method="post" onsubmit="return validateLoginForm(event)">
                                            <div class="form-group input-icon">
                                                <i class="fa fa-envelope" style="margin-right:500px;"></i>
                                                <input class="form-control"  type="text" name="usname" placeholder="Enter your Email Id" />
                                            </div>
                                            <div class="form-group input-icon">
                                                <i class="fa fa-lock" style="margin-right:500px;"></i>
                                                <input class="form-control" type="text" name="password" placeholder="Enter your Password"/>
                                            </div>
                                            <button type="submit" name="sub" id="form-submit" class="filled-button btn btn-primary"  style="background-color:#3EB489;border:0px solid 00FF9C;">Login</button>
                                            <br><br>

                                            <p>Don't have an account? <a href="register.jsp">Register</a></p>

                                        </form>
                                    </div>
                                    <div class="modal fade" id="errorModal" tabindex="-1" aria-labelledby="errorModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="errorModalLabel">Login Failed</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p id="errorMessage">Incorrect email or password! Please try again.</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </center>

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
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                <script>
                    document.addEventListener("DOMContentLoaded", function() {
                    var messageText = "<%= session.getAttribute("status") != null ? session.getAttribute("status") : "" %>";

                    if (messageText.trim() !== "") {
                    Swal.fire({
                    title: "Login Error",
                    text: messageText,
                    icon: "error",
                    confirmButtonText: "Try Again"
                    }).then(() => {
                    window.location.href = 'login.jsp'; // Page reload to clear session message
                    });

                   <% session.removeAttribute("status"); %> // Remove session attribute after displaying alert
                }
                });
            </script>

    </body>
</html>