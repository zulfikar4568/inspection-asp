<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SKIDP00.aspx.vb" Inherits="WEB.SKIDP00" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Form Inspection Check</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/global.css" rel="stylesheet" />
    <link href="../Additional-File/css/skidp04.css" rel="stylesheet" />
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


</head>
<body>
    <form id="form1" runat="server">
        <!---------------------------------------------------------------------------------------------------------------------->
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
                            <a class="nav-link text-white font-weight-bold" href="../HomePage_Developer/Home_Page.aspx">Kembali ke Menu <span class="sr-only">(current)</span></a>
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
            <div class="jumbotron jumbotron-fluid skid">
                <div class="container mt-5 text-dark">
                    <h1 class="display-4">Form Process SKID P-00</h1>
                    <p class="lead font-weight-bold">Halaman ini digunakan untuk pengisian form Inspeksi Check .</p>
                </div>
            </div>
        </header>
        <!---------------------------------------------------------------------------------------------------------------------->
        <main role="main">
            <div class="form-group float-left mt-0 ml-5 mb-4">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Lb_Tanggal" runat="server" Text="Tanggal Pengisian" CssClass="font-weight-bold"></asp:Label>
                        <asp:TextBox ID="Tb_Tanggal" TextMode="Date" OnTextChanged="Tb_Tanggal_TextChanged" ClientIDMode="Static" CssClass="form-control" runat="server" AutoPostBack="true" AutoCompleteType="Disabled"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="LabelPIC" runat="server" Text="PIC" CssClass="font-weight-bold"></asp:Label>
                        <asp:DropDownList ID="Cb_PIC" OnSelectedIndexChanged="Cb_PIC_SelectedIndexChanged" CssClass="form-control" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="Afry" Value="Afry"></asp:ListItem>
                            <asp:ListItem Text="Nurman" Value="Nurman"></asp:ListItem>
                            <asp:ListItem Text="Dimas" Value="Dimas"></asp:ListItem>
                            <asp:ListItem Text="Suswanto" Value="Suswanto"></asp:ListItem>
                            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="Lb_Mode" runat="server" Text="Mode Teknisi" CssClass="font-weight-bold"></asp:Label>
                        <asp:LinkButton ID="Bt_Admin" CssClass="btn btn-info form-control" data-target="#modalMasuk" data-toggle="modal" runat="server">Masuk</asp:LinkButton>
                        <asp:Button ID="Bt_Out" OnClick="Bt_Out_Click" CssClass="btn btn-warning form-control" runat="server" Text="Keluar" />
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="Label5" runat="server" CssClass="font-weight-bold" Text="Week"></asp:Label>
                        <asp:DropDownList ID="Cb_Week" OnSelectedIndexChanged="Cb_Week_SelectedIndexChanged" CssClass="form-control" AutoPostBack="true" runat="server">
                            <asp:ListItem>All</asp:ListItem>
                            <asp:ListItem>Week1</asp:ListItem>
                            <asp:ListItem>Week2</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-6">
                        <asp:Label ID="Lb_PIC" runat="server" Text="PIC lain" CssClass="font-weight-bold"></asp:Label>
                        <asp:TextBox ID="Tb_PIC" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled">Masukan Nama PIC Lain</asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="float right mt-4 mr-5 ml-5">
                <asp:Repeater ID="RptTampil" runat="server">
                    <HeaderTemplate>
                        <div class="table-responsive">
                            <table id="MyTable" class="table table-striped table-borderless dt-responsive display nowrap" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Edit</th>
                                        <th>Inspention Check</th>
                                        <th>Standard</th>
                                        <th>Week</th>
                                        <th>Result</th>
                                        <th>Tanggal</th>
                                        <th>Remark</th>
                                        <th>PIC</th>
                                        <th>Bulan</th>
                                    </tr>
                                </thead>
                                <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="#" class="btn btn btn-dark btn-sm" data-target="#modalEdit" id="Bt_Edit" data-id="<%# Eval("ID")%>"
                                    data-ic="<%# Eval("InspectionCheck")%>" data-standard="<%# Eval("Standard")%>" data-week="<%# Eval("Week")%>" data-result="<%# Eval("Result")%>"
                                    data-remark="<%# Eval("Remark")%>" data-toggle="modal">Update</a>
                            </td>
                            <td><%# Eval("InspectionCheck")%></td>
                            <td><%# Eval("Standard")%></td>
                            <td><%# Eval("Week")%></td>
                            <td><%# Eval("Result")%></td>
                            <td><%# Eval("Tanggal", "{0:MM/dd/yyyy}")%></td>
                            <td><%# Eval("Remark")%></td>
                            <td><%# Eval("PIC")%></td>
                            <td><%# Eval("Bulan")%></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
            </table>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

            <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header alert-primary">
                            <h5 class="modal-title" id="exampleModalScrollableTitle">Update Inspection Check Process</h5>
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
                                <asp:Label ID="Label1" runat="server" Text="Inspection Check"></asp:Label>
                                <asp:TextBox ID="Tb_IC" ReadOnly="true" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Standard"></asp:Label>
                                <asp:TextBox ID="Tb_Standard" ReadOnly="true" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="Week"></asp:Label>
                                <asp:TextBox ID="Tb_Week" ReadOnly="true" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Result"></asp:Label>
                                <asp:DropDownList ID="Cb_Result" ClientIDMode="Static" CssClass="form-control" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Good</asp:ListItem>
                                    <asp:ListItem>Not Good</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="Remark"></asp:Label>
                                <asp:TextBox ID="Tb_Remark" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Bt_Simpan" OnClick="Bt_Simpan_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modalMasuk" tabindex="-2" role="dialog" aria-labelledby="exampleModalMasuk" aria-hidden="true">
                <div class="modal-dialog modal-dialog-scrollable" role="document">
                    <div class="modal-content">
                        <div class="modal-header alert-primary">
                            <h5 class="modal-title" id="exampleModalMasuk">Masuk ke Mode Admin</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                                <asp:TextBox ID="Tb_Username" ClientIDMode="Static" CssClass="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                                <asp:TextBox ID="Tb_Password" ClientIDMode="Static" CssClass="form-control" runat="server" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Bt_Masuk" OnClick="Bt_Masuk_Click" CssClass="btn btn-primary" runat="server" Text="Masuk" />
                        </div>
                    </div>
                </div>
            </div>

        </main>
        <!---------------------------------------------------------------------------------------------------------------------->
        <footer>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
    <script>
        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        });
        $(document).ready(function () {
            $('#MyTable').DataTable({
                "autoWidth": true
            });
        });
        $(document).on("click", "#Bt_Edit", function () {
            var _id = $(this).data("id");
            var _ic = $(this).data("ic");
            var _standard = $(this).data("standard");
            var _week = $(this).data("week");
            var _result = $(this).data("result");
            var _remark = $(this).data("remark");

            $("#modalEdit #Tb_No").val(_id);
            $("#modalEdit #Tb_IC").val(_ic);
            $("#modalEdit #Tb_Standard").val(_standard);
            $("#modalEdit #Tb_Week").val(_week);
            $("#modalEdit #Cb_Result").val(_result);
            $("#modalEdit #Tb_Remark").val(_remark);
            $("#modalEdit #Tb_No").attr("ReadOnly", true);
        })
    </script>
</body>
</html>
