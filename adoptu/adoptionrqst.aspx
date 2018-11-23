<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adoptionrqst.aspx.cs" Inherits="adoptu.adoptionrqst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title> Adoption request</title>

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
        .Container {
    width: 85%;
    min-width: 500px;
    margin: auto;
}     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
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
                                <a class="nav-link" href="About.aspx">Contact</a>
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

    <div class="container px-5">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Please provide your priority</div>
        <div class="card-body px-5 ">
          
            <div class="form-group ">
              <div class="form-row">
                <div class="col-md-3 col-sm-12">
                  <div class="form-label-group">
                      <label for="Name">Age minimum</label>
                    <asp:Textbox AutoCompleteType="DisplayName" runat="server" type="integer" ID="agemin" class="form-control" placeholder="please provide 0 if no min age" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>               
                             
                 <div class="col-md-3 col-sm-12">
                  <div class="form-label-group">
                     <label for="email">Age maximum</label>
                    <asp:Textbox type="integer"  ID="agemax"  class="form-control" runat="server"   placeholder="please provide 0 if no max age" autofocus="autofocus" >   </asp:Textbox>                 
                  </div>
                </div>

                   
                                 
                                           
                                                      
             </div>
          </div>
              <div class="w-100 text-center">
                     <br />
                  <br />
                <asp:Button ID="donr" class="btn btn-primary " Text="View" runat="server" OnClick="Reg_Click"/>
                     </div>    
            <br />
            <br />

            <asp:GridView runat="server" ID="gridview">
                <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="orphid" HeaderText="Orphan Id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="orphname" HeaderText="Orphan Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Oid" HeaderText="Orphanage Id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="aadhar" HeaderText="Aadhar Number" />
                <asp:BoundField ItemStyle-Width="150px" DataField="studyin" HeaderText="Study In" />
                 <asp:BoundField ItemStyle-Width="150px" DataField="dob" HeaderText="Date of Birth" />
                 <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="Age" />
                
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>           
            
            
         
        </div>
      </div>
    </div>
            
     <!-- Sticky Footer -->

                <div class="footer">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Kerala State Adoption Authority</span>
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
