package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addHostel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/addHostelStyle.css\">\n");
      out.write("        <style>\n");
      out.write("            .error {\n");
      out.write("                color: red;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"card\">\n");
      out.write("                <form class=\"form\" method=\"POST\" action=\"addhostel\" name=\"addhostelForm\" onsubmit=\"return validateAddHostel()\">\n");
      out.write("                    <div class=\"left-side\">\n");
      out.write("                        <div class=\"left_top\">\n");
      out.write("                            <h4>Thêm phòng</h4>\n");
      out.write("                        </div> \n");
      out.write("                        <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n");
      out.write("                            <div class=\"carousel-indicators\"> \n");
      out.write("                                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"0\" class=\"active\" aria-current=\"true\" aria-label=\"Slide 1\"></button>\n");
      out.write("                                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"1\" aria-label=\"Slide 2\"></button>\n");
      out.write("                                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"2\" aria-label=\"Slide 3\"></button>\n");
      out.write("                                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"3\" aria-label=\"Slide 4\"></button>\n");
      out.write("                                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"4\" aria-label=\"Slide 5\"></button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"carousel-inner\">\n");
      out.write("                                <div class=\"carousel-item active\"> <img src=\"https://imgur.com/j1R465T.jpg\" class=\"d-block w-100\" alt=\"...\"> </div>\n");
      out.write("                                <div class=\"carousel-item\"> <img src=\"https://imgur.com/LPFGIoY.jpg\" class=\"d-block w-100\" alt=\"...\"> </div>\n");
      out.write("                                <div class=\"carousel-item\"> <img src=\"https://imgur.com/v7bSlKX.jpg\" class=\"d-block w-100\" alt=\"...\"> </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"https://imgur.com/xZ6h8of.jpg\" class=\"d-block w-100\" alt=\"...\"> \n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"https://imgur.com/I2GDFqA.jpg\" class=\"d-block w-100 \" alt=\"...\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"prev\">\n");
      out.write("                                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span> \n");
      out.write("                                <span class=\"visually-hidden\">Previous</span> \n");
      out.write("                            </button> \n");
      out.write("                            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"next\"> \n");
      out.write("                                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"visually-hidden\">Next</span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"oriton_img\"> \n");
      out.write("                            <h5>Tình trạng phòng</h5>                   \n");
      out.write("                        </div>   \n");
      out.write("                        <div class=\"left_text\">\n");
      out.write("                            <input type=\"radio\" id=\"collection1\" name=\"status\" value=\"yes\"> \n");
      out.write("                            <label for=\"collection1\">\n");
      out.write("                                <div class=\"left_box\">\n");
      out.write("                                    <div class=\"left_box_collection\"> \n");
      out.write("                                        <div class=\"radio_button\"> <span></span>\n");
      out.write("                                            <h4>Còn phòng</h4>\n");
      out.write("                                        </div>                               \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </label> \n");
      out.write("                            <input type=\"radio\" id=\"collection2\" checked name=\"status\" value=\"no\"> \n");
      out.write("                            <label for=\"collection2\">\n");
      out.write("                                <div class=\"left_box\">\n");
      out.write("                                    <div class=\"left_box_collection\">\n");
      out.write("                                        <div class=\"radio_button\"> <span></span>\n");
      out.write("                                            <h4>Hết phòng</h4>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>                                    \n");
      out.write("                                </div>\n");
      out.write("                            </label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"right-side\">\n");
      out.write("                        <h3>Mô tả phòng</h3>\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"hostelName\" placeholder=\"Nhập tên nhà trọ\"> <span>Tên nhà trọ</span> </div>\n");
      out.write("                        <div class=\"error\" id=\"errorName\"></div>\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"room\" placeholder=\"Nhập số phòng\"> <span>Số phòng</span> </div>   \n");
      out.write("                        <div class=\"error\" id=\"errorRoom\"></div>\n");
      out.write("                        <div class=\"input_text\"> <input type=\"number\" name=\"floor\" placeholder=\"Nhập số tầng\"> <span>Số tầng</span> </div>\n");
      out.write("                        <div class=\"error\" id=\"errorFloor\"></div>\n");
      out.write("                        <div class=\"billing\">\n");
      out.write("                            <div class=\"input_text\"> \n");
      out.write("                                <span>Tỉnh, thành phố</span> \n");
      out.write("                                <select name=\"province\" id=\"province\" class=\"province\">\n");
      out.write("                                    <option value=\"\">Select Province</option>\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                                </select> \n");
      out.write("                            </div>                         \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"error\" id=\"errorProvince\"></div>\n");
      out.write("\n");
      out.write("                        <div class=\"billing\">\n");
      out.write("                            <div class=\"input_text\"> \n");
      out.write("                                <span>Quận, phường</span> \n");
      out.write("                                <select name=\"district\"  id =\"district\" class=\"district\"></select>\n");
      out.write("                            </div>                         \n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"input_text\"> <input type=\"text\" name=\"address\" placeholder=\"Nhập địa chỉ cụ thể\"> <span>Địa chỉ</span> </div>\n");
      out.write("                        <div class=\"input_text\"> <input type=\"number\" name=\"cost\" placeholder=\"Nhập giá thuê\"> <span>Giá thuê</span> </div>\n");
      out.write("                        <div class=\"input_text\"> <input type=\"number\" name=\"distance\" placeholder=\"Nhập khoảng cách\"> <span>Khoảng cách</span> </div>\n");
      out.write("                        <div class=\"input_text\"> <span>Mô tả</span> </div>\n");
      out.write("                        <textarea placeholder=\"Nhập mô tả\" rows=\"5\" style=\"width: 100%; margin-top: 10px\"  class=\"input_text\" name=\"description\" style=\"width:250px;height:150px;\"></textarea>\n");
      out.write("                        <div class=\"pay\"> \n");
      out.write("                            <button type=\"submit\">Thêm nhà trọ</button>                  \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"pay\"> \n");
      out.write("                            <button type=\"reset\">Reset Button</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"js/addProduct.js\"></script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("<script\n");
      out.write("    src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("    integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\n");
      out.write("crossorigin=\"anonymous\"></script>\n");
      out.write("<script>\n");
      out.write("        $(document).on('change', '.province', function () {\n");
      out.write("            var province = document.getElementById(\"province\").value;\n");
      out.write("            $('#district').empty();\n");
      out.write("\n");
      out.write("\n");
      out.write("            $.ajax({\n");
      out.write("                type: \"GET\",\n");
      out.write("\n");
      out.write("                url: \"/Test_1/findDistrict\",\n");
      out.write("                data: {\n");
      out.write("                    province: province,\n");
      out.write("                },\n");
      out.write("                headers: {\n");
      out.write("                    Accept: \"application/json; charset=utf-8\",\n");
      out.write("                    contentType: \"application/json; charset=utf-8\"\n");
      out.write("                },\n");
      out.write("\n");
      out.write("                success: function (data) {\n");
      out.write("\n");
      out.write("                    data.forEach(function (a) {\n");
      out.write("                        $(\"#district\").append('<option value=\"' + a.districtID + '\">' + a.districtName + '</option>');\n");
      out.write("\n");
      out.write("                    });\n");
      out.write("                },\n");
      out.write("                error: function (e) {\n");
      out.write("                    console.log(\"ERROR: \", e);\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        });\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("    function validateAddHostel() {\n");
      out.write("        let isValid = true;\n");
      out.write("        const hostelName = document.addhostelForm.hostelName.value;\n");
      out.write("        const room = document.addhostelForm.room.value;\n");
      out.write("        const floor = document.addhostelForm.floor.value;\n");
      out.write("        const province = document.addhostelForm.province.value;\n");
      out.write("        const address = document.addhostelForm.address.value;\n");
      out.write("        const cost = document.addhostelForm.cost.value;\n");
      out.write("        const distance = document.addhostelForm.distance.value;\n");
      out.write("        const regex = /[+-]?([0-9]*[.])?[0-9]+/;\n");
      out.write("        const regex2 = /^[0-9]*$/;\n");
      out.write("\n");
      out.write("        document.getElementById('errorName').innerText = ' ';\n");
      out.write("        document.getElementById('errorRoom').innerText = ' ';\n");
      out.write("        document.getElementById('errorFloor').innerText = ' ';\n");
      out.write("        document.getElementById('errorProvince').innerText = ' ';\n");
      out.write("        document.getElementById('errorAddress').innerText = ' ';\n");
      out.write("        document.getElementById('errorCost').innerText = ' ';\n");
      out.write("        document.getElementById('errorDistance').innerText = ' ';\n");
      out.write("\n");
      out.write("\n");
      out.write("        if (!hostelName) {\n");
      out.write("            document.getElementById('errorName').innerText = 'Bạn phải nhập tên nhà trọ!';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!room) {\n");
      out.write("            document.getElementById('errorRoom').innerText = 'Bạn phải nhập số phòng!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (room <= 0) {\n");
      out.write("            document.getElementById('errorRoom').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (!regex2.test(room)) {\n");
      out.write("            document.getElementById('errorRoom').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!floor) {\n");
      out.write("            document.getElementById('errorFloor').innerText = 'Bạn phải nhập số tầng!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (!regex2.test(floor)) {\n");
      out.write("            document.getElementById('errorFloor').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (floor <= 0) {\n");
      out.write("            document.getElementById('errorFloor').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!province) {\n");
      out.write("            document.getElementById('errorProvince').innerText = 'Bạn phải chọn tỉnh!';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!address) {\n");
      out.write("            document.getElementById('errorAddress').innerText = 'Bạn phải nhập địa chỉ!';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!cost) {\n");
      out.write("            document.getElementById('errorCost').innerText = 'Bạn phải nhập giá thuê!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (!regex.test(cost)) {\n");
      out.write("            document.getElementById('errorCost').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (cost <= 0) {\n");
      out.write("            document.getElementById('errorCost').innerText = 'Giá thuê phải > 0 ';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        if (!distance) {\n");
      out.write("            document.getElementById('errorDistance').innerText = 'Bạn phải nhập khoảng cách!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (!regex.test(distance)) {\n");
      out.write("            document.getElementById('errorDistance').innerText = 'Invalid!';\n");
      out.write("            isValid = false;\n");
      out.write("        } else if (distance <= 0) {\n");
      out.write("            document.getElementById('errorDistance').innerText = 'Khoảng cách phải > 0 ';\n");
      out.write("            isValid = false;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        return isValid;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listProvince}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                        <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.provinceID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.provinceName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                    ");
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
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
