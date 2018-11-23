<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="adoptu.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Kerala State Adoption Authority</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/half-slider.css" rel="stylesheet" />
    <style>
        .divs
        {
            height: 100px;
            width: 500px;           
         }        
    </style>
</head>
 <body class="page-top">
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
            <li class="nav-item">
              <a class="nav-link" href="home.aspx">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>           
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <span class="badge badge-danger">Register Now</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                <a class="dropdown-item" href="register.aspx">Adopter</a>
                <a class="dropdown-item" href="donor.aspx">Donor</a>
               <a class="dropdown-item" href="orphanageregister.aspx">Orphanage</a>
         </li>    
            <li class="nav-item">
              <a class="nav-link" href="pdf/Regulation.pdf">Know More</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Contact.aspx">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About.aspx">About</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link active" href="login.aspx">Login</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
    </div>

         <br />
         <br />
    <!--login-->

    <div class="container divs">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">          
            <div class="form-group">
              <div class="form-label-group">
                
                <label for="inputEmail">User Id</label>
                <asp:Textbox type="text" id="username" class="form-control" runat="server" placeholder="user id" required="required" autofocus="autofocus" ></asp:Textbox>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
              <label for="inputPassword">Password</label>
                <asp:Textbox type="password" id="Password" class="form-control"  runat="server" placeholder="Password" required="required" autofocus="autofocus"></asp:Textbox>
                
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>    
            <asp:Button class="btn btn-primary btn-block" id="button1" text="Login" name="Login" type="submit" runat="server" onClick="Login_Click"/>                               
          <div class="text-center">            
            <a class="d-block small" href="frgtpswd.aspx">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>  

    <!-- Bootstrap core JavaScript-->
    <script type="text/jscript" src="vendor/jquery/jquery.min.js"></script>
    <script type="text/jscript" src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script type="text/jscript" src="vendor/jquery-easing/jquery.easing.min.js"></script>
    </form>
    </div>
  </body>
</html>
