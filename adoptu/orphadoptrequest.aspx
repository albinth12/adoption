<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orphadoptrequest.aspx.cs" Inherits="adoptu.orphadoptrequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Orphanage Home</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet" />  
    <link href="css/GridView.css" rel="stylesheet" />   
    
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
    width: 80%;
    min-width: 500px;
    margin: auto;
    }
   
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Container">
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

          <div align="center">
              <br />
              <br />
            <h4>
                Requests for Adoption</h4>
              <br />
           
              <asp:GridView ID="gridview" runat="server" Width="70%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
              <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="UsrName" HeaderText="Adopter Name" />
                <asp:BoundField ItemStyle-Width="150px" DataField="UsrAddress" HeaderText="Address" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Mobile" HeaderText="Mobile No" />
                <asp:BoundField ItemStyle-Width="150px" DataField="Email" HeaderText="Email" />
                <asp:BoundField ItemStyle-Width="150px" DataField="orphid" HeaderText="Orphan" />                
                </Columns>
             </asp:GridView>             
          </div>
       

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
          <div class="modal-body align-content-around">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">             
            <a class="btn btn-primary" href="home.aspx">Logout</a>
            <button class="btn btn-secondary mkbutton " type="button" data-dismiss="modal">Cancel</button>
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

        <!------->

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
