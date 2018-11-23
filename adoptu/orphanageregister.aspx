<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orphanageregister.aspx.cs" Inherits="adoptu.orphanageregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title> Orphanage Registration</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <a href="orphanageregister.aspx">orphanageregister.aspx</a>
    <link href="css/half-slider.css" rel="stylesheet" />

     <style>
        .divs
        {
            height: 100px;
            width: 500px;           
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
                <a class="dropdown-item" href="donor.aspx">Donor</a>
               <a class="dropdown-item" href="orphanageregister.aspx">Orphanage</a>
              </div>
         </li>    
            <li class="nav-item">
              <a class="nav-link" href="pdf/Regulation.pdf">Know More</a>
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
    </div>

        <br />
        <br />

       <div class="container px-5 ">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Orphanage Registration</div>
        <div class="card-body px-5 ">
          
            <div class="form-group ">
              <div class="form-row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <label for="Name">Orphanage Name</label>
                    <asp:Textbox AutoCompleteType="DisplayName" runat="server" type="text" ID="name" class="form-control" placeholder=" orphanage name" required="required" autofocus="autofocus" >   </asp:Textbox>                 
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
                    <asp:Textbox type="text"  ID="phone" runat="server" class="form-control" placeholder="phoneno" required="required" autofocus="autofocus" maxlength="10"></asp:Textbox>     
                  </div>
             </div>                              
                                    
             <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="address">Address</label>
                    <asp:Textbox AutoCompleteType="BusinessStreetAddress"  TextMode="multiline" Columns="1" type="text" runat="server" ID="address" class="form-control" placeholder="Address" required="required" autofocus="autofocus" >     </asp:Textbox>         
                  </div>
             </div>   
                  
                   <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="state">State</label>
                    <asp:Textbox AutoCompleteType="BusinessStreetAddress"  type="text" runat="server" ID="state" class="form-control" placeholder="state" required="required" autofocus="autofocus" >     </asp:Textbox>         
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
                    <asp:Textbox type="text"  size="6"  MaxLength="6" ID="pin" runat="server"  class="form-control" placeholder="Pin" required="required" autofocus="autofocus" > </asp:Textbox>                  
                  </div>
             </div>   
                  
                  
            <div class="col-md-6 col-sm-12">
             <div class="form-label-group">
                      <br />
                     <label for="head">Head of Orphanage</label>
                    <asp:Textbox type="text" ID="head" runat="server"  class="form-control" placeholder="name" required="required" autofocus="autofocus" > </asp:Textbox>                  
             </div>
          </div> 

             

             <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="aadharhead">Aadhar No</label>
                    <asp:Textbox type="text" ID="headaadhar" Columns="2" MaxLength="12" runat="server"  class="form-control" placeholder="aadhar" required="required" autofocus="autofocus" > </asp:Textbox>                  
                  </div>
             </div>                            
                               
             <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="bank">Bank Name</label>
                    <asp:Textbox type="text" ID="bankname" runat="server"  class="form-control" placeholder="bank name" required="required" autofocus="autofocus" > </asp:Textbox>                  
                  </div>
            </div>               

                  
                 <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="oid">Bank Account </label>
                      <asp:TextBox ID="accountno" type="text" runat="server" CssClass="form-control" placeholder="account no" required="required"  autofocus="autofocus"></asp:TextBox>            

                  </div>
                </div>

                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                        <br />
                     <label for="aadhar">Passbook Copy</label>
                        <asp:FileUpload ID="fileupload2" runat="server" class="form-control" placeholder="upload passbook " />
                         <asp:RequiredFieldValidator runat="server" ForeColor="Red"  Display="Dynamic" ErrorMessage="Please choose a passbook " ControlToValidate="fileupload2"></asp:RequiredFieldValidator>

                   </div>
                 </div>  

             <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="certificate">Certificate</label>
                      <asp:TextBox type="text" ID="certificate" runat="server" size="12" class="form-control" placeholder="certificate" required="required" autofocus="autofocus"> </asp:TextBox>                   
                  </div>
             </div>
                
                  
              <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                        <br />
                     <label for="certificate">Certificate</label>
                        <asp:FileUpload ID="fileupload" runat="server" class="form-control" placeholder="upload certificate " />
                       <asp:RequiredFieldValidator runat="server"  ForeColor="Red" Display="Dynamic" ErrorMessage="Please choose a certificate for validate" ControlToValidate="fileupload"></asp:RequiredFieldValidator>
                   </div>
             </div>
                  

                             
              <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="password">Password</label>
                    <asp:Textbox type="password" ID="password" runat="server"  class="form-control" placeholder="password" required="required" autofocus="autofocus" > </asp:Textbox>                  
                  </div>
             </div> 


              <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">
                      <br />
                     <label for="repassword">Confirm Password</label>
                    <asp:Textbox type="password" ID="repassword" runat="server"  class="form-control" placeholder="Password" required="required" autofocus="autofocus" > </asp:Textbox>                  
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="repassword" Display="Dynamic" ErrorMessage="Please check your password.." ForeColor="Red"> </asp:CompareValidator>  

                </div>
             </div>        



                  <br />
                  <br />                
            
            <div class="w-100 text-center">
                <asp:Button ID="orphanage" class="btn btn-primary m-4 " Text="Register" runat="server" OnClick="Orphanage_Click" />
            </div>
         </div>  


                 
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
    </form>
</body>
</html>
