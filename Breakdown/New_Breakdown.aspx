<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="New_Breakdown.aspx.vb" Inherits="WEB.New_Breakdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Form Breakdown</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/breakdown.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <!--CSS Datatable-->
    <!--<link href="Datatable/css/bootstrap.css" rel="stylesheet" />
    <link href="Datatable/css/bootstrap.min.css" rel="stylesheet" />-->
    <link href="../Datatable/css/responsive.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <!--CSS DatePicker-->
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker3.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker3.standalone.css" rel="stylesheet" />
    <link href="../Bootstrap_Date_Picker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" />
    <!--CSS Time Picker------------------------------------------------------------------------------------------------->

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <form id="form" runat="server">
        <div>
            <header>
                <nav class="navbar navbar-expand-lg navbar-light bg-dark m-auto fixed-top">
                    <!--Logo-->
                    <a class="navbar-brand" href="#">
                        <asp:Image ID="Image1" runat="server" Width="30px" Height="30px" ImageUrl="~/Resource/Picture1.png" />
                    </a>
                    <!--Toogle-->
                    <button class="navbar-toggler navbar navbar-dark bg-dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!--Navigation-->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link text-white font-weight-bold" href="../HomePage_Developer/Home_Page_All.aspx">Home Page <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white font-weight-bold" href="#" id="Tentang Kami" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tentang Kami
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="https://www.loreal-paris.co.id/">Loreal</a>
                                    <a class="dropdown-item" href="http://www.polman-bandung.ac.id/control/index.php?m=ind">Polman Bandung</a>
                                    <a class="dropdown-item" href="../HomePage_Developer/Me.aspx">Developer</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--Navigation-->
                </nav>
            </header>
            <main>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <div class="jumbotron jumbotron-fluid" style="background-color: #343a40;">
                                <div class="container">
                                    <a href="New_Breakdown.aspx" class="text-white" style="text-decoration: none">
                                        <h1 class="display-4 text-md-center text-white">New</h1>
                                        <hr class="my-3" style="background-color: white;">
                                    </a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="jumbotron jumbotron-fluid" style="background-color: #343a40;">
                                <div class="container">
                                    <a href="Historical_Breakdown.aspx" class="text-white" style="text-decoration: none">
                                        <h1 class="display-4 text-md-center text-white">Historical</h1>
                                        <hr class="my-3" style="background-color: white;">
                                    </a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="jumbotron jumbotron-fluid" style="background-color: #343a40;">
                                <div class="container">
                                    <a href="Chart_Breakdown.aspx" class="text-white" style="text-decoration: none">
                                        <h1 class="display-4 text-md-center text-white">Chart</h1>
                                        <hr class="my-3" style="background-color: white;">
                                    </a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="Tb_Tanggal">Tanggal Issue</label>
                                <asp:TextBox ID="Tb_Tanggal" ClientIDMode="Static" CssClass="form-control is-invalid" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                                <div class="invalid-feedback">
                                    Wajib Di isi.
                                </div>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Tb_StartAction">Start Action</label>
                                <asp:TextBox ID="Tb_StartAction" ClientIDMode="Static" CssClass="form-control" runat="server" TextMode="Time" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Tb_FinishAction">Finish Action</label>
                                <asp:TextBox ID="Tb_FinishAction" ClientIDMode="Static" CssClass="form-control" runat="server" TextMode="Time" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label ID="Lb_Jenis1" runat="server">Jenis</asp:Label>
                                <asp:DropDownList ID="Cb_Jenis" runat="server" CssClass="form-control" OnSelectedIndexChanged="Cb_Jenis_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="Corrective" Value="Corrective"></asp:ListItem>
                                    <asp:ListItem Text="Breakdown" Value="Breakdown"></asp:ListItem>
                                    <asp:ListItem Text="Improvement" Value="Improvement"></asp:ListItem>
                                    <asp:ListItem Text="Lainnya" Value="Lainnya"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label ID="Lb_Jenis2" runat="server">Jenis Lainnya</asp:Label>
                                <asp:TextBox ID="Tb_Jenis" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="Cb_Area">Area</label>
                                <asp:DropDownList ID="Cb_Area" runat="server" CssClass="form-control" OnSelectedIndexChanged="Cb_Area_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem>P32</asp:ListItem>
                                    <asp:ListItem>P00</asp:ListItem>
                                    <asp:ListItem>P33</asp:ListItem>
                                    <asp:ListItem>P31</asp:ListItem>
                                    <asp:ListItem>P04</asp:ListItem>
                                    <asp:ListItem>P34</asp:ListItem>
                                    <asp:ListItem>P14</asp:ListItem>
                                    <asp:ListItem>P01</asp:ListItem>
                                    <asp:ListItem>P02</asp:ListItem>
                                    <asp:ListItem>P29</asp:ListItem>
                                    <asp:ListItem>WB1</asp:ListItem>
                                    <asp:ListItem>WB2</asp:ListItem>
                                    <asp:ListItem>WB3</asp:ListItem>
                                    <asp:ListItem>WB4</asp:ListItem>
                                    <asp:ListItem>WB5</asp:ListItem>
                                    <asp:ListItem>Washing</asp:ListItem>
                                    <asp:ListItem>MovableTank</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="Cb_Modul">Modul</label>
                                <asp:DropDownList ID="Cb_Modul" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Tb_Issue">Issue</label>
                            <asp:TextBox ID="Tb_Issue" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Tb_Action">Action</label>
                            <asp:TextBox ID="Tb_Action" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Tb_Improvement">Improvement</label>
                            <asp:TextBox ID="Tb_Improvement" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Tb_Sparepart">Sparepart</label>
                            <asp:TextBox ID="Tb_Sparepart" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <asp:Label ID="Lb_PIC1" runat="server">PIC Lainnya</asp:Label>
                                <asp:DropDownList ID="Cb_PIC" OnSelectedIndexChanged="Cb_PIC_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true">
                                    <asp:ListItem Text="Afry" Value="Afry"></asp:ListItem>
                                    <asp:ListItem Text="Nurman" Value="Nurman"></asp:ListItem>
                                    <asp:ListItem Text="Dimas" Value="Dimas"></asp:ListItem>
                                    <asp:ListItem Text="Suswanto" Value="Suswanto"></asp:ListItem>
                                    <asp:ListItem Text="Lainnya" Value="Lainnya"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-6">
                                <asp:Label ID="Lb_PIC2" runat="server">PIC Lainnya</asp:Label>
                                <asp:TextBox ID="Tb_PIC" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button ID="Tb_Tambah" OnClick="Tb_Tambah_Click" CssClass="btn btn-primary float-right" runat="server" Text="Masukan Issue" />
                    </div>
                </div>
            </main>
            <footer>
                <nav class="navbar navbar-expand-lg navbar-light bg-transparent">
                    <ul class="navbar-nav mr-auto">
                        <a class="navbar-brand" href="#">
                            <asp:Image ID="Polman" runat="server" Width="30px" Height="30px" ImageUrl="~/Resource/Polman.png" />
                        </a>
                        <li class="nav-item active">
                            <a class="nav-link font-weight-bold" href="#">PT Yasulor Indonesia<span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </nav>
            </footer>
        </div>
    </form>
    <!--Js Tambahan-->
    <script src="../Additional-File/js/jquery-3.4.1.js"></script>
    <script src="../Additional-File/js/jquery-3.4.1.slim.min.js"></script>
    <script src="../Additional-File/js/popper.min.js"></script>
    <!--Js Bootstrap4.4.1-->
    <script src="../Bootstrap4/js/bootstrap.js"></script>
    <script src="../Bootstrap4/js/bootstrap.min.js"></script>
    <!--Js Datatable-->
    <script src="../Datatable/js/jquery-3.3.1.js"></script>
    <script src="../Datatable/js/jquery.dataTables.min.js"></script>
    <script src="../Datatable/js/dataTables.bootstrap4.min.js"></script>
    <script src="../Datatable/js/dataTables.responsive.min.js"></script>
    <!--Js DatePicker-->
    <script src="../Bootstrap_Date_Picker/js/bootstrap-datepicker.js"></script>
    <script src="../Bootstrap_Date_Picker/js/bootstrap-datepicker.min.js"></script>
    <script src="../Bootstrap_Date_Picker/locales/bootstrap-datepicker.id.min.js"></script>
    <!------------------------------------------------------------------------------------------------------------------------>
</body>
</html>
