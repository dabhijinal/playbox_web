package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.DBConnection;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Makaan - Real Estate HTML Template</title>\n");
      out.write("    <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("    <meta content=\"\" name=\"keywords\">\n");
      out.write("    <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("    <!-- Google Web Fonts -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- Icon Font Stylesheet -->\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Libraries Stylesheet -->\n");
      out.write("    <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Template Stylesheet -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-xxl bg-white p-0\">\n");
      out.write("        <!-- Spinner Start -->\n");
      out.write("       \n");
      out.write("        <!-- Spinner End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Navbar Start -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    DBConnection con = new DBConnection();


      out.write("\n");
      out.write("<div class=\"container-fluid nav-bar bg-transparent\">\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-white navbar-light py-0 px-4\">\n");
      out.write("        <a href=\"index.html\" class=\"navbar-brand d-flex align-items-center text-center\">\n");
      out.write("            <div class=\"icon p-2 me-2\">\n");
      out.write("                <img class=\"img-fluid\" src=\"img/logo.png\" alt=\"Icon\" style=\"width: 30px; height: 30px;\">\n");
      out.write("            </div>\n");
      out.write("            <h1 class=\"m-0 text-primary\">SportsCourts</h1>\n");
      out.write("        </a>\n");
      out.write("        <button type=\"button\" class=\"navbar-toggler\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarCollapse\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarCollapse\">\n");
      out.write("            <div class=\"navbar-nav ms-auto\">\n");
      out.write("                <a href=\"index.jsp\" class=\"nav-item nav-link \">Home</a>\n");
      out.write("                <a href=\"about.jsp\" class=\"nav-item nav-link\">About</a>\n");
      out.write("                <a href=\"court-list.jsp\" class=\"nav-item nav-link\">Sports</a>\n");
      out.write("                <div class=\"nav-item dropdown\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                ");
                    if (session.getAttribute("user") == null) {
                
      out.write("\n");
      out.write("                <a href=\"login.jsp\" class=\"nav-item nav-link\">Login</a>\n");
      out.write("\n");
      out.write("                ");
 }
      out.write("\n");
      out.write("\n");
      out.write("                <a href=\"contact.jsp\" class=\"nav-item nav-link\">Contact</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");

                if (session.getAttribute("user") == null) {
            
      out.write("\n");
      out.write("\n");
      out.write("            <a href=\"registration.jsp\" class=\"btn btn-primary px-3 d-none d-lg-flex\">Registration</a>\n");
      out.write("\n");
      out.write("            ");
} else { 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <a href=\"logout.jsp\" class=\"btn btn-primary px-3 d-none d-lg-flex\">Logout</a>\n");
      out.write("\n");
      out.write("            ");
 }
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("                ");
                    if (session.getAttribute("user") != null) {
                
      out.write("\n");
      out.write("       \n");
      out.write("            <a href=\"mybooking.jsp\" class=\"btn btn-primary px-3 d-none d-lg-flex flex-column align-items-center\" style=\"margin-left:10px;\">\n");
      out.write("                <img src=\"booking.png\" style=\"height: 18px; width: 18px;\">\n");
      out.write("                <span style=\"font-size: 6px\">MyBooking</span>\n");
      out.write("            </a>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        <!-- Navbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Header Start -->\n");
      out.write("       \n");
      out.write("        <!-- Header End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Contact Start -->\n");
      out.write("        <div class=\"container-xxl py-5\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"text-center mx-auto mb-5 wow fadeInUp\" data-wow-delay=\"0.1s\" style=\"max-width: 600px;\">\n");
      out.write("                    <h1 class=\"mb-3\">Contact Us</h1>\n");
      out.write("                    <p>Let us know how we can best serve you. Fill out the form and we will be in touch as soon as possible. It's an honor to support you in your journey towards better Sport's Experience.</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row g-4\">\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <div class=\"row gy-4\">\n");
      out.write("                            <div class=\"col-md-6 col-lg-4 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("                                <div class=\"bg-light rounded p-3\">\n");
      out.write("                                    <div class=\"d-flex align-items-center bg-white rounded p-3\" style=\"border: 1px dashed rgba(0, 185, 142, .3)\">\n");
      out.write("                                        <div class=\"icon me-3\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                            <i class=\"fa fa-map-marker-alt text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <span>123 Street, Gujarat, INDIA</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6 col-lg-4 wow fadeIn\" data-wow-delay=\"0.3s\">\n");
      out.write("                                <div class=\"bg-light rounded p-3\">\n");
      out.write("                                    <div class=\"d-flex align-items-center bg-white rounded p-3\" style=\"border: 1px dashed rgba(0, 185, 142, .3)\">\n");
      out.write("                                        <div class=\"icon me-3\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                            <i class=\"fa fa-envelope-open text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <span>sportscourts123@gmail.com</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-6 col-lg-4 wow fadeIn\" data-wow-delay=\"0.5s\">\n");
      out.write("                                <div class=\"bg-light rounded p-3\">\n");
      out.write("                                    <div class=\"d-flex align-items-center bg-white rounded p-3\" style=\"border: 1px dashed rgba(0, 185, 142, .3)\">\n");
      out.write("                                        <div class=\"icon me-3\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                            <i class=\"fa fa-phone-alt text-primary\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                        <span>+91 91345 67890</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\n");
      out.write("                        <iframe class=\"position-relative rounded w-100 h-100\"\n");
      out.write("                            src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd\"\n");
      out.write("                            frameborder=\"0\" style=\"min-height: 400px; border:0;\" allowfullscreen=\"\" aria-hidden=\"false\"\n");
      out.write("                            tabindex=\"0\"></iframe>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"wow fadeInUp\" data-wow-delay=\"0.5s\">\n");
      out.write("                            <p class=\"mb-4\">Email us with any questions or inquiries. We would be happy to answer your question or setup a meeting with you.</p>\n");
      out.write("                            <form action=\"contact-code.jsp\" id=\"register\" method=\"post\">\n");
      out.write("                                <div class=\"row g-3\">\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"name\" placeholder=\"Your Name\" name=\"coname\">\n");
      out.write("                                            <label for=\"name\">Your Name</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-6\">\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Your Email\" name=\"email\">\n");
      out.write("                                            <label for=\"email\">Your Email</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"date\" class=\"form-control\" id=\"name\" placeholder=\"Your Name\" name=\"date\">\n");
      out.write("                                            <label for=\"name\">Date</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <input type=\"text\" class=\"form-control\" id=\"subject\" placeholder=\"Subject\" name=\"subject\">\n");
      out.write("                                            <label for=\"subject\">Subject</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    \n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <div class=\"form-floating\">\n");
      out.write("                                            <textarea class=\"form-control\" placeholder=\"Leave a message here\" id=\"message\" style=\"height: 150px\" name=\"message\"></textarea>\n");
      out.write("                                            <label for=\"message\">Message</label>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-12\">\n");
      out.write("                                        <button class=\"btn btn-primary w-100 py-3\" type=\"submit\">Send Message</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Contact End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Footer Start -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("    <div class=\"container py-5\">\n");
      out.write("        <div class=\"row g-5\">\n");
      out.write("            \n");
      out.write("            <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                <h5 class=\"text-white mb-4\">Get In Touch</h5>\n");
      out.write("                <p class=\"mb-2\"><i class=\"fa fa-map-marker-alt me-3\"></i>123 Street, Gujarat, INDIA</p>\n");
      out.write("                <p class=\"mb-2\"><i class=\"fa fa-phone-alt me-3\"></i>+91 91345 67890</p>\n");
      out.write("                <p class=\"mb-2\"><i class=\"fa fa-envelope me-3\"></i>sportscourts123@gmail.com</p>\n");
      out.write("                <div class=\"d-flex pt-2\">\n");
      out.write("                    <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                    <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                    <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-youtube\"></i></a>\n");
      out.write("                    <a class=\"btn btn-outline-light btn-social\" href=\"\"><i class=\"fab fa-linkedin-in\"></i></a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                <h5 class=\"text-white mb-4\">Quick Links</h5>\n");
      out.write("                <a class=\"btn btn-link text-white-50\" href=\"index.jsp\">Home</a>\n");
      out.write("                <a class=\"btn btn-link text-white-50\" href=\"about.jsp\">About Us</a>\n");
      out.write("                <a class=\"btn btn-link text-white-50\" href=\"contact.jsp\">Contact Us</a>\n");
      out.write("                <a class=\"btn btn-link text-white-50\" href=\"courts-list.jsp\">Our Courts</a>\n");
      out.write("                <a class=\"btn btn-link text-white-50\" href=\"contact.jsp\">Contact</a>\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div class=\"col-lg-4 col-md-6\">\n");
      out.write("                <h5 class=\"text-white mb-4\">Photo Gallery</h5>\n");
      out.write("                <div class=\"row g-2 pt-2\">\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/footimg2.jpg\" alt=\"\" style=\"height: 90px\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/crimg4.jpg\" alt=\"\"  style=\"height: 90px;width: 200px\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/carousel-2.jpg\" alt=\"\"  style=\"height: 90px;width: 200px\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/basketimg3.jpg\" alt=\"\"  style=\"height: 90px;width: 200px\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/footimg.jpg\" alt=\"\"  style=\"height: 90px;width: 200px\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-4\">\n");
      out.write("                        <img class=\"img-fluid rounded bg-light p-1\" src=\"img/vollimg5.jpg\" alt=\"\"  style=\"height: 90px;width: 200px\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"copyright\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6 text-center text-md-start mb-3 mb-md-0\">\n");
      out.write("                    &copy; <a class=\"border-bottom\" href=\"#\">SportsCourts</a>, All Right Reserved. \n");
      out.write("                    Designed By <b style=\"color: white\">Jinal, Arti, Princy</b>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JavaScript Libraries -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("    <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("    <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Template Javascript -->\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
