package org.apache.jsp.JSP_005fadmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import main.connects;

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("                 <title>The Pen Store</title>\n");
      out.write("\n");
      out.write("\t\t<!-- Google font -->\n");
      out.write("\t\t<link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,500,700\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\t\t<!-- Bootstrap -->\n");
      out.write("                <link type=\"text/css\" rel=\"stylesheet\" href=\"../css/bootstrap.min.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- Slick -->\n");
      out.write("                <link type=\"text/css\" rel=\"stylesheet\" href=\"../css/slick.css\"/>\n");
      out.write("\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"../css/slick-theme.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- nouislider -->\n");
      out.write("                <link type=\"text/css\" rel=\"stylesheet\" href=\"../css/nouislider.min.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- Font Awesome Icon -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"../css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("\t\t<!-- Custom stlylesheet -->\n");
      out.write("\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"../css/style.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("\t\t<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("\t\t<!--[if lt IE 9]>\n");
      out.write("\t\t  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("\t\t  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\t<body>\n");
      out.write("\t\t<!-- HEADER -->\n");
      out.write("\t\t<header>\n");
      out.write("\t\t\t<!-- TOP HEADER -->\n");
      out.write("\t\t\t<div id=\"top-header\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<ul class=\"header-links pull-left\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-phone\"></i> +9998887776</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-envelope-o\"></i> penstore@gmail.com</a></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- /TOP HEADER -->\n");
      out.write("\n");
      out.write("\t\t\t<!-- MAIN HEADER -->\n");
      out.write("\t\t\t<div id=\"header\">\n");
      out.write("\t\t\t\t<!-- container -->\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<!-- row -->\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<!-- LOGO -->\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"header-links pull-left\">\n");
      out.write("                                                                    <li><img src=\"../img/logo.jpg\" height=\"100px\"/></li>\n");
      out.write("                                                                    <li><img src=\"../img/logo.png\"/></li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /LOGO -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- SEARCH BAR -->\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<!-- /SEARCH BAR -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- ACCOUNT -->\n");
      out.write("\t\t\t\t\t\t\t\t<!-- /Cart -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Menu Toogle -->\n");
      out.write("\t\t\t\t\t\t\t\t<!-- /Menu Toogle -->\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /ACCOUNT -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- row -->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- container -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- /MAIN HEADER -->\n");
      out.write("\t\t</header>\n");
      out.write("\t\t<!-- /HEADER -->\n");
      out.write("\n");
      out.write("\t\t<!-- NAVIGATION -->\n");
      out.write("\t\t<nav id=\"navigation\">\n");
      out.write("\t\t\t<!-- container -->\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<!-- responsive-nav -->\n");
      out.write("\t\t\t\t<div id=\"responsive-nav\">\n");
      out.write("\t\t\t\t\t<!-- NAV -->\n");
      out.write("\t\t\t\t\t<!-- /NAV -->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /responsive-nav -->\n");
      out.write("\t\t\t</div>\n");
      out.write("                        \n");
      out.write("\t\t\t<!-- /container -->\n");
      out.write("\t\t</nav>\n");
      out.write("\t\t<!-- /NAVIGATION -->\n");
      out.write("                <div class=\"container\" style=\"margin-left: 350px\">\n");
      out.write("      <div class=\"col-md-6 \">\n");
      out.write("          <div class=\"card-header bg-warning\" style=\"padding: 10px\">ADMIN LOGIN</div>\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("                            \n");
      out.write("                         \n");
      out.write("                                <div class=\"toggle-content text-center\" id=\"tab1\">\n");
      out.write("                                    <table>\n");
      out.write("                                          <form action=\"\" method=\"post\" >\n");
      out.write("                                          <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr> <th>USERNAME:&nbsp;</th><td> <input type=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Username\" name='uname' required=\"required\" autofocus=\"autofocus\"></td></tr>\n");
      out.write("                                             \n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("                                          <div class=\"form-group\">\n");
      out.write("                                            <div class=\"form-label-group\">\n");
      out.write("                                                <tr><th> PASSWORD:&nbsp;</th>\n");
      out.write("                                                    <td><input type=\"password\" id=\"inputPassword\" class=\"form-control\" name='pwd' placeholder=\"Password\" required=\"required\"></td></tr>\n");
      out.write("                                          \n");
      out.write("                                            </div>\n");
      out.write("                                          </div>\n");
      out.write("                                          \n");
      out.write("                                              <tr><td><input type=\"submit\" class=\"btn btn-primary btn-block\" value=\"Login\"/></td></tr>\n");
      out.write("                                            \n");
      out.write("                                        </form>\n");
      out.write("                                    </table>\n");
      out.write("                                        ");

                                            if(request.getMethod().equalsIgnoreCase("post"))
                                            {
                                            String uname=request.getParameter("uname");
                                            String pwd=request.getParameter("pwd");
                                            session.setAttribute("admin", uname);
                                            if(uname.equals("admin@gmail.com"))
                                            {
                                                if(pwd.equals("admin"))
                                                {
                                                    response.sendRedirect("main.jsp");
                                                }
                                                else
                                                {
                                                    
      out.write("\n");
      out.write("                                                    <div class=\"alert-danger\">\n");
      out.write("                                                        ENTER PROPER PASSWORD\n");
      out.write("                                                    </div>\n");
      out.write("                                                    ");

                                                }
                                                    
                                            }
                                            else
                                            {
                                                    
      out.write("\n");
      out.write("                                                    <div class=\"alert-danger\">\n");
      out.write("                                                        ENTER PROPER EMAIL ID\n");
      out.write("                                                    </div>\n");
      out.write("                                                    ");

                                            }
                                            }
                                            
      out.write("\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                                  </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                         <!-- /.row -->\n");
      out.write("              \n");
      out.write("          \n");
      out.write("\n");
      out.write("          \n");
      out.write("\n");
      out.write("          <!-- Area Chart Example-->\n");
      out.write("         \n");
      out.write("     \n");
      out.write("\n");
      out.write("\t\t<!-- SECTION -->\n");
      out.write("\t\t\n");
      out.write("\t\t\t\t\t<!-- Products tab & slick -->\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<!-- /row -->\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<!-- /container -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- /SECTION -->\n");
      out.write("\n");
      out.write("\t\t<!-- HOT DEAL SECTION -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- SECTION -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- NEWSLETTER -->\n");
      out.write("\t\t<div id=\"newsletter\" class=\"section\">\n");
      out.write("\t\t\t<!-- container -->\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<!-- row -->\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-12\">\n");
      out.write("\t\t\t\t\t\t<div class=\"newsletter\">\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"newsletter-follow\">\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-instagram\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /row -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- /container -->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /NEWSLETTER -->\n");
      out.write("\n");
      out.write("\t\t<!-- FOOTER -->\n");
      out.write("\t\t<footer id=\"footer\">\n");
      out.write("\t\t\t<!-- top footer -->\n");
      out.write("\t\t\t<div class=\"section\">\n");
      out.write("\t\t\t\t<!-- container -->\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<!-- row -->\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 col-xs-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer\">\n");
      out.write("\t\t\t\t\t\t\t\t<h3 class=\"footer-title\">About Us</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<p>We are experts in delivering the pens of your choice</p>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"footer-links\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-map-marker\"></i>Bangalore</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-phone\"></i>+9998887771</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-envelope-o\"></i>penstore25@gmail.com</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                            <div style=\"margin-left: 400px\">\n");
      out.write("                                                <img src=\"../img/ch.png\" />\n");
      out.write("                                            </div>\n");
      out.write("\t\t\n");
      out.write("                                            \t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- /row -->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- /container -->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- /top footer -->\n");
      out.write("\n");
      out.write("\t\t\t<!-- bottom footer -->\n");
      out.write("\t\t\t<!-- /bottom footer -->\n");
      out.write("\t\t</footer>\n");
      out.write("\t\t<!-- /FOOTER -->\n");
      out.write("\n");
      out.write("\t\t<!-- jQuery Plugins -->\n");
      out.write("                <script src=\"../js/jquery.min.js\"></script>\n");
      out.write("\t\t<script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("\t\t<script src=\"../js/slick.min.js\"></script>\n");
      out.write("\t\t<script src=\"../js/nouislider.min.js\"></script>\n");
      out.write("\t\t<script src=\"../js/jquery.zoom.min.js\"></script>\n");
      out.write("\t\t<script src=\"../js/main.js\"></script>\n");
      out.write("\n");
      out.write("\t</body>\n");
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
