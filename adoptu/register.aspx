<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="adoptu.register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Register Form Responsive Widget Template :: w3layouts</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Quick Register Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/half-slider.css" rel="stylesheet" />    

</head>
<body class="bg-dark">
    <form id="form1" runat="server">
            <div>
            <!-- Navigation -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">KSAA</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbarResponsive">
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="home.aspx">Home
                        <span class="sr-only">(current)</span>
                      </a>
                    </li>           
                    <li class="nav-item dropdown no-arrow mx-1">
                      <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       
                        <span class="badge badge-danger">Register Now</span>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="register.aspx">Adopter</a>
                        <a class="dropdown-item" href="donor.aspx">Donor</a>
                       <a class="dropdown-item" href="orphanageregister.aspx">Orphanage</a>
                 </li>    
                    <li class="nav-item">
                      <a class="nav-link" href="pdf/Regulation.pdf" target="_blank">Know More</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Contact.aspx">Contact</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">About</a>
                    </li>
            
                    <li class="nav-item">
                      <a class="nav-link" href="login.aspx">Login</a>
                    </li>

                  </ul>
                </div>
              </div>
            </nav>

            <div class="signupform">
            <h1>Register Form</h1>
	            <div class="container">		
		            <div class="agile_info">
			            <div class="w3_info">				           
						            
						            <div class="left margin">
							            <label>First Name</label>
							            <div class="input-group">
								            <span><i class="fa fa-user" aria-hidden="true"></i></span>
								            <asp:Textbox id="firstname" type="text" runat="server" placeholder="First Name" required=""> </asp:Textbox>
							            </div>
						            </div>
						            <div class="left">
							            <label>Last Name</label>
							            <div class="input-group">
								            <span><i class="fa fa-user" runat="server" aria-hidden="true"></i></span>
								            <asp:Textbox id="lastname" type="text" runat="server" placeholder="Last Name" required=""> </asp:Textbox>
							            </div>
						            </div>
						            <div class="left margin">
							            <label>Email Address</label>
							            <div class="input-group">
								            <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
								            <asp:Textbox id="email" type="email" runat="server" placeholder="Email" required=""> </asp:Textbox>
							            </div>
						            </div>
						            <div class="left">
							            <label>Phone Number</label>
							            <div class="input-group">
								            <span><i class="fa fa-phone" aria-hidden="true"></i></span>
								            <asp:Textbox type="text" size="10" ID="phone" MaxLength="10" runat="server" placeholder="Phone Number" required=""></asp:Textbox>
							            </div>
						            </div>
						            <div class="left margin">
							            <label>Password</label>
							            <div class="input-group">
								            <span><i class="fa fa-lock" aria-hidden="true"></i></span>
                                            <asp:TextBox ID="Password" type="password" runat="server" placeholder="Password" required=""></asp:TextBox>
							            </div>
						            </div>
                            <div class="left">
                                <label>Confirm Password</label>
                                <div class="input-group">
                                    <span><i class="fa fa-lock" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="Repassword" type="password" runat="server" placeholder="Confirm Password" required=""></asp:TextBox>
                                </div>
                            </div>
						            <div class="clear"></div>
							                  
							            <asp:Button class="btn btn-danger btn-block" runat="server" Text="Register Now" name="register" type="submit" OnClick="Register_Click"> </asp:Button>                
					            
			            </div>
			            <div class="w3l_form">
				            <div class="left_grid_info">
					            <h3>Already Registered?</h3>
					            <p> Go for Login.</p>
					            <a href="login.aspx" class="btn">Login <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				            </div>
			            </div>
			            <div class="clear"></div>
			            </div>
			
		            </div>                      

                <!-- Bootstrap core JavaScript -->
                <script src="vendor/jquery/jquery.min.js"></script>
                <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </div>
    </form>
</body>
</html>
