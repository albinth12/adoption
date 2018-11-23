<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="adoptu.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Contact</title>

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
    <script type="text/javascript">
function myFunction() {
    alert("I am an alert box!");
    window.location.href = "home.aspx";
}
        </script>
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
            <li class="nav-item active">
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


        <div class="container">
  <div style="text-align:center">
    <h2>Contact Us</h2>
   
  </div>

  <div class="row">
    <div class="column">
      <img src="images\logopshd.jpg" style="width:100%" />
    </div>
    <div class="column">
      <form >
        <label for="fname">First Name</label>
        <asp:Textbox runat="server" type="text" ID="fname" name="firstname" placeholder="Your name.." ></asp:Textbox> 
        <label for="lname">Last Name</label>
        <asp:Textbox runat="server" type="text" ID="lname" name="lastname" placeholder="Your last name.."></asp:Textbox> 
       <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
          <input type="button" class="btn btn-primary btn-block cls " name="Submit" value="Submit" onclick="myFunction()" />
         
      </form>
    </div>
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

    </div>
    </form>
</body>
</html>
