package org.apache.jsp.admin_002dside;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connection.DBConnection;

public final class provider_002dcourts_002dadd_002dcode_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            try {
                DBConnection db = new DBConnection();
                
                int pid = Integer.parseInt(request.getParameter("pid"));
                int spid = Integer.parseInt(request.getParameter("spid"));
                String cname = request.getParameter("cname");
                String area = request.getParameter("area");
                String rating = request.getParameter("rating");
                int rent = Integer.parseInt(request.getParameter("rent"));
                String time = request.getParameter("time");
                String img1 = request.getParameter("img1");
                String img2 = request.getParameter("img2");

                String q = "insert into courts (pid ,spid ,cname, area, rating, rent, time, img1,img2) values ('"
                        + pid + "', '"
                        + spid + "', '"
                        + cname + "', '"
                        + area + "', '"
                        + rating + "', '"
                        + rent + "', '"
                        + time + "', '"
                        + img1 + "', '"
                        + img2 + "')";
                int result = db.allquery(q);

                if (result > 0) {
                    response.sendRedirect("provider-courts-view.jsp");
                    out.println("Record inserted successfully.");
                } else {
                    out.println("Error");
                }
            } catch (Exception e) {
                out.println("Error: " + e);
            }
        
      out.write("\n");
      out.write("    </body>\n");
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
