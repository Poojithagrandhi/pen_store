<%-- 
    Document   : delete
    Created on : 20 Jan, 2019, 12:09:45 PM
    Author     : pooji
--%>

<%@page import="main.connects"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String em=(String) session.getAttribute("email");
            String no=request.getParameter("msg");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("delete from cart where item=? and name=?");
            ps.setString(1, no);
            ps.setString(2, em);
            int x=ps.executeUpdate();
            if(x>0)
            {
                response.sendRedirect("cart1.jsp");
            }
            %>
    </body>
</html>
