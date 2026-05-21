package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import connection.DBConnection;

public final class mybooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Makaan - Real Estate HTML Template</title>\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Web Fonts -->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Icon Font Stylesheet -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Libraries Stylesheet -->\n");
      out.write("        <link href=\"lib/animate/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Template Stylesheet -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-xxl bg-white p-0\">\n");
      out.write("            <!-- Spinner Start -->\n");
      out.write("            <div id=\"spinner\" class=\"show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center\">\n");
      out.write("                <div class=\"spinner-border text-primary\" style=\"width: 3rem; height: 3rem;\" role=\"status\">\n");
      out.write("                    <span class=\"sr-only\">Loading...</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Spinner End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Navbar Start -->\n");
      out.write("            ");
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
      out.write("            <!-- Navbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Header Start -->\n");
      out.write("\n");
      out.write("            <!-- Header End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Property List Start -->\n");
      out.write("            <div class=\"container-xxl py-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"tab-content\">\n");
      out.write("                        <div id=\"tab-1\" class=\"tab-pane fade show p-0 active\">\n");
      out.write("                            <div class=\"row \">\n");
      out.write("\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        ");

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
                                        
      out.write("\n");
      out.write("                                        <div class=\"container-xxl py-5\">\n");
      out.write("                                            <div class=\"container\">\n");
      out.write("                                                <div class=\"row g-5 align-items-center\">\n");
      out.write("\n");
      out.write("                                                    <!-- Left Side: Image -->\n");
      out.write("                                                    <div class=\"col-lg-6 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("                                                        <div class=\"about-img position-relative overflow-hidden rounded\" style=\"box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\n");
      out.write("                                                            <img src=\"img/");
      out.print( rs.getString("img1"));
      out.write("\" alt=\"Image\" class=\"img-fluid rounded\" style=\"height: 100%; width: 100%; object-fit: cover;\">\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <!-- Right Side: Details -->\n");
      out.write("                                                    <div class=\"col-lg-6 wow fadeIn\" data-wow-delay=\"0.5s\">\n");
      out.write("                                                        <h5 class=\"mb-3\"><strong>Sport Name:</strong> ");
      out.print( rs.getString("cname"));
      out.write("</h5>\n");
      out.write("                                                        <p><strong>User Name:</strong> ");
      out.print( rs.getString("usname"));
      out.write("</p>\n");
      out.write("                                                        <p><strong>Date:</strong> ");
      out.print( rs.getString("date"));
      out.write("</p>\n");
      out.write("                                                        <p><strong>Time:</strong> ");
      out.print( rs.getString("time"));
      out.write(" O'Clock</p>\n");
      out.write("                                                        <p><strong>Duration:</strong> ");
      out.print( rs.getString("duration"));
      out.write(" Hours</p>\n");
      out.write("                                                        <p><strong>Advanced Payment:</strong> ₹ ");
      out.print( rs.getString("adv_amount"));
      out.write("</p>\n");
      out.write("                                                        <p><strong>Total Rent:</strong> ₹ ");
      out.print( rs.getString("total_rent"));
      out.write("</p>\n");
      out.write("                                                        <p><strong>Status:</strong> ");
      out.print( rs.getString("status"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        ");

                                                }
                                            } catch (Exception e) {
                                                out.println("<p>Error: " + e.getMessage() + "</p>");
                                            }
                                        
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Property List End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("   \n");
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
