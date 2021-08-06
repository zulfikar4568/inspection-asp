<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="WEB.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Form Inspection Check</title>
    <!--CSS Tambahan-->
    <link href="Additional-File/css/global.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <!--CSS Datatable-->
    <!--<link href="Datatable/css/bootstrap.css" rel="stylesheet" />
    <link href="Datatable/css/bootstrap.min.css" rel="stylesheet" />-->
    <link href="Datatable/css/responsive.dataTables.min.css" rel="stylesheet" />
    <link href="Datatable/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="Datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" />

</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-dark font-weight-bold" runat="server">
                    <h2 class="text-center mb-3">Login Form Process</h2>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Username</label>
                        <asp:TextBox ID="Tb_Usr" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <asp:TextBox ID="Tb_Pwd" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button ID="Bt_Login" OnClick="Bt_Login_Click" CssClass="btn btn-primary btn-block mt-3 btn-dark font-weight-bold" runat="server" Text="Login" />
                </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <!--Js Tambahan-->
    <script src="Additional-File/js/jquery-3.4.1.js"></script>
    <script src="Additional-File/js/jquery-3.4.1.slim.min.js"></script>
    <script src="Additional-File/js/popper.min.js"></script>
    <!--Js Bootstrap4.4.1-->
    <script src="Bootstrap4/js/bootstrap.js"></script>
    <script src="Bootstrap4/js/bootstrap.min.js"></script>
    <!--Js Datatable-->
    <script src="Datatable/js/jquery-3.3.1.js"></script>
    <script src="Datatable/js/jquery.dataTables.min.js"></script>
    <script src="Datatable/js/dataTables.bootstrap4.min.js"></script>
    <script src="Datatable/js/dataTables.responsive.min.js"></script>
</body>
</html>
