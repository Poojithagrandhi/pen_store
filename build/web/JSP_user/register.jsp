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
                                            <li><a href="login.jsp"><i class="fa fa-user-o"></i> Login</a></li>
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
                                            <li class="active"><a href="../index.jsp">Home</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
                      <div class="row">
                          <div class="col-md-6 " style="margin-left: 350px">
                                        <div class="toggle-content text-center" id="tab1">
                                            <div class="card-header  bg-warning" ><font size="5">APPLY HERE</font></div>
        <div class="card-body">
            <table>
                <form action="" method="post" >
            
                  <div class="form-group">
                <tr >
                    <th>Name</th>
                    <td> <input type="text" class="form-control" name="name"  required="required"/></td></tr>
            </div>                 
                <div class="form-group">
                <tr >
                    <th>Email Id</th>
                    <td> <input type="text" class="form-control" name="em"  required="required"/></td></tr>
            </div>
            <div class="form-group">
                <tr>
                    <th>Phone</th>
                    <td><input type="text" class="form-control" name="ph"  required="required"/></td></tr>
            </div>
                <div class="form-group">
                <tr>
                    <th>Password</th>
                    <td><input type="password" class="form-control" name="pwd"  required="required"/></td></tr>
            </div>
                    <div class="form-group">
                <tr>
                    <th>Re-enter password</th>
                    <td><input type="password" class="form-control" name="pwd1"  required="required"/></td></tr>
            </div>
           <div class="form-group">
                    <tr style="column-span: 2;padding-left: 50px">
                        <td>
                            <input type="submit" value="REGISTER" class="btn btn-primary btn-block"/>
                        </td>
                    </tr>
                </div>
            </form>
            </table>
            <%
                if("post".equalsIgnoreCase(request.getMethod()))
            {
                
                String name=request.getParameter("name");
                String em=request.getParameter("em");
                String ph=request.getParameter("ph");
                String pwd=request.getParameter("pwd");
                String pwd1=request.getParameter("pwd1");
                
                connects co=new connects();
                Connection con=co.con();
                if(pwd.equals(pwd1))
                {
                PreparedStatement ps=con.prepareStatement("insert into register(name,email,phone,password) values(?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, em);
                ps.setString(3, ph);
                ps.setString(4, pwd);
                int x=ps.executeUpdate();
                PreparedStatement ps1=con.prepareStatement("insert into balance(name,balance) values(?,0)");
                ps1.setString(1, em);
                ps1.executeUpdate();
                if(x==0){
                    %>
                    <div class="alert alert-danger">
                        <strong>FAILED TO REGISTER</strong>
                    </div>
                    <%
                }
                else
                {
                    %>
                    <div class="alert alert-success">
                        <strong>SUCCESSFULLY REGISTERED</strong>
                    </div>
                    <%
                }
                }
                else
                {
                    %>
                    <div class="alert alert-danger">
                        <strong>RE-ENTER CORRECT PASSWORD</strong>
                    </div>
                    <%
                }
            }
                %>
        </div>
      </div>
                                    </div>
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
