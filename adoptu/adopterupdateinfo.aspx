<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adopterupdateinfo.aspx.cs" Inherits="adoptu.adopterupdateinfo" %>

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
        <div id="wrapper" class="Container">

        <br />
        <br />
       <div class="container px-5 ">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Add Details</div>
        <div class="card-body px-5 ">
          
            <div class="form-group ">
              <div class="form-row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">                     
                     <label for="address">Address</label>
                    <asp:Textbox AutoCompleteType="BusinessStreetAddress"  type="text" runat="server" ID="address" class="form-control" placeholder="Address" required="required" autofocus="autofocus" >     </asp:Textbox>         
                  </div>
                </div>    

                    <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">                      
                     <label for="pin">Partner Name</label>
                    <asp:Textbox type="text" ID="partner" runat="server"  class="form-control" placeholder="partner" required="required" autofocus="autofocus" > </asp:Textbox>                  
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
                    <asp:Textbox AutoCompleteType="DisplayName" runat="server" type="text" ID="district" class="form-control" placeholder="district" required="required" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>               
                             
                 <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="gender">Gender</label>
                        <asp:RadioButtonList ID="gender" runat="server" RepeatLayout="Table"><asp:ListItem Text="Male" Value="Male" /> <asp:ListItem Text="Female" Value="Female" />                                                     
                        </asp:RadioButtonList>
                  </div>
                </div>
            
                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                      <label for="Name">Profile Photo</label>
                    <asp:FileUpload ID="fileupload2" runat="server" class="form-control" placeholder="upload passbook " />
                         <asp:RequiredFieldValidator runat="server" ForeColor="Red"  Display="Dynamic" ErrorMessage="Please choose a photo " ControlToValidate="fileupload2"></asp:RequiredFieldValidator>
                 </div>
                </div> 
                                    

                 <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">    
                      <br />                                     
                       <label for="marriage">Marriage Status</label>
                    <asp:Textbox  runat="server" type="text" ID="mgestts" class="form-control" placeholder="phoneno" required="required" autofocus="autofocus"  maxlength="10" size="10"> </asp:Textbox>           
                  </div>
                </div>    
                  
                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                      <label for="Name">Marriage Certificate</label>
                    <asp:FileUpload ID="fileupload1" runat="server" class="form-control"  />
                 </div>
                </div>                            
                   
                               
                                            
                 

                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="aadhar">Aadhar No</label>
                      <asp:TextBox type="text" ID="aadhar" runat="server" size="12" class="form-control" placeholder="aadhar" required="required" autofocus="autofocus"> </asp:TextBox>                   
                  </div>
                </div>

             <div class="col-md-6 col-sm-12">
                <div class="form-label-group">
                      <br />
                      <label for="Name">Aadhar</label>
                    <asp:FileUpload ID="fileupload3" runat="server" class="form-control" placeholder="upload passbook " />
                         <asp:RequiredFieldValidator runat="server" ForeColor="Red"  Display="Dynamic" ErrorMessage="Please choose aadhar copy " ControlToValidate="fileupload2"></asp:RequiredFieldValidator>
                 </div>
             </div>  


            <div class="w-100 text-center">
                <br />
                <asp:Button ID="update" class="btn btn-primary " Text="Update" runat="server" OnClick="update_Click" />

            </div>
            </div>  
          </div>
                           
       </div>

        </div>
          <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        
    </div>
</div>
        
    </form>
</body>
</html>
