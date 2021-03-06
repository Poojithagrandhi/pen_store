<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                 <title>The Pen Store</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css"/>

		<!-- Slick -->
                <link type="text/css" rel="stylesheet" href="../css/slick.css"/>
                <link type="text/css" rel="stylesheet" href="../css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="../css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="../css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="../css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +9998887776</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> penstore@gmail.com</a></li>
						
					</ul>
					<ul class="header-links pull-right">
                                            <li><a href="logout.jsp"><i class="fa fa-user-o"></i> Logout</a></li>
					</ul>
                                    <ul class="header-links pull-right" style="margin-right: 10px">
                                        <li><a href="cart.jsp"><i class="fa fa-cart-plus"></i> Cart</a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div>
			
                                                            
								<ul class="header-links pull-left">
                                                                    <li><img src="../img/logo.jpg" height="100px"/></li>
                                                                    <li><img src="../img/logo.png"/></li>
						
					</ul>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
                                            <li class="active"><a href="main.jsp">Home</a></li>
                                            <li><a href="rear_a.jsp">The Rare</a></li>
                                            <li><a href="kids_a.jsp">Kids</a></li>
                                            <li><a href="ball_a.jsp">Ball Pen</a></li>
                                            <li><a href="gel_a.jsp">Gel Pens</a></li>
                                            <li><a href="spy_a.jsp">Spy Pens</a></li>
                                            <li><a href="fountain_a.jsp">Fountain Pens</a></li>
                                            <li><a href="calligraphy_a.jsp">Calligraphy Pens</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
        <center>
		<!-- /NAVIGATION -->
<%
                String em=(String)session.getAttribute("email");
                if(em==null)
                {
                    response.sendRedirect("logout.jsp");
                }
                %>
	
 <%
            String msg=request.getParameter("msg");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps2=con.prepareStatement("select * from item where itemno=? ");
            ps2.setString(1, msg);
            ResultSet rs2= ps2.executeQuery();
            
            while(rs2.next())
            {
                String ft=rs2.getString("fileType");
                                            PreparedStatement ps1=con.prepareStatement("select balance from balance");
                                            ResultSet rs1=ps1.executeQuery();
                                            String bal="";
                                            while(rs1.next())
                                            {
                                               bal=Integer.toString(Integer.parseInt(rs1.getString("balance"))-Integer.parseInt(rs2.getString("price")));
                                            }
                                            %>
                                             <div class="product-img">
                                    <%
                                        if(ft.equals("image/jpg") ||ft.equals("image/jpeg") || ft.equals("image/png"))
                                                                                       {
                                    %>
                                    <center> 
                                        <img src="../dispImage?msg=<%=rs2.getString("id")%>"  height="200" width="200"/>
                                    </center>
                                </div>
                                        <%  
                                            PreparedStatement ps=con.prepareStatement("update balance set balance =? where name=?");
                                            ps.setString(1, bal);
                                            ps.setString(2, em);
                                            int y=ps.executeUpdate();
                                            if(y==0)
                                            {
                                                %>
                                                <div class="alert alert-danger">
                                                    <strong>FAILED TO PLACE ORDER</strong>
                                                </div>
                                                    <%
                                            }
                                            else
                                            {
                                                %>
                                                <div class="alert alert-success">
                                                    <strong>SUCCESSFULLY PLACED YOUR ORDER. YOU WILL SHORTLY RECEIVE YOUR ORDER</strong>
                                                </div>
                                                    <%
                                            }
            }                          
            }
            %>
    
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		
		<!-- SECTION -->
		
		<!-- NEWSLETTER -->
		<!-- jQuery Plugins -->
		<script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/slick.min.js"></script>
		<script src="../js/nouislider.min.js"></script>
		<script src="../js/jquery.zoom.min.js"></script>
		<script src="../js/main.js"></script>

	</body>
</html>
