<%-- 
    Document   : delete
    Created on : 6 Jan, 2019, 8:25:59 PM
    Author     : pooji
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <%
            String ino=request.getParameter("msg");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("delete from item where itemno=?");
            PreparedStatement ps1=con.prepareStatement("delete from description where itemno=?");
            ps.setString(1, ino);
            ps1.setString(1, ino);
            int x=ps.executeUpdate();
            int y=ps1.executeUpdate();
            if(x>0 || y>0)
            {
                response.sendRedirect("view.jsp");
            }
            %>
    </body>
</html>
