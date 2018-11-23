<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Oaddmember.aspx.cs" Inherits="adoptu.Oaddmember" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Donor Registration</title>

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
        .mkbutton{
        position: relative;
    top: 0;
    width: auto;
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
       <div>
     <!-- Navigation -->
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="home.aspx">KSAA</a>     
       

      <!-- Navbar Search -->
         <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
                  
        </div>
      </form>
     
      <!-- Navbar -->
      
      <ul class="navbar-nav ml-auto ml-md-0">
       
        
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
         <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">            
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>    
    </nav>
    </div>
        <br />
        <br />
       <div class="container px-5">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Child Registration</div>
        <div class="card-body px-5 ">
          
            <div class="form-group ">
              <div class="form-row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <label for="Name">Name</label>
                    <asp:Textbox AutoCompleteType="DisplayName" runat="server" type="text" ID="name" class="form-control" placeholder=" name" required="required" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>               
                             
                 <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                     <label for="email">Study In</label>
                    <asp:Textbox type="text"  ID="study"  class="form-control" runat="server" placeholder="class" required="required" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>
                 
                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="age">Age</label>
                    <asp:Textbox   type="text" runat="server" ID="age" class="form-control" placeholder="age" required="required" autofocus="autofocus" >     </asp:Textbox>         
                  </div>
                </div>
                            
                            
                    <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="district">aadhar</label>
                    <asp:Textbox type="text" ID="aadhar"  runat="server" CssClass="form-control" placeholder="aadhar" required="required" autofocus="autofocus" > </asp:Textbox>                   
                  </div>
                </div>


                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="gender">Gender</label>
                    <asp:Textbox type="text" ID="gender"  runat="server" CssClass="form-control" placeholder="gender" required="required" autofocus="autofocus" > </asp:Textbox>                   
                  </div>
                </div>


                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="dob">Date of Birth</label>
                      <asp:TextBox ID="dob" type="text" runat="server" CssClass="form-control" placeholder="yyyy-mm-dd" required="required"  autofocus="autofocus"></asp:TextBox>            

                  </div>
                </div>
                 
                </div>   
              </div>

            <div class="w-100 text-center">
                <asp:Button ID="register" class="btn btn-primary " Text="Register" runat="server" OnClick="register_Click" />
            </div>
            </div>  
          </div>
                           
       </div>

       
          
       <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>            
          </div>
          <div class="modal-body align-content-around">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">             
            <button class="btn btn-secondary mkbutton" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary mkbutton" href="home.aspx">Logout</a>
          </div>
        </div>
      </div>
    </div>


          <!-- Sticky Footer -->

                <div class="footer">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Kerala State Adoption Authority</span>
                    </div>
                </div>

          <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
     
       </div>
    </form>   
</html>
