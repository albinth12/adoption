<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frgtpswd.aspx.cs" Inherits="adoptu.frgtpswd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .cls{

    position: inherit;
            } 
    </style>

</head>
<body class="page-top">
    <form id="form1" runat="server">
    <div>         
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
              <a class="nav-link" href="pdf/Regulation.pdf" target="_blank">Know More</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Contact.aspx">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="About.aspx">About</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="login.aspx">Login</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
    </div>

   <br />

   <div class="container divs">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Reset Password</div>
        <div class="card-body">
          <div class="text-center mb-4">
            <h4>Forgot your password?</h4>
            <p>Enter your user id and we will send you OTP to reset your password.</p>
          </div>
          <form class="form">
            <div class="form-group">
              <div class="form-label-group">
               <label for="inputUid">Enter user id</label>
                <input type="text" id="inputUid" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus" />
               
                 </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
               <label for="inputEmail">Enter email</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus" />
               
              </div> 
                </div>
               <div class="form-group">
               <div class="form-label-group">              
                    <button class="btn btn-primary btn-block cls " style="" >Reset Password</button>              
                </div>
                 </div>
          </form>
          <div class="text-center">           
            <a class="d-block small" href="login.aspx">Login Page</a>
          </div>
        </div>
      </div>
    </div>

     <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    </form>
</body>
</html>
