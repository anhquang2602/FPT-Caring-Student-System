package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profileSeller_jsp extends org.apache.jasper.runtime.HttpJspBase
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

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<!DOCTYPE html> \n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/profileStyle.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/pagingStyle.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"px-0 bg-white\">\n");
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
      out.write(" \n");
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
      out.write("                <div class=\"container rounded bg-white mt-5 mb-5\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div>\n");
      out.write("                            <ul class=\"breadcrumb bg-white\">\n");
      out.write("                                <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                                <li><a href=\"SellerListController\">List Seller</a></li>\n");
      out.write("                                <li><a>Detail Seller</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3\">\n");
      out.write("                            <div class=\"d-flex flex-column align-items-center text-center p-3 py-5\"><img class=\"rounded-circle mt-5\" width=\"150px\" src=\"https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg\">\n");
      out.write("                                <form action=\"ViewSellerController\" method=\"post\">\n");
      out.write("                                    <div class=\"form-group\">                       \n");
      out.write("                                        <input style=\"padding-left: 80px\"type=\"file\" class=\"form-control-file\" id=\"exampleFormControlFile1\">\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                                <span class=\"font-weight-bold\">Username</span>\n");
      out.write("                                <span class=\"text-black-50\">username@mail.com</span><span></span></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-5\">\n");
      out.write("                            <div class=\"p-3 py-5\">\n");
      out.write("                                <div class=\"d-flex justify-content-between align-items-center mb-3\">\n");
      out.write("                                    <h4 class=\"text-right\">Profile Seller</h4>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row mt-2\">\n");
      out.write("                                    <input name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.sellerID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" hidden=\"\">\n");
      out.write("                                    <div class=\"col-md-6\"><label class=\"labels\">First Name</label><input type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                    <div class=\"col-md-6\"><label class=\"labels\">Last Name</label><input type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.lastName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row mt-3\">\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Age</label><input type=\"number\" class=\"form-control\"value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.age}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Mobile Number</label><input type=\"text\" class=\"form-control\" value=\"0");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Email</label><input type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Sex</label></br>\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Country</label>\n");
      out.write("                                        <select class=\"form-select\" aria-label=\"Default select example\">\n");
      out.write("                                            <option selected value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.countryID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.countryName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Province</label>\n");
      out.write("                                        <select class=\"form-select\" aria-label=\"Default select example\">\n");
      out.write("                                            <option selected value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.provinceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.provinceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">District</label>\n");
      out.write("                                        <select class=\"form-select\" aria-label=\"Default select example\">\n");
      out.write("                                            <option selected value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.districID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write('"');
      out.write('>');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.districtName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-12\"><label class=\"labels\">Address Detail</label><input type=\"text\" class=\"form-control\"value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mt-5 text-center\"><button class=\"btn btn-primary profile-button\" type=\"button\" >Save Profile</button></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4\">\n");
      out.write("                            <div class=\"p-3 py-5\">\n");
      out.write("                                <form action=\"ChangeStatusSeller\" method=\"post\">\n");
      out.write("                                    <div class=\"col-md-12 mt-5 ml-5\"><label class=\"labels\">Status</label></br>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" readonly=\"\" hidden=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"mt-1\">\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        <input class=\"ml-3\" type=\"submit\" value=\"Lock Account\"/>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
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
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.gender eq 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"inlineRadioOptions\" checked=\"\" id=\"inlineRadio1\" value=\"1\">Nam\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"inlineRadioOptions\"   id=\"inlineRadio1\" value=\"0\" >Nữ\n");
        out.write("                                        ");
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

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.gender eq 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"inlineRadioOptions\"  id=\"inlineRadio1\" value=\"1\">Nam\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"inlineRadioOptions\" checked=\"\"  id=\"inlineRadio1\" value=\"0\" >Nữ\n");
        out.write("                                        ");
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

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.status eq 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"status\" checked=\"\" id=\"inlineRadio1\" value=\"1\">Active\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"status\"   id=\"inlineRadio1\" value=\"0\" >Inactive\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${seller.status eq 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"status\"  id=\"inlineRadio1\" value=\"1\">Active\n");
        out.write("                                            <input class=\"form-check-input\" type=\"radio\" name=\"status\" checked=\"\"  id=\"inlineRadio1\" value=\"0\" >Inactive\n");
        out.write("                                        ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }
}
