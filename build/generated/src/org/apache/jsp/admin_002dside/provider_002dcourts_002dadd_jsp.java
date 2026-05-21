package org.apache.jsp.admin_002dside;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.DBConnection;

public final class provider_002dcourts_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    DBConnection con =  new DBConnection();
    
    
      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row pad-botm\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <div class=\"panel panel-info\">\n");
      out.write("                    <div class=\"panel-heading\">\n");
      out.write("                        ADD COURTS\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <form role=\"form\" action=\"provider-courts-add-code.jsp\" method=\"post\">\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Sport</label>\n");
      out.write("                                <select id=\"spid\" name=\"spid\" class=\"form-control\">\n");
      out.write("                                    ");
      out.print(con.binddropdown("select spid,spname from sports") );
      out.write("\n");
      out.write("                                    \n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Courts Name</label>\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"cname\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Area</label>\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"area\" style=\"min-height:100px;\" />\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Rating</label>\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"rating\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Rent</label>\n");
      out.write("                                <input class=\"form-control\" type=\"text\" name=\"rent\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Enter Time</label>\n");
      out.write("                                <input class=\"form-control\" type=\"time\" name=\"time\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label> Enter Image 1 </label>\n");
      out.write("                                <input type=\"file\"  name=\"img1\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label> Enter Image 2 </label>\n");
      out.write("                                <input type=\"file\"  name=\"img2\"/>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-success\">Add </button>\n");
      out.write("                            <button type=\"reset\" class=\"btn btn-primary\">Reset </button>\n");
      out.write("\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- CONTENT-WRAPPER SECTION END-->\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<section class=\"footer-section\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                   &copy; 2014 Yourdomain.com |<a href=\"http://www.binarytheme.com/\" target=\"_blank\"  > Designed by : binarytheme.com</a> \n");
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
