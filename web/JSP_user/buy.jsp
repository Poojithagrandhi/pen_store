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
	
		<!-- SECTION -->
                                <div class="breadcrumb " style="margin-left: 30">
                                    <button class="btn-xs"><a href="add.jsp?msg=<%= request.getParameter("msg") %>">ADD MONEY</a></button>
                                </div>
                    <%
                 connects co=new connects();
                 Connection con=co.con();
                 PreparedStatement ps1=con.prepareStatement("select balance from balance where name=?");
                 ps1.setString(1, em);
                 ResultSet rs1=ps1.executeQuery();
                 while(rs1.next())
                 {
                     %>
                     <h2>Available balance in your account is $<%= rs1.getString("balance") %> </h2>
                     <%
                 }
                String str="select * from item where itemno=?";
                String msg= request.getParameter("msg");
                PreparedStatement ps=con.prepareStatement(str);
                ps.setString(1,msg);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {                                                    
                    String ft=rs.getString("fileType");
                    %>
                    <div class="product col-md-3" style="margin-left: 400px">
                                <div class="product-img">
                                    <%
                                        if(ft.equals("image/jpg") ||ft.equals("image/jpeg") || ft.equals("image/png"))
                                                                                       {
                                    %>
                                    <center> 
                                        <img src="../dispImage?msg=<%=rs.getString("id")%>"  height="200" width="200"/>
                                    </center>
                                </div>
                                    <%
                                                                                       }
                                    %>
                    <div class="product-body">
			
                        <h3 class="product-name"><a href="#"><%= rs.getString("name") %></a></h3>
				<h4 class="product-price">$<%= rs.getString("price") %></h4>
				</div>
                                
		                    </div>
                                
                                </center>

        <div class="col-md-4" style="margin-top: 50px">
       
                <h4>ENTER ADDRESS</h4>
                <textarea name="adr" required="true" style="width: 300px;height: 200px"></textarea><br>
                <button><a href="buyf.jsp?msg=<%= rs.getString("itemno") %>">BUY</a></button>
        </div>		
                                     <%
                                                                           }
                                        %>
                                                                                        <!-- Products tab & slick -->
                    
                
                </div>

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
