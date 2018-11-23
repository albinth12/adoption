<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Odonation.aspx.cs" Inherits="adoptu.Odonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Donor Register</title>

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
              <a class="nav-link active dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <span class="badge badge-danger">Register Now</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                <a class="dropdown-item" href="register.aspx">Adopter</a>
                <a class="dropdown-item" href="#">Donor</a>
               <a class="dropdown-item" href="#">Orphanage</a>
              </div>
         </li>    
            <li class="nav-item">
              <a class="nav-link" href="pdf/Regulation.pdf">Know More</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
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
    </div>
        <br />
        <br />
       <div class="container px-5">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Donation</div>
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
                     <label for="email">Email</label>
                    <asp:Textbox AutoCompleteType="Email"  ID="email"  class="form-control" runat="server" placeholder="email" required="required" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>
                 


                 <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">     
                      <br />                 
                       <label for="phoneno">Phone</label>
                    <input type="text" id="phone" class="form-control" placeholder="phoneno" required="required" autofocus="autofocus"  maxlength="10" size="10">                   
                  </div>
                </div>                              
                                    
                       <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="address">Address</label>
                    <asp:Textbox AutoCompleteType="BusinessStreetAddress"  type="text" runat="server" ID="address" class="form-control" placeholder="Address" required="required" autofocus="autofocus" >     </asp:Textbox>         
                  </div>
                </div>
                
                    <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="district">State</label>
                    <asp:Textbox type="text" ID="state"  runat="server" CssClass="form-control" placeholder="state" required="required" autofocus="autofocus" > </asp:Textbox>                   
                  </div>
                </div>

                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="district">District</label>
                    <asp:Textbox type="text" ID="district"  runat="server" CssClass="form-control" placeholder="district" required="required" autofocus="autofocus" > </asp:Textbox>                   
                  </div>
                </div>


                  <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="pin">Pin</label>
                    <asp:Textbox type="text" ID="pin" runat="server"  class="form-control" placeholder="Pin" required="required" autofocus="autofocus" > </asp:Textbox>                  
                  </div>
                </div>                
                 

                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="aadhar">Aadhar</label>
                      <asp:TextBox type="text" ID="aadhar" runat="server" size="12" class="form-control" placeholder="aadhar" required="required" autofocus="autofocus"> </asp:TextBox>                   
                  </div>
                </div>
                  <br />
                  <div class="col-md-6 col-sm-12">
                     <div class="form-label-group">
                          <br />
                         <label for="oid">Orphanege</label>                         
                          <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="oName" DataValueField="oName">
                              <asp:ListItem Value="SELECT" Selected="True"></asp:ListItem>
                          </asp:DropDownList>
                          <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:dbconnect %>' SelectCommand="SELECT [oName] FROM [Orphanagereg]"></asp:SqlDataSource>
                      </div>
                  </div>

                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="oid">Amount</label>
                      <asp:TextBox ID="amount" type="text" runat="server" CssClass="form-control"  required="required"  autofocus="autofocus"></asp:TextBox>            

                  </div>
                </div>
                 
                </div>   
              </div>

            <div class="w-100 text-center">
                <asp:Button ID="donr" class="btn btn-primary " Text="Register" runat="server" OnClick="donr_Click"/>
            </div>
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
        
    </form>   
           
   
</body>
</html>