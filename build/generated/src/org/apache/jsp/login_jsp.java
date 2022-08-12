package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/loginStyle.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body style=\"background-image: url(images/logo.jpg); background-size: 100% 100%\">\r\n");
      out.write("        <div class=\"container mt-5 mb-5\">\r\n");
      out.write("            <div class=\"d-flex flex row g-0\">\r\n");
      out.write("                <div class=\"col-md-7\"></div>\r\n");
      out.write("                <div class=\"col-md-5 mt-5\">\r\n");
      out.write("                    <div class=\"card card1 p-3\">\r\n");
      out.write("                        <div class=\"d-flex flex-column\">  \r\n");
      out.write("                            <span class=\"login mt-3\">Đăng nhập</span> \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"input-field d-flex flex-column mt-3\"> \r\n");
      out.write("                            <form name=\"loginForm\" action=\"LoginServlet\" method=\"post\" onsubmit=\"return checkSend()\">\r\n");
      out.write("                                Nhập email<input class=\"form-control\" placeholder=\"Nhập email của bạn\" type=\"text\" name=\"username\"/><br/>\r\n");
      out.write("                                <div id=\"divCheckEmail\"></div>\r\n");
      out.write("                                Nhập mật khẩu<input class=\"form-control\" placeholder=\"Nhập mật khẩu của bạn\" type=\"password\" name=\"pass\"/><br/>            \r\n");
      out.write("                                <input class=\"mt-4 btn btn-dark d-flex justify-content-center align-items-center\" type=\"submit\" value=\"Đăng nhập\" onclick=\"checkValidatorForLogin()\"/>\r\n");
      out.write("                            </form>\r\n");
      out.write("                            <div class=\"text1 mt-4\"> <a style=\"text-decoration: none; color: rgb(238, 77, 45); margin-left: 10px\" href=\"forgotPass_InputEmail.jsp\">Quên mật khẩu</a> </div>\r\n");
      out.write("                            <div class=\"text2 mt-4\"> <span>Bạn chưa có tài khoản?<a class=\"register\" style=\"text-decoration: none; color: rgb(238, 77, 45)\" href=\"register.jsp\">  Đăng ký</a></span> </div>\r\n");
      out.write("                            <h4 class=\"mt-3\" style=\"text-align: center; color: #842029\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorLogin}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                            <h4 class=\"mt-3\" style=\"text-align: center; color: #842029\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${InputNewPassMess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script src=\"validator/Validator.js\"></script>\r\n");
      out.write("</html>");
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
