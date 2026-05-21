package org.apache.jsp.admin_002dside;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.DBConnection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class provider_002dindex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin-side/provider-header.jsp");
    _jspx_dependants.add("/admin-side/admin-footer.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("﻿<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <!--[if IE]>\n");
      out.write("            <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("            <![endif]-->\n");
      out.write("        <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>\n");
      out.write("        <!-- BOOTSTRAP CORE STYLE  -->\n");
      out.write("        <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- FONT AWESOME STYLE  -->\n");
      out.write("        <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- CUSTOM STYLE  -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- GOOGLE FONT -->\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navbar navbar-inverse set-radius-zero\" >\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\">\n");
      out.write("\n");
      out.write("                        <img src=\"assets/img/logo.png\" />\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"right-div\">\n");
      out.write("                    \n");
      out.write("                    <a href=\"logout.jsp\" class=\"btn btn-danger pull-right\">LOG ME OUT</a>\n");
      out.write("                    <a href=\"provider-my-profile.jsp\" class=\" pull-right\"><img src=\"profile.png\" style=\"width:35px;height:35px;margin-right:20px\"></a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- LOGO HEADER END-->\n");
      out.write("        <section class=\"menu-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"navbar-collapse collapse \">\n");
      out.write("                            <ul id=\"menu-top\" class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li><a href=\"provider-index.jsp\" >DASHBOARD</a></li>\n");
      out.write("                                <li><a href=\"provider-review-view.jsp\">Reviews</a></li>\n");
      out.write("                                <li><a href=\"provider-sports-view.jsp\">Sports</a></li>\n");
      out.write("                                <li><a href=\"provider-booking-view.jsp\">Booking</a></li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Courts <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\n");
      out.write("                                        <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"provider-courts-add.jsp\">Add</a></li>\n");
      out.write("                                        <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"provider-courts-view.jsp\">View</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- MENU SECTION END-->\n");
      out.write('\n');

    DBConnection con = new DBConnection();

      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>\n");
      out.write("    <!-- BOOTSTRAP CORE STYLE  -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- FONT AWESOME STYLE  -->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- CUSTOM STYLE  -->\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- GOOGLE FONT -->\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("<body><br>\n");
      out.write("    <div class=\"content-wrapper\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row pad-botm\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h4 class=\"header-line\">ADMIN DASHBOARD</h4>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                    <div class=\"alert alert-info back-widget-set text-center\">\n");
      out.write("                        <i class=\"fa fa-history fa-5x\"></i>\n");
      out.write("                        <h3>500+&nbsp; <i class=\"fa fa-dollar\"></i></h3>\n");
      out.write("                        Amount Pending For Approval\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                    <div class=\"alert alert-success back-widget-set text-center\">\n");
      out.write("                        <i class=\"fa fa-bars fa-5x\"></i>\n");
      out.write("                        <h3>300+ Tasks</h3>\n");
      out.write("                        Pending For New Events\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                    <div class=\"alert alert-warning back-widget-set text-center\">\n");
      out.write("                        <i class=\"fa fa-recycle fa-5x\"></i>\n");
      out.write("                        <h3>56+ Calls</h3>\n");
      out.write("                        To Be Made For New Orders\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 col-sm-3 col-xs-6\">\n");
      out.write("                    <div class=\"alert alert-danger back-widget-set text-center\">\n");
      out.write("                        <i class=\"fa fa-briefcase fa-5x\"></i>\n");
      out.write("                        <h3>30+ Issues </h3>\n");
      out.write("                        That Should Be Resolved Now\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>              \n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4 col-sm-4 col-xs-12\">\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-8 col-sm-8 col-xs-12\">\n");
      out.write("                        <div class=\"panel panel-success\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                Responsive Table Example\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                    ");

                                        try {
                                            if (request.getParameter("bid") != null) {
                                                con.allquery("DELETE FROM booking WHERE bid=" + request.getParameter("bid"));
                                            }

                                            if (request.getParameter("statusbid") != null) {
                                                con.allquery("UPDATE booking SET status='" + request.getParameter("status") + "' WHERE bid=" + request.getParameter("statusbid"));
                                            }

                                            String pid = "-1";
                                            if (session.getAttribute("provider") != null) {
                                                pid = session.getAttribute("provider").toString();
                                            }

                                            String q = "SELECT booking.*, courts.cname, users.usname, users.contact FROM booking, courts, users WHERE booking.cid = courts.cid AND booking.usid = users.usid AND courts.pid = '" + pid + "'";
                                            ResultSet rs = con.display(q);
                                    
      out.write("\n");
      out.write("                                    <table class=\"table table-striped table-bordered table-hover\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Court Name</th>\n");
      out.write("                                                <th>User Name</th>\n");
      out.write("                                                <th>Contact</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                <th>Time</th>\n");
      out.write("                                                <th>Duration</th>\n");
      out.write("                                                <th>Total Rent</th>\n");
      out.write("                                                <th>Advance Amount</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            ");

                                                while (rs.next()) {
                                            
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print( rs.getString("cname"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("usname"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("contact"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("date"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("time"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("duration"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("total_rent"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("adv_amount"));
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print( rs.getString("status"));
      out.write("</td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            ");

                                                }
                                                rs.close();
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                    ");

                                        } catch (Exception e) {
                                            out.println("<p>Error: " + e.getMessage() + "</p>");
                                        }
                                    
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("</body>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<section class=\"footer-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                   &copy; 2014 sportscourts@123.com |<a href=\"http://www.binarytheme.com/\" target=\"_blank\"  > Designed by : Jinal, Arti, Princy</a> \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("      <!-- FOOTER SECTION END-->\n");
      out.write("    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->\n");
      out.write("    <!-- CORE JQUERY  -->\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("    <!-- BOOTSTRAP SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("      <!-- CUSTOM SCRIPTS  -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write('\n');
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
