<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home_Page.aspx.vb" Inherits="WEB.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home Page Inspection Check</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/global.css" rel="stylesheet" />
    <link href="../Additional-File/css/Homepage.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <!--CSS Datatable-->
    <!--<link href="Datatable/css/bootstrap.css" rel="stylesheet" />
    <link href="Datatable/css/bootstrap.min.css" rel="stylesheet" />-->
    <link href="../Datatable/css/responsive.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="../Datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <form id="form1" runat="server">
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
                            <a class="nav-link text-white font-weight-bold" href="Home_Page_All.aspx">Home Page<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
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
            <div class="row mt-5">
                <div class="row mt-5">
                    <div class="col-sm-12 mt-5 mt-5">
                        <div class="card-deck mt-3 ml-3 mr-3">
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP29_1.jpg" class="card-img-top" alt="SKIDP29">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP29.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P29</a></h5>
                                    <p class="card-text">Form Weekly SKID P-29.</p>
                                </div>
                            </div>
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP31.jpg" class="card-img-top" alt="SKIDP31">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP31.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P31</a></h5>
                                    <p class="card-text">Form Weekly SKID P-31.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP32.jpg" class="card-img-top" alt="SKIDP32">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP32.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P32</a></h5>
                                    <p class="card-text">Form Weekly SKID P-32.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP33.jpg" class="card-img-top" alt="SKIDP33">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP33.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P33</a></h5>
                                    <p class="card-text">Form Weekly SKID P-33.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 mt-5 mt-5">
                        <div class="card-deck mt-3 ml-3 mr-3">
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP04.jpg" class="card-img-top" alt="SKIDP04">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP04.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P04</a></h5>
                                    <p class="card-text">Form Weekly SKID P-04.</p>
                                </div>
                            </div>
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP34.jpg" class="card-img-top" alt="SKIDP34">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP34.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P34</a></h5>
                                    <p class="card-text">Form Weekly SKID P-34.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP14.jpg" class="card-img-top" alt="SKIDP14">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP14.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P14</a></h5>
                                    <p class="card-text">Form Weekly SKID P-14.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP01.jpg" class="card-img-top" alt="SKIDP01">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP01.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P01</a></h5>
                                    <p class="card-text">Form Weekly SKID P-01.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 mt-5 mt-5">
                        <div class="card-deck mt-3 ml-3 mr-3">
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP02.jpg" class="card-img-top" alt="SKIDP02">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP02.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P02</a></h5>
                                    <p class="card-text">Form Weekly SKID P-02.</p>
                                </div>
                            </div>
                            <div class="card border-dark">
                                <img src="../Additional-File/img/SKIDP00.jpg" class="card-img-top" alt="SKIDP00">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/SKIDP00.aspx" class="text-info stretched-link" style="text-decoration: none">SKID P00</a></h5>
                                    <p class="card-text">Form Weekly SKID P-00.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/WB.jpg" class="card-img-top" alt="WB1">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/WB1.aspx" class="text-info stretched-link" style="text-decoration: none">WB1</a></h5>
                                    <p class="card-text">Form Weekly WB1.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/WB2.jpg" class="card-img-top" alt="WB2">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/WB2.aspx" class="text-info stretched-link" style="text-decoration: none">WB2</a></h5>
                                    <p class="card-text">Form Weekly WB2.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 mt-5 mt-5">
                        <div class="card-deck mt-3 ml-3 mr-3">
                            <div class="card border-dark">
                                <img src="../Additional-File/img/WB3.jpg" class="card-img-top" alt="WB3">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/WB3.aspx" class="text-info stretched-link" style="text-decoration: none">WB3</a></h5>
                                    <p class="card-text">Form Weekly WB3.</p>
                                </div>
                            </div>
                            <div class="card border-dark">
                                <img src="../Additional-File/img/WB4.jpg" class="card-img-top" alt="WB4">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/WB4.aspx" class="text-info stretched-link" style="text-decoration: none">WB4</a></h5>
                                    <p class="card-text">Form Weekly WB4.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/WB5.jpg" class="card-img-top" alt="WB5">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/WB5.aspx" class="text-info stretched-link" style="text-decoration: none">WB5</a></h5>
                                    <p class="card-text">Form Weekly WB5.</p>
                                </div>
                            </div>

                            <div class="card border-dark">
                                <img src="../Additional-File/img/Washing.jpg" class="card-img-top" alt="WB6">
                                <div class="card-body">
                                    <h5 class="card-title"><a href="../InspectionCheck/Washing.aspx" class="text-info stretched-link" style="text-decoration: none">Washing</a></h5>
                                    <p class="card-text">Form Weekly Washing.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="row mt-5">
                    <div class="mt-5">
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
                    </div>
                </div>
            </div>
        </form>
    </div>
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
</body>
</html>
