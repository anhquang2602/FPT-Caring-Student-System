package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import model.Bus;
import dao.BusDAO;

public final class listbus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/sidebar.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_end_begin;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_forEach_var_end_begin.release();
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
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/busStyle.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pagingStyle.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("         <div class=\"px-0 bg-white\">\n");
      out.write("            ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <header>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/viewListStyle.css\">\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\">\r\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("        <div class=\"d-flex\" style=\"background-color: rgb(238, 77, 45)\">\r\n");
      out.write("                <div class=\"d-flex align-items-center\" style=\"width: 20%\"> \r\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbar-items\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"true\" aria-label=\"Toggle navigation\"> \r\n");
      out.write("                        <span class=\"fas fa-bars\"></span> \r\n");
      out.write("                    </button> \r\n");
      out.write("                    <a class=\"text-decoration-none fs14 ps-2\" href=\"home.jsp\">FCS<span class=\"fs13 pe-2\">.com</span></a> \r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"topnavbar\">\r\n");
      out.write("                    <div class=\"topnav\" style=\"width: 100%;  background-color: rgb(238, 77, 45)\">\r\n");
      out.write("                        <div class=\"d-flex my-2\"> \r\n");
      out.write("                            <a style=\"color: #fff\" href=\"SellerListController\">View List Sellers</a>  \r\n");
      out.write("                            <a style=\"color: #fff\" href=\"StudentListController\">view list students</a> \r\n");
      out.write("                            <a style=\"color: #fff\" href=\"ClubListController\">view list club</a> \r\n");
      out.write("                            <a style=\"color: #fff\" href=\"#contact\">view list reports</a>\r\n");
      out.write("                            <span class=\"far fa-user-circle ava\"></span>   \r\n");
      out.write("                            <div class=\"dropdown\">\r\n");
      out.write("                                <button class=\"btn btn-secondary dropdown-toggle mt-1\" style=\"color: #fff\" type=\"button\" id=\"dropdownMenuButton\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                     ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                </button>\r\n");
      out.write("                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuButton\">\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Action</a>\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Another action</a>\r\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Something else here</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("    </header>\r\n");
      out.write("</html>\r\n");
      out.write("   \n");
      out.write("            <div class=\"d-md-flex\">\n");
      out.write("                <ul id=\"navbar-items\" class=\"p-3\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <sidebar>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <script src=\"jquery/jquery.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src='js/bootstrap.min.js'></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/viewListStyle.css\">\n");
      out.write("        <li> <span class=\"fas fa-th-list\"></span> <a class=\"fs12 ps-3\" style=\"text-decoration: none\" href=\"#news\">Nhà ăn</a>  </li>\n");
      out.write("        <li> <span class=\"fas fa-chart-line\"></span> <a class=\"fs12 ps-3\" style=\"text-decoration: none\" href=\"#news\">Nhà trọ</a> </li>\n");
      out.write("        <li> <span class=\"fas fa-suitcase-rolling\"></span> <a class=\"fs12 ps-3\" style=\"text-decoration: none\" href=\"listbus.jsp\">Xe Bus</a> </li>\n");
      out.write("        <li> <span class=\"fas fa-calendar-alt\"></span> <a class=\"fs12 ps-3\" style=\"text-decoration: none\" href=\"department\">Phòng Ban</a> </li>\n");
      out.write("    </sidebar>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("                <div id=\"topnavbar\">\n");
      out.write("                    <div class=\"d-flex align-items-center mb-3 mt-5 px-md-3 px-2 justify-content-center\"> \n");
      out.write("                        <form class=\"example d-flex align-items-center\"> \n");
      out.write("                            <input type=\"text\" placeholder=\"\" name=\"search\"> \n");
      out.write("                            <button type=\"submit\"><i class=\"fa fa-search\"></i></button> \n");
      out.write("                        </form>\n");
      out.write("                    </div>       \n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-lg-12\">\n");
      out.write("                                <div>\n");
      out.write("                                    <ul class=\"breadcrumb\">\n");
      out.write("                                        <li><a href=\"#\">Home</a></li>\n");
      out.write("                                        <li><a>List Bus</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <ul class=\"list-group shadow\">\n");
      out.write("                                    ");

                                        BusDAO bd = new BusDAO();
                                        ArrayList<Bus> listBus = (ArrayList<Bus>)request.getAttribute("listBusPaging");
                                        
                                    
      out.write("\n");
      out.write("                                    ");

                                    for (Bus b : listBus ) {
      out.write("\n");
      out.write("                                    <li class=\"list-group-item\">\n");
      out.write("                                        <div class=\"media align-items-lg-center flex-column flex-lg-row p-1\">\n");
      out.write("                                            <div class=\"media-body order-2 order-lg-1 description\" id=\"description\">\n");
      out.write("                                                <h5 class=\"mt-0 font-weight-bold mb-2\">\n");
      out.write("                                                    <a href=\"BusDetailServlet?number=");
      out.print(b.getNumber());
      out.write("\" style=\"text-decoration: none; font-weight: bold\">Xe ");
      out.print(b.getNumber());
      out.write("</a>\n");
      out.write("                                                </h5>\n");
      out.write("                                                <p class=\"font-italic text-muted mb-0 small\" style=\"font-size: 18px\">");
      out.print(b.getShortDes());
      out.write("</p>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"media-body order-2 order-lg-1 image\">\n");
      out.write("                                                <img src=\"");
      out.print(b.getUrl1());
      out.write("\" alt=\"Generic placeholder image\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> \n");
      out.write("                                    </li> \n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </ul> \n");
      out.write("                                <div class=\"clearfix\">\n");
      out.write("                                    <ul class=\"pagination\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <footer class=\"footer\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/footerStyle.css\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-6 col-md-4 footer-navigation\">\n");
      out.write("                <h3><a href=\"#\">FCS</a></h3>\n");
      out.write("                <p class=\"links\"><a href=\"#\">Home</a><strong> &middot; </strong><a href=\"#\">Blog</a><strong> &middot; </strong><a href=\"#\">Pricing</a><strong> &middot; </strong><a href=\"#\">About</a><strong> &middot; </strong><a href=\"#\">Faq</a><strong> &middot; </strong><a href=\"#\">Contact</a></p>\n");
      out.write("                <p class=\"company-name\">FCS.COM &copy; 2022</p>\n");
      out.write("                <p class=\"company-name\">FCS.com is one of the leading website for caring students in FPT University.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-sm-6 col-md-4 footer-contacts\">\n");
      out.write("                <div><span class=\"fa fa-map-marker footer-contacts-icon\"> </span>\n");
      out.write("                    <p><span class=\"new-line-span\">FPT University</span>HN, VN</p>\n");
      out.write("                </div>\n");
      out.write("                <div><i class=\"fa fa-phone footer-contacts-icon\"></i>\n");
      out.write("                    <p class=\"footer-center-info email text-left\"> +1 9485045958</p>\n");
      out.write("                </div>\n");
      out.write("                <div><i class=\"fa fa-envelope footer-contacts-icon\"></i>\n");
      out.write("                    <p> <a href=\"#\" target=\"_blank\">adminFCS@gmail.com</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clearfix\"></div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("</html>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tag>1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <li class=\"page-item disabled\"><a href=\"BusPagingServlet?index=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tag-1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">Previous</a></li>\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setBegin(1);
    _jspx_th_c_forEach_0.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${endP}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    _jspx_th_c_forEach_0.setVar("i");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                            <li class=\"page-item ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tag==i?\"active\":\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><a href=\"BusPagingServlet?index=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"page-link\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tag<endP}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <li class=\"page-item\"><a href=\"BusPagingServlet?index=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${tag+1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\" class=\"page-link\">Next</a></li>\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }
}
