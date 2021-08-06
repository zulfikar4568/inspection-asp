<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Historical_Breakdown.aspx.vb" Inherits="WEB.Historical_Breakdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Historical Breakdown</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/breakdown.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <!--CSS Datatable-->
    <link href="../Datatable/css/responsive.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <!--------------------------------------------------------------------------------------------------->

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

                <div class="float right mt-4 mr-5 ml-5">
                    <asp:Repeater ID="RptTampil" runat="server">
                        <HeaderTemplate>
                            <div class="table-responsive">
                                <table id="MyTable" class="table table-striped table-borderless dt-responsive display nowrap" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Update</th>
                                            <th>Jenis</th>
                                            <th>Area</th>
                                            <th>Modul</th>
                                            <th>Issue</th>
                                            <th>Tanggal Issue</th>
                                            <th>Action</th>
                                            <th>Start Action</th>
                                            <th>Finish Action</th>
                                            <th>Improvement</th>
                                            <th>Sparepart</th>
                                            <th>PIC</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <a href="#" class="btn btn btn-dark btn-sm" data-target="#modalUpdate" id="Bt_Update" data-id="<%# Eval("ID")%>" data-jenis="<%# Eval("Jenis")%>"
                                        data-area="<%# Eval("Area")%>" data-modul="<%# Eval("Modul")%>" data-issue="<%# Eval("Issue")%>" data-tanggal="<%# Eval("Tanggal")%>"
                                        data-action="<%# Eval("Action")%>" data-start="<%# Eval("Start")%>" data-finish="<%# Eval("Finish")%>" data-improvement="<%# Eval("Improvement")%>"
                                        data-sparepart="<%# Eval("Sparepart")%>" data-pic="<%# Eval("PIC")%>" data-toggle="modal">Update</a>
                                </td>
                                <th><%# Eval("Jenis")%></th>
                                <td><%# Eval("Area")%></td>
                                <td><%# Eval("Modul")%></td>
                                <td><%# Eval("Issue")%></td>
                                <td><%# Eval("Tanggal", "{0:MM/dd/yyyy}")%></td>
                                <td><%# Eval("Action")%></td>
                                <td><%# Eval("Start")%></td>
                                <td><%# Eval("Finish")%></td>
                                <td><%# Eval("Improvement")%></td>
                                <td><%# Eval("Sparepart")%></td>
                                <td><%# Eval("PIC")%></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
            </table>
                        </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>

                <div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header alert-primary">
                                <h5 class="modal-title" id="exampleModalScrollableTitle">Update Form Breakdown</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <asp:Label ID="ID" runat="server" Text="ID"></asp:Label>
                                    <asp:TextBox ID="Tb_No" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Cb_Jenis">Jenis</label>
                                    <asp:TextBox ID="Cb_Jenis" ClientIDMode="Static" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Cb_Area">Area</label>
                                    <asp:TextBox ID="Cb_Area" ClientIDMode="Static" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="Cb_Modul">Modul</label>
                                    <asp:TextBox ID="Cb_Modul" ClientIDMode="Static" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Issue"></asp:Label>
                                    <asp:TextBox ID="Tb_Issue" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Tanggal Issue"></asp:Label>
                                    <asp:TextBox ID="Tb_Tanggal" TextMode="Date" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Action"></asp:Label>
                                    <asp:TextBox ID="Tb_Action" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label6" runat="server" Text="Start"></asp:Label>
                                    <asp:TextBox ID="Tb_Start" TextMode="Time" ClientIDMode="Static" CssClass="form-control input-small" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="Label7" runat="server" Text="Finish"></asp:Label>
                                    <asp:TextBox ID="Tb_Finish" TextMode="Time" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label8" runat="server" Text="Improvement"></asp:Label>
                                    <asp:TextBox ID="Tb_Improvement" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label9" runat="server" Text="Sparepart"></asp:Label>
                                    <asp:TextBox ID="Tb_Sparepart" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label11" runat="server" Text="PIC"></asp:Label>
                                    <asp:TextBox ID="Tb_PIC" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Bt_Hapus" OnClick="Bt_Hapus_Click" CssClass="btn btn-primary" runat="server" Text="Hapus" />
                                <asp:Button ID="Bt_Simpan" OnClick="Bt_Simpan_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                            </div>
                        </div>
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
    <!------------------------------------------------------------------------------------------------------------------------>
    <script>
        $(document).ready(function () {
            $('#MyTable').DataTable({
                "autoWidth": true
            });
        });

        $(document).on("click", "#Bt_Update", function () {
            var _id = $(this).data("id");
            var _jenis = $(this).data("jenis");
            var _area = $(this).data("area");
            var _modul = $(this).data("modul");
            var _issue = $(this).data("issue");
            var _tanggal = $(this).data("tanggal");
            var _action = $(this).data("action");
            var _start = $(this).data("start");
            var _finish = $(this).data("finish");
            var _improvement = $(this).data("improvement");
            var _sparepart = $(this).data("sparepart");
            var _pic = $(this).data("pic");

            $("#modalUpdate #Tb_No").val(_id);
            $("#modalUpdate #Cb_Jenis").val(_jenis);
            $("#modalUpdate #Cb_Area").val(_area);
            $("#modalUpdate #Cb_Modul").val(_modul);
            $("#modalUpdate #Tb_Issue").val(_issue);
            $("#modalUpdate #Tb_Tanggal").val(_tanggal);
            $("#modalUpdate #Tb_Action").val(_action);
            $("#modalUpdate #Tb_Start").val(_start);
            $("#modalUpdate #Tb_Finish").val(_finish);
            $("#modalUpdate #Tb_Improvement").val(_improvement);
            $("#modalUpdate #Tb_Sparepart").val(_sparepart);
            $("#modalUpdate #Tb_PIC").val(_pic);
            $("#modalUpdate #Tb_No").attr("ReadOnly", true);
        })
    </script>
</body>
</html>
