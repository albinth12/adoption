﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adopter.aspx.cs" Inherits="adoptu.adopter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>adopter home</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet" />     
    
    <style>
    .footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color:white;
    color: black;
    text-align: center;    
       }
    .mkbutton{
        position: relative;
    top: 0;
    width: auto;
    }
   .Container {
    width: 95%;
    min-width: 500px;
    margin: auto;
    }
   
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <nav class="navbar navbar-expand navbar-dark bg-dark static-top">
      <a class="navbar-brand mr-1" href="home.aspx">KSAA</a>
      <button class="btn btn-link btn-sm text-white order-1 order-sm-0 mkbutton" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

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
     

            <div id="wrapper">

                <!-- Sidebar -->
                <ul class="sidebar navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="adopterupdateinfo.aspx">
                            <i class="fas fa-fw fa-chart-area"></i>
                            <span>Update Info</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adoptionrqst.aspx">
                            <i class="fas fa-fw fa-table"></i>
                            <span>View Orphans</span></a>
                    </li>                    
                </ul>
                 <div id="wrapper" class="Container">

        <br />
        <br />
        <div class="align-items-sm-center m-5"><h3>Welcome</h3> </div>
                   
       <div class="container px-5 ">
      <div class="card card-register mx-5 mt-5">
        <div class="card-header">Provide Adopting child id</div>
        <div class="card-body px-5 ">
          
            <div class="form-group ">
              <div class="form-row">
                <div class="col-md-6 col-sm-12">
                  <div class="form-label-group">                     
                     <label for="orphanid">Orphan Id</label>
                      <br />
                      <br />
                      <br />                      
                    <asp:Textbox AutoCompleteType="BusinessStreetAddress"  type="text" runat="server" ID="oid" class="form-control"  required="required" autofocus="autofocus" >     </asp:Textbox>         
                  </div>
                </div>    
                  
            <div class="w-100 text-center">
                <br />
                <asp:Button ID="update" class="btn btn-primary " Text="Submit" runat="server" OnClick="update_Click"  />

            </div>

                <!-- Sticky Footer -->

                <div class="footer">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Kerala State Adoption Authority</span>
                    </div>
                </div>


            </div>
             </div>

       
           
                                                

                <!-- /.container-fluid -->

       
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="home.aspx">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/datatables-demo.js"></script>
        <script src="js/demo/chart-area-demo.js"></script>
    
    </form>
</body>
</html>
