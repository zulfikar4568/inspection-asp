<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home_Page_All.aspx.vb" Inherits="WEB.Home_Page_All" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home Page</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/Style.css" rel="stylesheet" />
    <link href="../Additional-File/css/global.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />

    <style type="text/css">
        .Jarak {
            height: 200px;
            background-color: #ffffff;
        }

        .jumbotron-custom {
            background: #343a40;
            transition-duration: 2000ms;
            width: 80%;
            border-radius: 10px;
            margin-left: -20px;
            text-align: left;
        }

            .jumbotron-custom:hover {
                background: #343a40;
                width: 80%;
                border-radius: 10px;
                margin-left: 10%;
                text-align: left;
            }

        .jumbotron-custom2 {
            background: #343a40;
            transition-duration: 2000ms;
            width: 80%;
            border-radius: 10px;
            margin-right: -10px;
            text-align: right;
        }

        .putargambar {
            transition-duration: 1000ms;
        }

            .putargambar:hover {
                transform: rotate(360deg);
            }

        .jumbotron-custom2:hover {
            background: #343a40;
            width: 80%;
            border-radius: 10px;
            margin-right: 10%;
            text-align: right;
        }

        .navbar-custom {
            background-color: #343a40;
        }
    </style>
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
                        <li class="nav-item dropdown" style="color: #6B5B95;">
                            <a class="nav-link dropdown-toggle text-white font-weight-bold" href="#" id="Tentang Kami" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tentang Kami
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="https://www.loreal-paris.co.id/">Loreal</a>
                                <a class="dropdown-item" href="http://www.polman-bandung.ac.id/control/index.php?m=ind">Polman Bandung</a>
                                <a class="dropdown-item" href="Me.aspx">Developer</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--Navigation-->
            </nav>
        </header>
        <main class="bg">
            <table>
                <tr class="blank_row">
                    <td colspan="1"></td>
                </tr>
            </table>

            <div class="jumbotron jumbotron-fluid jumbotron-custom float-left">
                <div class="container">
                    <a href="Home_Page.aspx" class="text-white" style="text-decoration: none">
                        <h1 class="display-4 ml-5">
                            <asp:Image ID="Image3" runat="server" ImageUrl="../Resource/Checklist.png" Width="10%" Height="10%" CssClass="putargambar" />
                            Inspection Check</h1>
                        <hr class="my-1">
                    </a>
                </div>
            </div>


            <div class="jumbotron jumbotron-fluid jumbotron-custom2 float-right">
                <div class="container">
                    <a href="../Breakdown/Historical_Breakdown.aspx" class="text-white" style="text-decoration: none">
                        <h1 class="display-4 mr-5">Maintenance Activity <asp:Image ID="Image4" runat="server" ImageUrl="../Resource/Breakdown.png" Width="10%" Height="10%" CssClass="putargambar" /> </h1>
                        <hr class="my-1">
                    </a>
                </div>
            </div>

            <div class="jumbotron jumbotron-fluid jumbotron-custom float-left">
                <div class="container">
                    <a href="Home_Page.aspx" class="text-white" style="text-decoration: none">
                        <h1 class="display-4 ml-5">
                            <asp:Image ID="Image2" runat="server" ImageUrl="../Resource/PM3.png" Width="10%" Height="10%" CssClass="putargambar" />
                            Preventive Maintenance</h1>
                        <hr class="my-1">
                    </a>
                </div>
            </div>

        </main>
        <footer>
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent m-auto">
                <ul class="navbar-nav mr-auto">
                    <a class="navbar-brand" href="#">
                        <asp:Image ID="Polman" runat="server" Width="30px" Height="30px" ImageUrl="~/Resource/Polman.png" />
                    </a>
                    <li class="nav-item active">
                        <a class="nav-link font-weight-bold text-black-50" href="#">PT Yasulor Indonesia<span class="sr-only">(current)</span></a>
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
</body>
</html>
