<%@ Page Title="About Us" Language="C#" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="adoptu.About" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>About</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/half-slider.css" rel="stylesheet" />
    <link href="css/contact.css" rel="stylesheet" />

    <!--style-->

    <style  type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
      }

.bs-example {
  margin: 20px;
} 
.footer {
position: fixed;
left: 0;
bottom: 0;
width: 100%;
background-color:white;
color: black;
text-align: center;    
    }

 .Container {
    width: 90%;
    min-width: 500px;
    margin: auto;
}
 </style>    
</head>
<body>
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
              </div>
         </li>    
            <li class="nav-item">
              <a class="nav-link" href="pdf/Regulation.pdf" target="_blank">Know More</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="Contact.aspx">Contact</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">About</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="login.aspx">Login</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>


        <div class="container">
  <div style="text-align:center">
      <br />
      <br />
    <h4>About</h4>
      <br />
      <div align="center">
      <b><p>Kerala State Adoption Authority an organization for adoption of childs.
          KSAA is undertaken by Kerala Government.People can adopt child in an easy way without any lags.<br /><br />

         </p></b>
          <br />
          <br />
          <br />
         
      <b><h5>For More Information Contact Us</h5></b>
          <b>Phone No:8086859202<br />
              Email:ksaakerala@gmail.com
          </b>
    </div>
  </div>

               <!-- Sticky Footer -->

                <div class="footer">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Kerala State Adoption Authority</span>
                    </div>
                </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
            </form>
    </body>
</html>

