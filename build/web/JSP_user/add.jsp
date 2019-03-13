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
                                            <li><a href="buy.jsp?msg=<%= request.getParameter("msg") %>"><i class="fa fa-user-md"></i> Buy Product</a></li>
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
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
                        
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
                <div class="container" style="margin-left: 350px">
      <div class="col-md-6 ">
          <div class="card-header bg-warning" style="padding: 10px">USER LOGIN</div>
        <div class="card-body">
                            
                         
                                <div class="toggle-content text-center" id="tab1">
                                    <table>
                                          <form action="" method="post" >
                                          <div class="form-group">
                                            <div class="form-label-group">
                                                <tr> <th>ENTER AMOUNT&nbsp;</th><td> <input type="number"  class="form-control" placeholder="enter amount" name='amt' required="required" autofocus="autofocus"></td></tr>
                                             
                                            </div>
                                          </div>
                                          
                                              <tr><td><input type="submit" class="btn btn-primary btn-block" value="ADD"/></td></tr>
                                            
                                        </form>
                                    </table>
                                    <%
                String em=(String)session.getAttribute("email");
                if(em==null)
                {
                    response.sendRedirect("logout.jsp");
                }
                %>

                                        <%
                                            if(request.getMethod().equalsIgnoreCase("post"))
                                            {
                                            String amt=request.getParameter("amt");
                                            
                                            connects co=new connects();
                                            Connection con=co.con();
                                            PreparedStatement ps1=con.prepareStatement("select balance from balance");
                                            ResultSet rs1=ps1.executeQuery();
                                            String bal="";
                                            while(rs1.next())
                                            {
                                               bal=Integer.toString(Integer.parseInt(rs1.getString("balance"))+Integer.parseInt(amt));
                                            }
                                            
                                            PreparedStatement ps=con.prepareStatement("update balance set balance =? where name=?");
                                            ps.setString(1, bal);
                                            ps.setString(2, em);
                                            int y=ps.executeUpdate();
                                            if(y==0)
                                            {
                                                %>
                                                <div class="alert alert-danger">
                                                    <strong>FAILED TO ADD MONEY</strong>
                                                </div>
                                                    <%
                                            }
                                            else
                                            {
                                                %>
                                                <div class="alert alert-success">
                                                    <strong>SUCCESSFULLY ADDED MONEY</strong>
                                                </div>
                                                    <%
                                            }
                                            }
                                            %>
                                      </div>
                                    </div>
                                  </div>

                                </div>

                         <!-- /.row -->
              
          

          

          <!-- Area Chart Example-->
         
     

		<!-- SECTION -->
		
					<!-- Products tab & slick -->
				
				<!-- /row -->
			
			<!-- /container -->
		
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		
		<!-- SECTION -->
		
		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
								<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>We are experts in delivering the pens of your choice</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>Bangalore</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+9998887771</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>penstore25@gmail.com</a></li>
								</ul>
							</div>
						</div>
                                            <div style="margin-left: 400px">
                                                <img src="../img/ch.png" />
                                            </div>
		
                                            	
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
                <script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/slick.min.js"></script>
		<script src="../js/nouislider.min.js"></script>
		<script src="../js/jquery.zoom.min.js"></script>
		<script src="../js/main.js"></script>

	</body>
</html>
