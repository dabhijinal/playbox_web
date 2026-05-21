package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.DBConnection;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("                <a href=\"index.jsp\" class=\"nav-item nav-link active\">Home</a>\n");
      out.write("                <a href=\"about.jsp\" class=\"nav-item nav-link\">About</a>\n");
      out.write("                <a href=\"#\" class=\"nav-item nav-link\">Sports</a>\n");
      out.write("                <div class=\"nav-item dropdown\">\n");
      out.write("                   \n");
      out.write("                    \n");
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
      out.write("                \n");
      out.write("                ");

                    if (session.getAttribute("user") == null) {
                
      out.write("\n");
      out.write("                \n");
      out.write("            <a href=\"registration.jsp\" class=\"btn btn-primary px-3 d-none d-lg-flex\">Registration</a>\n");
      out.write("            \n");
      out.write("                    ");
} else { 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <a href=\"logout.jsp\" class=\"btn btn-primary px-3 d-none d-lg-flex\">Logout</a>\n");
      out.write("            \n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</div>\n");
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
