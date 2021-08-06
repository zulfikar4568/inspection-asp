<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Me.aspx.vb" Inherits="WEB._Me" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Developer</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/Style.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                            <a class="nav-link text-white font-weight-bold" href="Home_Page_All.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white font-weight-bold" href="#" id="Tentang Kami" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tentang Kami
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="https://www.loreal-paris.co.id/">Loreal</a>
                                <a class="dropdown-item" href="http://www.polman-bandung.ac.id/control/index.php?m=ind">Polman Bandung</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--Navigation-->
            </nav>
        </header>
        <main>
            <table>
                <tr class="blank_row">
                    <td colspan="3"></td>
                </tr>
            </table>
            <div class="jumbotron jumbotron-fluid ml-5 mr-5" style="background-color:#585B6A">
                <div class="container">
                    <h1 class="display-4">
                        <img src="../Additional-File/img/Me.jpg" alt="Zulfikar Isnaen" width="150px" height="150px">
                        M Zulfikar Isnaen</h1>
                    <hr class="my-4">
                    <p class="lead">Aplikasi ini di kembangkan oleh M Zulfikar Isnaen dari POLMAN BANDUNG Jurusan Automation Engineering dalam program Praktik Industri tahun 2019 di PT Yasulor Indonesia. Aplikasi ini dibuat menggunakan beberapa software program yang terintegrasi.</p>
                    <p class="lead">Lahir: 20 April 1998 Bandung <br /> e-mail :m.zulfikarisnaen@yahoo.co.id.<br /> Asal : Cimahi/Bandung</p>
                </div>
            </div>
        </main>
    </form>
    <!--Js Tambahan-->
    <script src="../Additional-File/js/jquery-3.4.1.js"></script>
    <script src="../Additional-File/js/jquery-3.4.1.slim.min.js"></script>
    <script src="../Additional-File/js/popper.min.js"></script>
    <!--Js Bootstrap4.4.1-->
    <script src="../Bootstrap4/js/bootstrap.js"></script>
    <script src="../Bootstrap4/js/bootstrap.min.js"></script>
</body>
</html>
