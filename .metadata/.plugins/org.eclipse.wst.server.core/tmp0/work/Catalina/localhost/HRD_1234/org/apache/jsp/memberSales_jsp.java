/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.26
 * Generated at: 2022-02-15 08:06:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class memberSales_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Date");
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String id ="system";
	String pw ="1234";
	String sql;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, id, pw);
		sql = "select a.custno, a.custname, a.grade, sum(b.price) as total from member_tbl_02 a right join money_tbl_02 b on a.custno = b.custno group by a.custno, a.custname, a.grade order by total desc";
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery(sql);


      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>???????????? ??????</title>\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("\t* {margin:0; padding:0}\r\n");
      out.write("\tbody, html {width:100%}\r\n");
      out.write("\tul {list-style:none;}\r\n");
      out.write("\ta {text-decoration:none;}\r\n");
      out.write("\t.wrap {margin: 0 auto; width:1200px; clear:both;}\r\n");
      out.write("\tp {text-align:center}\r\n");
      out.write("\t\r\n");
      out.write("\t.hd {height:50px; width: 1200px; border-bottom:solid black 1px;}\r\n");
      out.write("\tnav {clear:both;}\r\n");
      out.write("\t.gnb {height: 24px; width: 1200px; margin:0 auto; text-align:center; border-bottom:solid black 1px;}\r\n");
      out.write("\t.gnb li { float:left; width:300px;}\r\n");
      out.write("\t.sec {width:100%; height:800px;}\r\n");
      out.write("\t.sec_wrap {margin:0 auto;}\r\n");
      out.write("\ttable {width:100%; height:100%; border:solid 1px black; border-collapse:none;}\r\n");
      out.write("\ttd {text-align:center;}\r\n");
      out.write("\t\r\n");
      out.write("\t.ft {clear:both; width:100%; height:120px; border-top:solid 1px black;}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("\t<header class=\"hd\">\r\n");
      out.write("\t<div class=\"hd_wrap\">\r\n");
      out.write("\t\t<p>????????? ???????????? ver 1.0</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</header>\r\n");
      out.write("\t<nav>\r\n");
      out.write("\t<ul class=\"gnb\">\r\n");
      out.write("\t\t<li><a href=\"register.jsp\">????????????</a></li>\r\n");
      out.write("\t\t<li><a href=\"memberList.jsp\">???????????? ??????/??????</a></li>\r\n");
      out.write("\t\t<li><a href=\"memberSales.jsp\">??????????????????</a></li>\r\n");
      out.write("\t\t<li><a href=\"index.jsp\">?????????</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t</nav>\r\n");
      out.write("\t<section class=\"sec\">\r\n");
      out.write("\t\t<div class=\"sec_wrap\">\r\n");
      out.write("\t\t<h1>???????????? ??????</h1>\r\n");
      out.write("\t\t\t<form action=\"registerPro.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t<thead>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th>????????????</th>\r\n");
      out.write("\t\t\t\t\t\t<th>????????????</th>\r\n");
      out.write("\t\t\t\t\t\t<th>????????????</th>\r\n");
      out.write("\t\t\t\t\t\t<th>??????</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t\t<tbody>\r\n");

			while(rs.next()) {
			int custno = rs.getInt("custno");
			String custname = rs.getString("custname");
			String grade = rs.getString("grade");
			int total = rs.getInt("total");
			if(grade.equals("A")) {
				grade="VIP";
			} else if(grade.equals("B")) {
				grade = "??????";
			} else {
				grade = "??????";
			}

      out.write("\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(custno );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(custname );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(grade );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(total );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");

		}
			rs.close();
			stmt.close();
			conn.close();
	} catch(Exception e) {
		e.printStackTrace();
		out.println("????????? ??????");
	}

      out.write("\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</section>\r\n");
      out.write("\t<footer class=\"ft\">\r\n");
      out.write("\t\t<div class=\"ft_wrap\">\r\n");
      out.write("\t\t\t<p>All right Reserved.</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
}
