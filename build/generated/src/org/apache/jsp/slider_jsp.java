package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class slider_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<div class=\"container-fluid header bg-white p-0\">\n");
      out.write("            <div class=\"row g-0 align-items-center flex-column-reverse flex-md-row\">\n");
      out.write("                <div class=\"col-md-6 p-5 mt-lg-5\">\n");
      out.write("                    <h4 class=\"display-6 animated fadeIn mb-4\">EXPERIENCE THE THRILL OF <span class=\"text-primary\">THE GAME</span>,RIGHT HERE. </h4>\n");
      out.write("                    <p class=\"animated fadeIn mb-4 pb-2\">Do your best to achieve the goals. Do what makes you distinct than others. Snatch your rights by excelling in your pursuits. Do maximum for distinction in your field.</p>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 animated fadeIn\">\n");
      out.write("                    <div class=\"owl-carousel header-carousel\">\n");
      out.write("                        <div class=\"owl-carousel-item\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-1.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"owl-carousel-item\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-2.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \">\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                            <img class=\"img-fluid\" src=\"img/carousel-3.jpg\" alt=\"\" style=\"height: 700px; width: 1000px \" >\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
