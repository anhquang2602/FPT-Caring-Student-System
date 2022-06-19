package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <span id=\"error\"></span>\n");
      out.write("        <form name=\"registerform\" action=\"register\" method=\"post\" onsubmit=\"return checkSend()\">\n");
      out.write("            <table width=\"40%\">\n");
      out.write("                <tr><td>Email:</td>\n");
      out.write("                    <td><input type=\"text\" id=\"username\" name=\"username\" \n");
      out.write("                               placeholder=\"enter email\"/>\n");
      out.write("                    </td>                    \n");
      out.write("                </tr>\n");
      out.write("                <tr><td><div id=\"divEmail\"></div></td></tr>\n");
      out.write("                <tr><td>Password:</td>\n");
      out.write("                    <td><input type=\"password\" id=\"pass\" name=\"pass\" \n");
      out.write("                               placeholder=\"enter password\" required />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>Confirm Password:</td>\n");
      out.write("                    <td><input type=\"password\" id=\"repass\" \n");
      out.write("                               name=\"repass\" \n");
      out.write("                               placeholder=\"enter confirm password\" required />                    \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr><td><div id=\"divcheckpass\"></div></td></tr>\n");
      out.write("                <tr><td>Role:</td>\n");
      out.write("                    <td><input name=\"role\" type=\"radio\" value=\"2\" checked/>user\n");
      out.write("                        <input name=\"role\" type=\"radio\" value=\"3\" />seller\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td></td>\n");
      out.write("                    <td><input type=\"submit\" value=\"Register Now\" onclick=\"checkValidatorForRegister()\"/>\n");
      out.write("                    </td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("       <h2 style=\"color: red\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("    </body>\n");
      out.write("     <script src=\"Validator.js\"></script>\n");
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
