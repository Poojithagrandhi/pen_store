<%-- 
    Document   : cart
    Created on : 7 Jan, 2019, 12:37:06 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String m=request.getParameter("m");
            String em=(String)session.getAttribute("email");
            String it=request.getParameter("msg");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("insert into cart(item,name) values(?,?)");
            ps.setString(1, it);
            ps.setString(2, em);
            int x=ps.executeUpdate();
           
                response.sendRedirect("cart1.jsp");
            
            %>
    </body>
</html>
