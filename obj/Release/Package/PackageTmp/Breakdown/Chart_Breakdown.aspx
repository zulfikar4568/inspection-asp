<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Chart_Breakdown.aspx.vb" Inherits="WEB.Chart_Breakdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chart Breakdown</title>
    <!--CSS Tambahan-->
    <link href="../Additional-File/css/breakdown.css" rel="stylesheet" />
    <!--CSS Bootstrap4.4.1-->
    <link href="../Bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="../Bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <!--Js Chart-->
    <script src="../Chart/js/Chart.min.js"></script>
    <!--------------------------------------------------------------------------------------------------->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 30px;
        }

        .auto-style2 {
            width: 100%;
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
                    <div class="col-sm-12 mb-5" style="background-color: deepskyblue;">&nbsp;&nbsp;</div>
                </div>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="Tb_TaggalM">Tanggal Awal</label>
                                <asp:TextBox ID="Tb_TanggalM" ClientIDMode="Static" CssClass="form-control" AutoPostBack="true" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="Tb_TanggalA">Tanggal Akhir</label>
                                <asp:TextBox ID="Tb_TanggalA" ClientIDMode="Static" CssClass="form-control" AutoPostBack="true" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <canvas id="Performance"></canvas>
                </div>

                <div class="row">
                    <div class="col-sm-12 mt-5" style="background-color: deepskyblue;">
                        &nbsp;&nbsp;
                    </div>
                </div>

                <div class="container-fluid">
                    <canvas id="TimePerformance"></canvas>
                </div>

                <div class="row">
                    <div class="col-sm-12 mt-4" style="background-color: deepskyblue;">
                        &nbsp;&nbsp;
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="P32"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="P00"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="P33"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="P31"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="P04"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="P34"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="P14"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="P01"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="P02"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="P29"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="WB1"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="WB2"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="WB3"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="WB4"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <canvas id="WB5"></canvas>
                            </div>
                            <div class="form-group col-md-6">
                                <canvas id="Washing"></canvas>
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
    <script type="text/javascript">
        var variable2 = <%=json.Serialize(jsvars)%>;
        let P32 = document.getElementById('P32').getContext('2d');
        let P00 = document.getElementById('P00').getContext('2d');
        let P33 = document.getElementById('P33').getContext('2d');
        let P31 = document.getElementById('P31').getContext('2d');
        let P04 = document.getElementById('P04').getContext('2d');
        let P34 = document.getElementById('P34').getContext('2d');
        let P14 = document.getElementById('P14').getContext('2d');
        let P01 = document.getElementById('P01').getContext('2d');
        let P02 = document.getElementById('P02').getContext('2d');
        let P29 = document.getElementById('P29').getContext('2d');
        let WB1 = document.getElementById('WB1').getContext('2d');
        let WB2 = document.getElementById('WB2').getContext('2d');
        let WB3 = document.getElementById('WB3').getContext('2d');
        let WB4 = document.getElementById('WB4').getContext('2d');
        let WB5 = document.getElementById('WB5').getContext('2d');
        let Washing = document.getElementById('Washing').getContext('2d');

        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 15;
        Chart.defaults.global.defaultFontColor = '#777';
        let chartP32 = new Chart(P32, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Modul CU100', 'Modul CU200', 'Modul CU300', 'Process Modul', 'Transfer Modul', 'Storage', 'CIP Modul', 'Fluid Modul', 'Doube Jacket Modul', 'Elevator'],
                datasets: [{
                    label: 'SKID P32',
                    data: [
                        variable2.P32MC1,
                        variable2.P32MC2,
                        variable2.P32MC3,
                        variable2.P32PM,
                        variable2.P32TM,
                        variable2.P32STG,
                        variable2.P32CM,
                        variable2.P32FM,
                        variable2.P32DJM,
                        variable2.P32EL,
                    ],
                    backgroundColor: 'black',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P32',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP00 = new Chart(P00, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Modul CU100', 'Modul CU200', 'Modul CU300', 'Process Modul', 'Transfer Modul', 'Storage', 'CIP Modul', 'Fluid Modul', 'Doube Jacket Modul'],
                datasets: [{
                    label: 'SKID P00',
                    data: [
                        variable2.P00MC1,
                        variable2.P00MC2,
                        variable2.P00MC3,
                        variable2.P00PM,
                        variable2.P00TM,
                        variable2.P00STG,
                        variable2.P00CM,
                        variable2.P00FM,
                        variable2.P00DJM,
                    ],
                    backgroundColor: 'rgba(33, 206, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P00',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP33 = new Chart(P33, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Modul CU100', 'Modul CU200', 'Modul CU300', 'Process Modul', 'Transfer Modul', 'Storage', 'CIP Modul', 'Fluid Modul', 'Doube Jacket Modul'],
                datasets: [{
                    label: 'SKID P33',
                    data: [
                        variable2.P33MC1,
                        variable2.P33MC2,
                        variable2.P33MC3,
                        variable2.P33PM,
                        variable2.P33TM,
                        variable2.P33STG,
                        variable2.P33CM,
                        variable2.P33FM,
                        variable2.P33DJM,
                    ],
                    backgroundColor: 'rgba(50, 100, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P33',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP31 = new Chart(P31, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Modul CU100', 'Modul CU200', 'Modul CU300', 'Process Modul', 'Transfer Modul', 'Storage', 'CIP Modul', 'Fluid Modul', 'Doube Jacket Modul'],
                datasets: [{
                    label: 'SKID P31',
                    data: [
                        variable2.P31MC1,
                        variable2.P31MC2,
                        variable2.P31MC3,
                        variable2.P31PM,
                        variable2.P31TM,
                        variable2.P31STG,
                        variable2.P31CM,
                        variable2.P31FM,
                        variable2.P31DJM,
                    ],
                    backgroundColor: 'rgba(50, 100, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P31',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP04 = new Chart(P04, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel', 'P9 Anex'],
                datasets: [{
                    label: 'SKID P04',
                    data: [
                        variable2.P04FM,
                        variable2.P04DM,
                        variable2.P04MV,
                        variable2.P04P9A,
                    ],
                    backgroundColor: 'rgba(50, 34, 145, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P04',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP34 = new Chart(P34, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel'],
                datasets: [{
                    label: 'SKID P34',
                    data: [
                        variable2.P34FM,
                        variable2.P34DM,
                        variable2.P34MV,
                    ],
                    backgroundColor: 'rgba(230, 140, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P34',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP14 = new Chart(P14, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel', 'P8 Anex'],
                datasets: [{
                    label: 'SKID P14',
                    data: [
                        variable2.P14FM,
                        variable2.P14DM,
                        variable2.P14MV,
                        variable2.P14P8A,
                    ],
                    backgroundColor: 'rgba(50, 10, 170, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P14',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP01 = new Chart(P01, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel', 'P8 Anex'],
                datasets: [{
                    label: 'SKID P01',
                    data: [
                        variable2.P01FM,
                        variable2.P01DM,
                        variable2.P01MV,
                        variable2.P01P8A,
                    ],
                    backgroundColor: 'rgba(30, 121, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P01',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP02 = new Chart(P02, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel'],
                datasets: [{
                    label: 'SKID P02',
                    data: [
                        variable2.P02FM,
                        variable2.P02DM,
                        variable2.P02MV,
                    ],
                    backgroundColor: 'rgba(50, 136, 159, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P02',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartP29 = new Chart(P29, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul', 'Main Vessel', 'P7 Anex', 'Main Panel'],
                datasets: [{
                    label: 'SKID P29',
                    data: [

                        variable2.P29FM,
                        variable2.P329DM,
                        variable2.P29MV,
                        variable2.P29P7A,
                        variable2.P29MP,
                    ],
                    backgroundColor: 'rgba(53, 102, 119, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'SKID P29',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartWB1 = new Chart(WB1, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Motor Blower', 'Hepa Filter', 'Medium Filter', 'Equipment'],
                datasets: [{
                    label: 'WB1',
                    data: [
                        variable2.WB1MB,
                        variable2.WB1HF,
                        variable2.WB1MF,
                        variable2.WB1E
                    ],
                    backgroundColor: 'rgba(20, 250, 239, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'WB1',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartWB2 = new Chart(WB2, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Motor Blower', 'Hepa Filter', 'Medium Filter', 'Equipment'],
                datasets: [{
                    label: 'WB2',
                    data: [
                        variable2.WB2MB,
                        variable2.WB2HF,
                        variable2.WB2MF,
                        variable2.WB2E
                    ],
                    backgroundColor: 'rgba(20, 210, 9, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'WB2',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartWB3 = new Chart(WB3, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Motor Blower', 'Hepa Filter', 'Medium Filter', 'Equipment'],
                datasets: [{
                    label: 'WB3',
                    data: [
                        variable2.WB3MB,
                        variable2.WB3HF,
                        variable2.WB3MF,
                        variable2.WB3E
                    ],
                    backgroundColor: 'rgba(20, 130, 129, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'WB3',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartWB4 = new Chart(WB4, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Motor Blower', 'Hepa Filter', 'Medium Filter', 'Equipment'],
                datasets: [{
                    label: 'WB4',
                    data: [
                        variable2.WB4MB,
                        variable2.WB4HF,
                        variable2.WB4MF,
                        variable2.WB4E
                    ],
                    backgroundColor: 'rgba(200, 120, 19, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'WB4',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });

        let chartWB5 = new Chart(WB5, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Motor Blower', 'Hepa Filter', 'Medium Filter', 'Equipment'],
                datasets: [{
                    label: 'WB5',
                    data: [
                        variable2.WB5MB,
                        variable2.WB5HF,
                        variable2.WB5MF,
                        variable2.WB5E
                    ],
                    backgroundColor: 'rgba(220, 200, 219, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'WB5',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });


        let chartWashing = new Chart(Washing, {
            type: 'horizontalBar',
            data:
            {
                labels: ['Fluid Modul', 'DJ Modul'],
                datasets: [{
                    label: 'Washing',
                    data: [
                        variable2.WashingFM,
                        variable2.WashingDM,
                    ],
                    backgroundColor: 'rgba(150, 150, 139, 1)',
                    fill: false,
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }]
            },
            options:
            {
                title: {
                    display: true,
                    text: 'Washing',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true
                }
            }
        });
    </script>
    <script type="text/javascript">
        var variable = <%=json.Serialize(jsvars)%>;
        let Performance = document.getElementById('Performance').getContext('2d');
        // Global Options
        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 15;
        Chart.defaults.global.defaultFontColor = '#777';
        let massPopChart = new Chart(Performance, {
            type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
            data: {
                labels: ['P32', 'P00', 'P33', 'P31', 'P04', 'P34', 'P14', 'P01', 'P02', 'P29', 'WB1', 'WB2', 'WB3', 'WB4', 'WB5', 'Washing', 'MovableTank'],
                datasets: [{
                    label: 'Breakdown',
                    data: [
                        variable.P32B,
                        variable.P00B,
                        variable.P33B,
                        variable.P31B,
                        variable.P04B,
                        variable.P34B,
                        variable.P14B,
                        variable.P01B,
                        variable.P02B,
                        variable.P29B,
                        variable.WB1B,
                        variable.WB2B,
                        variable.WB3B,
                        variable.WB4B,
                        variable.WB5B,
                        variable.WashingB,
                        variable.MVB
                    ],
                    backgroundColor: 'rgba(78, 160, 232, 0.7)',
                    /*backgroundColor: [
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)',
                        'rgba(255, 99, 132, 0.6)'
                    ],*/
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }, {
                    label: 'Corrective',
                    data: [
                        variable.P32C,
                        variable.P00C,
                        variable.P33C,
                        variable.P31C,
                        variable.P04C,
                        variable.P34C,
                        variable.P14C,
                        variable.P01C,
                        variable.P02C,
                        variable.P29C,
                        variable.WB1C,
                        variable.WB2C,
                        variable.WB3C,
                        variable.WB4C,
                        variable.WB5C,
                        variable.WashingC,
                        variable.MVC
                    ],
                    backgroundColor: 'red',
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                    }, {
                        label: 'Improvement',
                        data: [
                            variable.P32I,
                            variable.P00I,
                            variable.P33I,
                            variable.P31I,
                            variable.P04I,
                            variable.P34I,
                            variable.P14I,
                            variable.P01I,
                            variable.P02I,
                            variable.P29I,
                            variable.WB1I,
                            variable.WB2I,
                            variable.WB3I,
                            variable.WB4I,
                            variable.WB5I,
                            variable.WashingI,
                            variable.MVI
                        ],
                        backgroundColor: 'blue',
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }, {
                        label: 'Lainnya',
                        data: [
                            variable.P32L,
                            variable.P00L,
                            variable.P33L,
                            variable.P31L,
                            variable.P04L,
                            variable.P34L,
                            variable.P14L,
                            variable.P01L,
                            variable.P02L,
                            variable.P29L,
                            variable.WB1L,
                            variable.WB2L,
                            variable.WB3L,
                            variable.WB4L,
                            variable.WB5L,
                            variable.WashingL,
                            variable.MVL
                        ],
                        backgroundColor: 'green',
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }]
            },
            options: {
                title: {
                    display: true,
                    text: 'Total Performance Process',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true

                }
            }
        });
    </script>
    <script type="text/javascript">
        var variable3 = <%=json.Serialize(jsvars)%>;
        let TimePerformanceP = document.getElementById('TimePerformance').getContext('2d');
        // Global Options
        Chart.defaults.global.defaultFontFamily = 'Lato';
        Chart.defaults.global.defaultFontSize = 15;
        Chart.defaults.global.defaultFontColor = '#777';
        let ChartTime = new Chart(TimePerformanceP, {
            type: 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
            data: {
                labels: ['P32', 'P00', 'P33', 'P31', 'P04', 'P34', 'P14', 'P01', 'P02', 'P29', 'WB1', 'WB2', 'WB3', 'WB4', 'WB5', 'Washing','MovableTank'],
                datasets: [{
                    label: 'Breakdown Time (Jam)',
                    data: [
                        variable3.P32BT,
                        variable3.P00BT,
                        variable3.P33BT,
                        variable3.P31BT,
                        variable3.P04BT,
                        variable3.P34BT,
                        variable3.P14BT,
                        variable3.P01BT,
                        variable3.P02BT,
                        variable3.P29BT,
                        variable3.WB1BT,
                        variable3.WB2BT,
                        variable3.WB3BT,
                        variable3.WB4BT,
                        variable3.WB5BT,
                        variable3.WashingBT,
                        variable3.MVBT
                    ],
                    backgroundColor: 'rgba(12, 34, 113, 0.7)',
                    /*backgroundColor: [
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)',
                        'rgba(255, 99, 132, 0.6)'
                    ],*/
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                }, {
                    label: 'Corrective Time (Jam)',
                    data: [
                        variable3.P32CT,
                        variable3.P00CT,
                        variable3.P33CT,
                        variable3.P31CT,
                        variable3.P04CT,
                        variable3.P34CT,
                        variable3.P14CT,
                        variable3.P01CT,
                        variable3.P02CT,
                        variable3.P29CT,
                        variable3.WB1CT,
                        variable3.WB2CT,
                        variable3.WB3CT,
                        variable3.WB4CT,
                        variable3.WB5CT,
                        variable3.WashingCT,
                        variable3.MVCT
                    ],
                    backgroundColor: 'green',
                    borderWidth: 1,
                    borderColor: '#777',
                    hoverBorderWidth: 3,
                    hoverBorderColor: '#000'
                    }, {
                        label: 'Improvement Time (Jam)',
                        data: [
                            variable3.P32IT,
                            variable3.P00IT,
                            variable3.P33IT,
                            variable3.P31IT,
                            variable3.P04IT,
                            variable3.P34IT,
                            variable3.P14IT,
                            variable3.P01IT,
                            variable3.P02IT,
                            variable3.P29IT,
                            variable3.WB1IT,
                            variable3.WB2IT,
                            variable3.WB3IT,
                            variable3.WB4IT,
                            variable3.WB5IT,
                            variable3.WashingIT,
                            variable3.MVIT
                        ],
                        backgroundColor: 'rgba(122, 234, 153, 0.5)',
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }, {
                        label: 'Others Time (Jam)',
                        data: [
                            variable3.P32LT,
                            variable3.P00LT,
                            variable3.P33LT,
                            variable3.P31LT,
                            variable3.P04LT,
                            variable3.P34LT,
                            variable3.P14LT,
                            variable3.P01LT,
                            variable3.P02LT,
                            variable3.P29LT,
                            variable3.WB1LT,
                            variable3.WB2LT,
                            variable3.WB3LT,
                            variable3.WB4LT,
                            variable3.WB5LT,
                            variable3.WashingLT,
                            variable3.MVLT
                        ],
                        backgroundColor: 'blue',
                        borderWidth: 1,
                        borderColor: '#777',
                        hoverBorderWidth: 3,
                        hoverBorderColor: '#000'
                    }]
            },
            options: {
                title: {
                    display: true,
                    text: 'Time Performance Process',
                    fontSize: 25
                },
                legend: {
                    display: true,
                    position: 'right',
                    labels: {
                        fontColor: '#000'
                    }
                },
                layout: {
                    padding: {
                        left: 50,
                        right: 0,
                        bottom: 0,
                        top: 0
                    }
                },
                tooltips: {
                    enabled: true

                }
            }
        });
    </script>
    <!--Js Tambahan-->
    <script src="../Additional-File/js/jquery-3.4.1.js"></script>
    <script src="../Additional-File/js/jquery-3.4.1.slim.min.js"></script>
    <script src="../Additional-File/js/popper.min.js"></script>
    <!--Js Bootstrap4.4.1-->
    <script src="../Bootstrap4/js/bootstrap.js"></script>
    <script src="../Bootstrap4/js/bootstrap.min.js"></script>
</body>
</html>
