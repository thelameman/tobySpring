/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2016-07-25 12:34:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class BLfooter_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/D:/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/BuyingLiving%20v3/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1469012652308L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n\r\n<!DOCTYPE html>\r\n<!--[if IE 7]>\r\n\r\n<html class=\"ie ie7\" lang=\"en-US\">\r\n<![endif]-->\r\n<!--[if IE 8]>\r\n<html class=\"ie ie8\" lang=\"en-US\">\r\n<![endif]-->\r\n<!--[if !(IE 7) | !(IE 8) ]><!-->\r\n<html lang=\"en-US\">\r\n<!--<![endif]-->\r\n<head>\r\n<style type=\"text/css\">\r\n</style>\r\n<script>\r\n$(function(){\r\n\tif(screen.width <700){\r\n\t\t$('.gnbSidebar').hide();\r\n\t\t$('#footerside').show();\r\n\t\t$('#footer-thumbnails').hide();\r\n\t\t$('#footerquickmove').hide();\r\n\t\t$('#msgNew').css('top','').css('left','80%');\r\n\t\t$(\"#footercontacts\").css({\"width\":\"50%\",\"float\":\"left\"});\r\n\t\t$(\"#footercp\").css(\"float\",\"left\");\r\n\t}else{\r\n\t\t$('.gnbSidebar').show();\r\n\t\t$('#footerside').hide();\r\n\t}\r\n});\r\n\r\n\r\n</script>\r\n</head>\r\n<body data-spy=\"scroll\" id=\"page-top\">\r\n\t<div id=\"page\" class=\"hfeed site wrapper\">\r\n\t\t<!-- Footer -->\r\n\t\t<footer id=\"page-footer\"> \r\n\t\t\t<div class=\"inner\">\r\n\r\n\t\t\t\t<section id=\"footer-main\">\r\n\t\t\t\t\t<div class=\"container\">\r\n\t\t\t\t\t\t<div class=\"row\">\r\n\t\t\t\t\t\t\t<div class=\"col-md-3 col-sm-3\" style=\"width: 50%\" id=\"footercp\">\r\n\t\t\t\t\t\t\t\t<aside id=\"text-4\" class=\"widget widget_text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3 class=\"widget-title\">GO５조</h3>\r\n\t\t\t\t\t\t\t\t\t<div class=\"textwidget\">\r\n\t\t\t\t\t\t\t\t\t<!-- \t<p>Vel fermentum ipsum. Suspendisse quis molestie odio.\r\n\t\t\t\t\t\t\t\t\t\t\tInterdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\t\t\t\t\t\t\t\t\t\t\tQuisque aliquet a metus in aliquet. Praesent ut turpis\r\n\t\t\t\t\t\t\t\t\t\t\tposuere, commodo odio id, ornare tortor</p> -->\r\n\t\t\t\t\t\t\t\t\t\t\t<p>2015년 8월 시작된 SC Master 30기입니다. 조장 권보성 조원 김민주, 김정, 김형래로 구성되어있으며, \r\n\t\t\t\t\t\t\t\t\t\t\tBuyingLiving 프로젝트는 2016년 3월 말부터 5월 초까지 제작되었습니다.</p>\r\n\t\t\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t\t\t</aside>\r\n\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t\t<div class=\"col-md-3 col-sm-3\" id=\"footercontacts\">\r\n\t\t\t\t\t\t\t\t<aside id=\"text-2\" class=\"widget widget_text\">\r\n\t\t\t\t\t\t\t\t\t<h3 class=\"widget-title\">연락처</h3>\r\n\t\t\t\t\t\t\t\t\t<div class=\"textwidget\">\r\n\t\t\t\t\t\t\t\t\t\t<address>\r\n\t\t\t\t\t\t\t\t\t\t\t<strong>SC Master</strong><br /> 코엑스 4층<br />\r\n\t\t\t\t\t\t\t\t\t\t\t무역아카데미 IT교육센터<br />\r\n\t\t\t\t\t\t\t\t\t\t</address>\r\n\t\t\t\t\t\t\t\t\t\t<p>\r\n\t\t\t\t\t\t\t\t\t\t\t02) 6000-7139, 5413<br /> <a href=\"http://www.itmasters.org/\">itmasters.org</a>\r\n\t\t\t\t\t\t\t\t\t\t</p>\r\n\t\t\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t\t\t</aside>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t\t<div class=\"col-md-3 col-sm-3\" id=\"footerquickmove\">\r\n\t\t\t\t\t\t\t\t<aside id=\"nav_menu-2\" class=\"widget widget_nav_menu\">\r\n\t\t\t\t\t\t\t\t\t<h3 class=\"widget-title\">바로가기</h3>\r\n\t\t\t\t\t\t\t\t\t<div class=\"menu-footer-menu-container\">\r\n\t\t\t\t\t\t\t\t\t\t<ul id=\"menu-footer-menu\" class=\"menu\">\r\n\t\t\t\t\t\t\t\t\t\t\t<li id=\"menu-item-1721\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-1721\"><a href=\"index\">메인</a></li>\r\n\t\t\t\t\t\t\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n\t\t\t\t\t\t\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n\t\t\t\t\t\t\t\t\t\t\t<li id=\"menu-item-1723\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-1723\"><a href=\"freeBoardView?currentPage=1\">자유게시판</a></li>\r\n\t\t\t\t\t\t\t\t\t\t\t<li id=\"menu-item-1724\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-1724\"><a href=\"qnaBoardView?currentPage=1\">QnA게시판</a></li>\r\n\t\t\t\t\t\t\t\t\t\t\t\r\n\t\t\t\t\t\t\t\t\t\t</ul>\r\n\t\t\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t\t\t</aside>\r\n\t\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</section>\r\n\t\t\t\t<div id=\"footerside\">\r\n\t\t\t\t\t<div id=\"msgNew\"\r\n\t\t\t\t\t\tstyle=\"display: none; background: url(resources/img/new.png); width: 35px; height: 35px; position: absolute; left: 50%; top: 200%\"></div>\r\n\t\t\t\t\t<table>\r\n\t\t\t\t\t\t<tr>\r\n\t\t\t\t\t\t\t<th><a href=\"myPage\" class=\"quick\"><img\r\n\t\t\t\t\t\t\t\t\tsrc=\"resources/img/gbn-sidebar-1.png\" width=\"100%\"\r\n\t\t\t\t\t\t\t\t\theight=\"80px\" title=\"마이페이지\" alt=\"마이페이지\" /></a></th>\r\n\t\t\t\t\t\t\t<th><a href=\"cartView\" class=\"quick\"><img\r\n\t\t\t\t\t\t\t\t\tsrc=\"resources/img/gbn-sidebar-2.png\" width=\"100%\"\r\n\t\t\t\t\t\t\t\t\theight=\"80px\" title=\"장바구니\" alt=\"장바구니\" /></a></th>\r\n");
      out.write("\t\t\t\t\t\t\t<th><a href=\"qnaBoardView?currentPage=1\"\r\n\t\t\t\t\t\t\tclass=\"quick\"><img src=\"resources/img/gbn-sidebar-3.png\"\r\n\t\t\t\t\t\t\t\twidth=\"100%\" height=\"70px\" title=\"QnA\" alt=\"QnA\" /></a></th>\r\n\t\t\t\t\t\t\t<th><a href=\"freeBoardView?currentPage=1\"\r\n\t\t\t\t\t\t\tclass=\"quick\"><img src=\"resources/img/gbn-sidebar-4.png\"\r\n\t\t\t\t\t\t\t\twidth=\"100%\" height=\"80px\" title=\"자유게시판\" alt=\"자유게시판\" /></a></th>\r\n\t\t\t\t\t\t\t<th><a id=\"msgBox\" class=\"quick\"\r\n\t\t\t\t\t\t\tsendId=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><img\r\n\t\t\t\t\t\t\t\tsrc=\"resources/img/gbn-sidebar-5.png\" width=\"100%\" height=\"80px\"\r\n\t\t\t\t\t\t\t\ttitle=\"쪽지\" alt=\"쪽지\" /></a></th>\r\n\t\t\t\t\t\t</tr>\r\n\t\t\t\t\t</table>\r\n\t\t\t\t\t\r\n\t\t\t\t");
      out.write("\r\n\t\t\t\t</div>\r\n\t\t\t\t<section id=\"footer-thumbnails\" class=\"footer-thumbnails\">\r\n\t\t\t\t\t<div id=\"property-thumbnail-3573\" class=\"property-thumbnail\">\r\n\t\t\t\t\t <img src=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/20747890453_5c1b3149f2_k-150x150.jpg\" alt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-497\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t<img src=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_3-150x150.jpg\" alt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1715\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img src=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_11-150x150.jpg\" alt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-3567\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22869603797_f9bdf34a15_k-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-506\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/03/Home-1-150x150.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1728\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/04/thumbnail_16-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-485\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_1-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1875\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/DSC00567-Custom-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-3572\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22170691606_4e3124e075_k-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-3568\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22698641040_679047d2c2_k-150x150.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-515\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_9-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1819\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/property-02-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-3571\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/22010564328_180deb3832_k-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-530\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/awesome-mansion1-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1764\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/911-memorial-07-150x150.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-1848\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/10/02-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-3574\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/20626010444_dd43fe3ebc_k-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-523\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_11-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-518\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2014/09/thumbnail_10-150x150.jpg\"\r\n\t\t\t\t\t\t\talt=\"\" /> \r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<div id=\"property-thumbnail-509\" class=\"property-thumbnail\">\r\n\t\t\t\t\t\t <img\r\n\t\t\t\t\t\t\tsrc=\"http://themes.fruitfulcode.com/zoner/wp-content/uploads/2015/11/21182077749_c8a552cf69_k-150x150.jpg\"\r\n");
      out.write("\t\t\t\t\t\t\talt=\"\" />\r\n\t\t\t\t\t</div>\r\n\t\t\t\t</section>\r\n\t\t\t\t<!-- /#footer-thumbnails -->\r\n\t\t\t\t<section id=\"footer-copyright\">\r\n\t\t\t\t\t<div class=\"container\">\r\n\t\t\t\t\t\t<div class=\"copyright pull-left\">\r\n\t\t\t\t\t\t\t<nofollow>© <a title=\"BuyingLiving Main\" href=\"index\" target=\"_blank\">BuyingLiving</a>, Powered by <a href=\"http://wordpress.org/\" target=\"_blank\">WordPress</a></nofollow>\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t<!-- /.copyright -->\r\n\t\t\t\t\t\t<div class=\"social pull-right\">\r\n\t\t\t\t\t\t\t<div class=\"icons\"></div>\r\n\t\t\t\t\t\t\t<!-- /.icons -->\r\n\t\t\t\t\t\t</div>\r\n\t\t\t\t\t\t<!-- /.social -->\r\n\t\t\t\t\t\t<span class=\"go-to-top pull-right\"><a href=\"#page-top\" class=\"roll\">Go to top</a></span>\r\n\t\t\t\t\t</div>\r\n\t\t\t\t\t<!-- /.container -->\r\n\t\t\t\t</section>\r\n\t\t\t</div>\r\n\t\t</footer>\r\n\t</div>\r\n\t<!-- #page -->\r\n\r\n</body>\r\n</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /WEB-INF/views/BLfooter.jsp(79,11) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty loginId }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n\t\t\t\t\t\t\t\t\t\t\t<li id=\"menu-item-1722\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-1722\"><a href=\"joinView\">회원가입</a></li>\r\n\t\t\t\t\t\t\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f1.setParent(null);
    // /WEB-INF/views/BLfooter.jsp(82,11) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${not empty loginId }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n\t\t\t\t\t\t\t\t\t\t\t<li id=\"menu-item-1722\" class=\"menu-item menu-item-type-post_type menu-item-object-page menu-item-1722\"><a href=\"myPage\">마이페이지</a></li>\r\n\t\t\t\t\t\t\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    return false;
  }
}