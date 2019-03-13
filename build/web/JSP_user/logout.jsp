<%-- 
    Document   : logout
    Created on : 7 Jan, 2019, 12:36:35 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession p=request.getSession();
            if(p!=null)
            {
                p.invalidate();
                response.sendRedirect("../index.jsp");
            }
            %>
    </body>
</html>
