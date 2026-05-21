package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import connection.DBConnection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/slider.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("\n");
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
      out.write("\n");
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
      out.write("\n");
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
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid header bg-white p-0\">\n");
      out.write("            <div class=\"row g-0 align-items-center flex-column-reverse flex-md-row\">\n");
      out.write("                <div class=\"col-md-6 p-5 mt-lg-5\">\n");
      out.write("                    <h4 class=\"display-6 animated fadeIn mb-4\">EXPERIENCE THE THRILL OF <span class=\"text-primary\">THE GAME</span>,RIGHT HERE. </h4>\n");
      out.write("                    <p class=\"animated fadeIn mb-4 pb-2\">Do your best to achieve the goals. Do what makes you distinct than others. Snatch your rights by excelling in your pursuits. Do maximum for distinction in your field.</p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 animated fadeIn\">\n");
      out.write("                    <div class=\"owl-carousel header-carousel\">\n");
      out.write("                        <div class=\"owl-carousel-item\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-1.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"owl-carousel-item\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-2.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"owl-carousel-item\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-3.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \" >\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>");
      out.write("\n");
      out.write("            <!-- Header End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Category Start -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container\" >\n");
      out.write("                <div class=\"text-center mx-auto mb-4 wow fadeInUp\" data-wow-delay=\"0.1s\" style=\"max-width: 600px;\">\n");
      out.write("                    <h1 class=\"mb-3\">Discover Your Favorite Sports</h1>\n");
      out.write("                    <p>Discover various sports activities and find the perfect one for you. Dive into the world of sports and explore your passion</p>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <div class=\"row g-2\">\n");
      out.write("                        ");

                            ResultSet rs = con.display("select * from sports");
                            while (rs.next()) {
                        
      out.write("\n");
      out.write("                        <div class=\"col-lg-4 col-sm-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\n");
      out.write("                            <a class=\"cat-item d-block bg-light text-center rounded p-2\" href=\"court-list.jsp?spid=");
      out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                <div class=\"rounded p-2\">\n");
      out.write("                                    <div class=\"icon mb-2\">\n");
      out.write("                                        <img class=\"img-fluid\" src=\"img/");
      out.print( rs.getString("icon"));
      out.write("\" alt=\"Sport Icon\" style=\"max-width: 50px;\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <h6>");
      out.print( rs.getString("spname"));
      out.write("</h6>\n");
      out.write("                                    <span>  </span>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                            }

                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <br><br><br>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Category End -->\n");
      out.write("\n");
      out.write("            <!-- About Start -->\n");
      out.write("            <div class=\"container-xxl py-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row g-5 align-items-center\">\n");
      out.write("                        <div class=\"col-lg-6 wow fadeIn\" data-wow-delay=\"0.1s\">\n");
      out.write("                            <div class=\"about-img position-relative overflow-hidden p-5 pe-0\">\n");
      out.write("                                <img class=\"img-fluid w-100\" src=\"img/about.jpg\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6 wow fadeIn\" data-wow-delay=\"0.5s\">\n");
      out.write("                            <h1 class=\"mb-4\">#1 Place To Find The Perfect Platform</h1>\n");
      out.write("                            <p class=\"mb-4\">We can design and develop multi-purpose modular designs that allow for the adaptation of the facility to suit individual  requirements This way we can make optimal usage of available space and play several games on the same surface/playing area</p>\n");
      out.write("                            <p><i class=\"fa fa-check text-primary me-3\"></i>Where dreams take the field.</p>\n");
      out.write("                            <p><i class=\"fa fa-check text-primary me-3\"></i>A stage for champion,a playground for all.</p>\n");
      out.write("                            <p><i class=\"fa fa-check text-primary me-3\"></i>Fueling passion ,one play at a time.</p>\n");
      out.write("                            <p><i class=\"fa fa-check text-primary me-3\"></i>Your battleground for greatness.</p>\n");
      out.write("                            <p><i class=\"fa fa-check text-primary me-3\"></i>Dream Big, Play Hard.</p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- About End -->\n");
      out.write("\n");
      out.write("            <!-- Property List Start -->\n");
      out.write("            <div class=\"container-xxl py-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row g-0 gx-5 align-items-end\">\n");
      out.write("                        <div class=\"col-lg-6\">\n");
      out.write("                            <div class=\"text-start mx-auto mb-5 wow slideInLeft\" data-wow-delay=\"0.1s\">\n");
      out.write("                                <h1 class=\"mb-3\">Popular Courts</h1>\n");
      out.write("                                <p>A human activity involving physical exertion and skill as the primary focus of the activity, with elements of competition or social participation where rules and patterns of behaviour governing the activity exist formally through organisations and is generally recognised as a sport.</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tab-content\">\n");
      out.write("                        <div id=\"tab-1\" class=\"tab-pane fade show p-0 active\">\n");
      out.write("                            <div class=\"row g-4\">\n");
      out.write("\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        ");
                                                    try {

                                                String q = "SELECT * FROM courts order by RAND() LIMIT 3 ";
                                                if (request.getParameter("spid") != null) {
                                                    q = "SELECT * FROM courts where spid=" + request.getParameter("spid");
                                                }
                                                ResultSet crs = con.display(q);
                                                while (crs.next()) {
                                        
      out.write("\n");
      out.write("                                        <div class=\"col-lg-4 col-md-6 col-sm-12 wow fadeInUp\" data-wow-delay=\"0.3s\">\n");
      out.write("                                            <div class=\"property-item rounded overflow-hidden\">\n");
      out.write("                                                <div class=\"position-relative overflow-hidden\">\n");
      out.write("                                                    <a href=\"court-single.jsp?cid=");
      out.print(crs.getString(1));
      out.write("\"><img class=\"img-fluid\" src=\"img/");
      out.print( crs.getString("img1"));
      out.write("\" alt=\"\" style=\"height: 340px; width: 500px\"></a>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"p-4 pb-0\">\n");
      out.write("                                                    <h5 class=\"text-primary mb-3\">");
      out.print( crs.getString("rent"));
      out.write("</h5>\n");
      out.write("                                                    <a class=\"d-block h5 mb-2\" href=\"court-single.jsp?cid=");
      out.print(crs.getString(1));
      out.write('"');
      out.write('>');
      out.print( crs.getString("cname"));
      out.write("</a>\n");
      out.write("                                                    <p><i class=\"fa fa-map-marker-alt text-primary me-2\"></i>");
      out.print( crs.getString("location"));
      out.write("</p>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"d-flex border-top\">\n");
      out.write("                                                    <small class=\"flex-fill text-center border-end py-2\">\n");
      out.write("                                                        <i class=\"fa fa-ruler-combined text-primary me-2\"></i>");
      out.print( crs.getString("area"));
      out.write("\n");
      out.write("                                                    </small>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");

                                                }
                                            } catch (Exception e) {
                                                out.println("<p>Error: " + e.getMessage() + "</p>");
                                            }
                                        
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Property List End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Team Start -->\n");
      out.write("            <div class=\"container-xxl py-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"text-center mx-auto mb-5 wow fadeInUp\" data-wow-delay=\"0.1s\" style=\"max-width: 600px;\">\n");
      out.write("                        <h1 class=\"mb-3\">Property Agents</h1>\n");
      out.write("                        <p style=\"text-align: justify;\">Looking for the perfect sports court to play your favorite game? We provide top-quality, well-maintained courts for all sports at the best locations. Book hassle-free, enjoy premium facilities, and take your game to the next level!</p></div>\n");
      out.write("\n");
      out.write("                    <div class=\"row g-1\">\n");
      out.write("                        ");

                            ResultSet rs1 = con.display("select * from provider order by RAND() LIMIT 4 ");
                            while (rs1.next()) {
                        
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 wow fadeInUp\" data-wow-delay=\"0.1s\">\n");
      out.write("                            <div class=\"team-item rounded overflow-hidden\">\n");
      out.write("\n");
      out.write("                                <div class=\"position-relative\">\n");
      out.write("\n");
      out.write("                                    <!-- <img class=\"img-fluid\" src=\"img/team-1.jpg\" alt=\"\">-->\n");
      out.write("                                    <img class=\"img-fluid\" src=\"img/");
      out.print( rs1.getString("img"));
      out.write("\" alt=\"Sport Icon\" style=\"height: 320px;width: 260px\"> \n");
      out.write("                                    <div class=\"position-absolute start-50 top-100 translate-middle d-flex align-items-center\">\n");
      out.write("                                        <a class=\"btn btn-square mx-1\" href=\"\"><i class=\"fab fa-facebook-f\"></i></a>\n");
      out.write("                                        <a class=\"btn btn-square mx-1\" href=\"\"><i class=\"fab fa-twitter\"></i></a>\n");
      out.write("                                        <a class=\"btn btn-square mx-1\" href=\"\"><i class=\"fab fa-instagram\"></i></a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"text-center p-4 mt-3\">\n");
      out.write("                                    <h5 class=\"fw-bold mb-0\">");
      out.print( rs1.getString("pname"));
      out.write("</h5>\n");
      out.write("                                    <small></small>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Team End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Testimonial Start -->\n");
      out.write("            <div class=\"container-xxl py-5\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"text-center mx-auto mb-5 wow fadeInUp\" data-wow-delay=\"0.1s\" style=\"max-width: 600px;\">\n");
      out.write("                        <h1 class=\"mb-3\">Our Clients Say!</h1>\n");
      out.write("                        <p>Play with passion, train like a pro, and enjoy the perfect sporting experience. Every match, every moment, made better with the best courts</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"owl-carousel testimonial-carousel wow fadeInUp\" data-wow-delay=\"0.1s\">\n");
      out.write("                        ");

                            try {
                                //String q = "select reviews.*,users.usname,courts.cname from reviews,users,courts where reviews.usid=users.usid and reviews.cid=courts.cid";
                                        
                                //select reviews.*,users.usname,courts.cname f
                                String q = "select reviews.*,users.usname,courts.cname from reviews,users,courts where reviews.cid=courts.cid";
                                if (request.getParameter("revid") != null) {
                                    q = "SELECT * FROM reviews";
                                }
                                ResultSet crs = con.display(q);
                                while (crs.next()) {
                        
      out.write("\n");
      out.write("                        <div class=\"testimonial-item bg-light rounded p-3\">\n");
      out.write("                            <div class=\"bg-white border rounded p-4\">\n");
      out.write("                                <p>");
      out.print( crs.getString("message"));
      out.write("</p>\n");
      out.write("                                <div class=\"d-flex align-items-center\">\n");
      out.write("                                    <img class=\"img-fluid flex-shrink-0 rounded\" src=\"img/testimonial-1.jpg\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                    <div class=\"ps-3\">\n");
      out.write("                                        <h6 class=\"fw-bold mb-1\">");
      out.print( crs.getString("usname"));
      out.write("</h6>\n");
      out.write("                                        <small>");
      out.print( crs.getString("cname"));
      out.write("</small>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 }
                            } catch (Exception e) {
                                out.print("Error" + e);
                            }
                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Testimonial End -->\n");
      out.write("            <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("\n");
      out.write("            <!-- Footer Start -->\n");
      out.write("            ");
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
      out.write("            <!-- Footer End -->\n");
      out.write("\n");
      out.write("            <!-- JavaScript Libraries -->\n");
      out.write("            <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("            <script src=\"lib/wow/wow.min.js\"></script>\n");
      out.write("            <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("            <script src=\"lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("            <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("            <!-- Template Javascript -->\n");
      out.write("            <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
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
