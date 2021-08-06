Imports System.Data.SqlClient
Imports System.Configuration

Public Class Chart_Breakdown
    Inherits System.Web.UI.Page
    Protected json As New System.Web.Script.Serialization.JavaScriptSerializer
    Protected jsvars As New Hashtable
    Dim con As SqlConnection
    Dim cmd As SqlCommand
    Dim P32B, P00B, P33B, P31B, P04B, P34B, P14B, P01B, P02B, P29B, WB1B, WB2B, WB3B, WB4B, WB5B, WashingB, MVB As Integer
    Dim P32C, P00C, P33C, P31C, P04C, P34C, P14C, P01C, P02C, P29C, WB1C, WB2C, WB3C, WB4C, WB5C, WashingC, MVC As Integer
    Dim P32I, P00I, P33I, P31I, P04I, P34I, P14I, P01I, P02I, P29I, WB1I, WB2I, WB3I, WB4I, WB5I, WashingI, MVI As Integer
    Dim P32L, P00L, P33L, P31L, P04L, P34L, P14L, P01L, P02L, P29L, WB1L, WB2L, WB3L, WB4L, WB5L, WashingL, MVL As Integer
    Dim MC1, MC2, MC3, PM, TM, STG, CM, FM, DJM, DM, EL, MV, P7A, P8A, P9A, MP, MB, HF, MF, E As Integer
    Dim query As String
    Dim P32BT, P00BT, P33BT, P31BT, P04BT, P34BT, P14BT, P01BT, P02BT, P29BT, WB1BT, WB2BT, WB3BT, WB4BT, WB5BT, WashingBT, MVBT As Single
    Dim P32CT, P00CT, P33CT, P31CT, P04CT, P34CT, P14CT, P01CT, P02CT, P29CT, WB1CT, WB2CT, WB3CT, WB4CT, WB5CT, WashingCT, MVCT As Single
    Dim P32IT, P00IT, P33IT, P31IT, P04IT, P34IT, P14IT, P01IT, P02IT, P29IT, WB1IT, WB2IT, WB3IT, WB4IT, WB5IT, WashingIT, MVIT As Single
    Dim P32LT, P00LT, P33LT, P31LT, P04LT, P34LT, P14LT, P01LT, P02LT, P29LT, WB1LT, WB2LT, WB3LT, WB4LT, WB5LT, WashingLT, MVLT As Single
    Dim array() As String = {"P32", "P00", "P33", "P31", "P04", "P34", "P14", "P01", "P02", "P29", "WB1", "WB2", "WB3", "WB4", "WB5", "Washing", "MovableTank"}
    'Dim ArrayModul() As String = {"Modul CU100", "Modul CU200", "Modul CU300", "Process Modul", "Transfer Modul", "Storage", "CIP Modul", "Fluid Modul", "Doube Jacket Modul", "Elevator", "DJ Modul", "Main Vessel", "P9 Anex", "P8 Anex", "P7 Anex", "Main Panel", "Motor Blower", "Hepa Filter", "Medium Filter", "Equipment", "SIP Modul", "Drain Modul", "Steam Modul", "BufferTank Modul"}

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Performance()
        MODUL()
        TimePerformance()
    End Sub
    Protected Sub MODUL()

        For index As Integer = 0 To 16
            con = New SqlConnection
            con.ConnectionString = ConfigurationManager.ConnectionStrings("PIC2").ConnectionString
            Try
                con.Open()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Modul CU100%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MC1 = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Modul CU200%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MC2 = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Modul CU300%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MC3 = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Process Modul' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                PM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Transfer Modul%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                TM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Storage%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                STG = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%CIP Modul%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                CM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Fluid Modul%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                FM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Doube Jacket Modul%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                DJM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Elevator%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                EL = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%DJ Modul%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                DM = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Main Vessel%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MV = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%P7 Anex%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                P7A = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%P8 Anex%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                P8A = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%P9 Anex%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                P9A = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Main Panel%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MP = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Motor Blower%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MB = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Hepa Filter%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                HF = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Medium Filter%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                MF = cmd.ExecuteScalar()
                query = "SELECT COUNT(Modul) FROM Breakdown WHERE Area LIKE '%" & array(index) & "%' AND Modul LIKE '%Equipment%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
                cmd = New SqlCommand(query, con)
                E = cmd.ExecuteScalar()
                jsvars.Add("" & array(index) & "MC1", MC1)
                jsvars.Add("" & array(index) & "MC2", MC2)
                jsvars.Add("" & array(index) & "MC3", MC3)
                jsvars.Add("" & array(index) & "PM", PM)
                jsvars.Add("" & array(index) & "TM", TM)
                jsvars.Add("" & array(index) & "STG", STG)
                jsvars.Add("" & array(index) & "CM", CM)
                jsvars.Add("" & array(index) & "FM", FM)
                jsvars.Add("" & array(index) & "DJM", DJM)
                jsvars.Add("" & array(index) & "EL", EL)
                jsvars.Add("" & array(index) & "DM", DM)
                jsvars.Add("" & array(index) & "MV", MV)
                jsvars.Add("" & array(index) & "P7A", P7A)
                jsvars.Add("" & array(index) & "P8A", P8A)
                jsvars.Add("" & array(index) & "P9A", P9A)
                jsvars.Add("" & array(index) & "MP", MP)
                jsvars.Add("" & array(index) & "MB", MB)
                jsvars.Add("" & array(index) & "HF", HF)
                jsvars.Add("" & array(index) & "MF", MF)
                jsvars.Add("" & array(index) & "E", E)
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                con.Dispose()
            End Try
        Next index
    End Sub
    Protected Sub Performance()
        con = New SqlConnection
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PIC2").ConnectionString
        Try
            con.Open()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P32%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P32B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P32%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P32C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P32%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P32I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P32%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P32L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P00%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P00B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P00%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P00C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P00%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P00I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P00%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P00L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P33%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P33B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P33%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P33C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P33%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P33I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P33%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P33L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P31%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P31B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P31%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P31C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P33%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P33I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P31%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P31L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P04%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P04B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P04%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P04C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P04%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P04I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P04%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P04L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P34%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P34B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P34%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P34C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P34%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P34I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P34%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P34L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P14%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P14B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P14%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P14C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P14%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P14I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P14%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P14L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P01%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P01B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P01%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P01C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P01%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P01I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P01%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P01L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P02%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P02B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P02%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P02C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P02%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P02I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P02%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P02L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P29%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P29B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P29%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P29C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P29%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P29I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%P29%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            P29L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB1%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB1B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB1%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB1C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB1%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB1I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB1%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB1L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB2%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB2B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB2%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB2C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB2%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB2I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB2%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB2L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB3%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB3B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB3%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB3C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB3%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB3I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB3%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB3L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB4%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB4B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB4%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB4C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB4%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB4I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB4%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB4L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB5%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB5B = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB5%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB5C = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB5%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB5I = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%WB5%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WB5L = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%Washing%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WashingB = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%Washing%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WashingC = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%Washing%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WashingI = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%Washing%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            WashingL = cmd.ExecuteScalar()

            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%MovableTank%' AND Jenis LIKE '%Breakdown%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            MVB = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%MovableTank%' AND Jenis LIKE '%Corrective%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            MVC = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%MovableTank%' AND Jenis LIKE '%Improvement%' AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            MVI = cmd.ExecuteScalar()
            query = "SELECT COUNT(Jenis) FROM Breakdown WHERE Area LIKE '%MovableTank%' AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "';"
            cmd = New SqlCommand(query, con)
            MVL = cmd.ExecuteScalar()

            jsvars.Add("P32B", P32B)
            jsvars.Add("P32C", P32C)
            jsvars.Add("P32L", P32L)
            jsvars.Add("P32I", P32I)

            jsvars.Add("P00B", P00B)
            jsvars.Add("P00C", P00C)
            jsvars.Add("P00L", P00L)
            jsvars.Add("P00I", P00I)

            jsvars.Add("P33B", P33B)
            jsvars.Add("P33C", P33C)
            jsvars.Add("P33L", P33L)
            jsvars.Add("P33I", P33I)

            jsvars.Add("P31B", P31B)
            jsvars.Add("P31C", P31C)
            jsvars.Add("P31L", P31L)
            jsvars.Add("P31I", P31I)

            jsvars.Add("P04B", P04B)
            jsvars.Add("P04C", P04C)
            jsvars.Add("P04L", P04L)
            jsvars.Add("P04I", P04I)

            jsvars.Add("P34B", P34B)
            jsvars.Add("P34C", P34C)
            jsvars.Add("P34L", P34L)
            jsvars.Add("P34I", P34I)

            jsvars.Add("P14B", P14B)
            jsvars.Add("P14C", P14C)
            jsvars.Add("P14L", P14L)
            jsvars.Add("P14I", P14I)

            jsvars.Add("P01B", P01B)
            jsvars.Add("P01C", P01C)
            jsvars.Add("P01L", P01L)
            jsvars.Add("P01I", P01I)

            jsvars.Add("P02B", P02B)
            jsvars.Add("P02C", P02C)
            jsvars.Add("P02L", P02L)
            jsvars.Add("P02I", P02I)

            jsvars.Add("P29B", P29B)
            jsvars.Add("P29C", P29C)
            jsvars.Add("P29L", P29L)
            jsvars.Add("P29I", P29I)

            jsvars.Add("WB1B", WB1B)
            jsvars.Add("WB1C", WB1C)
            jsvars.Add("WB1L", WB1L)
            jsvars.Add("WB1I", WB1I)

            jsvars.Add("WB2B", WB2B)
            jsvars.Add("WB2C", WB2C)
            jsvars.Add("WB2L", WB2L)
            jsvars.Add("WB2I", WB2I)

            jsvars.Add("WB3B", WB3B)
            jsvars.Add("WB3C", WB3C)
            jsvars.Add("WB3L", WB3L)
            jsvars.Add("WB3I", WB3I)

            jsvars.Add("WB4B", WB4B)
            jsvars.Add("WB4C", WB4C)
            jsvars.Add("WB4L", WB4L)
            jsvars.Add("WB4I", WB4I)

            jsvars.Add("WB5B", WB5B)
            jsvars.Add("WB5C", WB5C)
            jsvars.Add("WB5L", WB5L)
            jsvars.Add("WB5I", WB5I)

            jsvars.Add("WashingB", WashingB)
            jsvars.Add("WashingC", WashingC)
            jsvars.Add("WashingL", WashingL)
            jsvars.Add("WashingI", WashingI)

            jsvars.Add("MVB", MVB)
            jsvars.Add("MVC", MVC)
            jsvars.Add("MVL", MVL)
            jsvars.Add("MVI", MVI)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Dispose()
        End Try
    End Sub


    Protected Sub TimePerformance()
        con = New SqlConnection
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PIC2").ConnectionString
        Try
            con.Open()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P32%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P32BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P32%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P32CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P32%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P32IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P32%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P32LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P00%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P00BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P00%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P00CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P00%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P00IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P00%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P00LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P33%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P33BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P33%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P33CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P33%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P33IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P33%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P33LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P31%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P31BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P31%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P31CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P31%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P31IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P31%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P31LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P04%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P04BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P04%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P04CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P04%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P04IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P04%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P04LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P34%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P34BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P34%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P34CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P34%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P34IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P34%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P34LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P14%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P14BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P14%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P14CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P14%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P14IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P14%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P14LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P01%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P01BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P01%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P01CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P01%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P01IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P01%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P01LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P02%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P02BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P02%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P02CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P02%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P02IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P02%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P02LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P29%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P29BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P29%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P29CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P29%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P29IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%P29%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            P29LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB1%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB1BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB1%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB1CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB1%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB1IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB1%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB1LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB2%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB2BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB2%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB2CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB2%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB2IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB2%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB2LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB3%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB3BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB3%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB3CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB3%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB3IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB3%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB3LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB4%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB4BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB4%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB4CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB4%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB4IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB4%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB4LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB5%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB5BT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB5%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB5CT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB5%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB5IT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%WB5%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WB5LT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%Washing%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WashingBT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%Washing%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WashingCT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%Washing%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WashingIT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%Washing%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            WashingLT = cmd.ExecuteScalar()

            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%MovableTank%') AND JENIS LIKE '%Breakdown%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            MVBT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%MovableTank%') AND JENIS LIKE '%Corrective%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            MVCT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%MovableTank%') AND JENIS LIKE '%Improvement%' AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            MVIT = cmd.ExecuteScalar()
            query = "SELECT ISNULL(SUM(DATEDIFF(SECOND, Start, Finish)*1.00 /(60*60)),0) FROM Breakdown Where (Area LIKE '%MovableTank%') AND Jenis NOT IN ('Breakdown','Corrective','Improvement') AND (Tanggal BETWEEN '" & Tb_TanggalM.Text & "' AND '" & Tb_TanggalA.Text & "');"
            cmd = New SqlCommand(query, con)
            MVLT = cmd.ExecuteScalar()

            jsvars.Add("P32BT", P32BT)
            jsvars.Add("P32CT", P32CT)
            jsvars.Add("P32LT", P32LT)
            jsvars.Add("P32IT", P32IT)

            jsvars.Add("P00BT", P00BT)
            jsvars.Add("P00CT", P00CT)
            jsvars.Add("P00LT", P00LT)
            jsvars.Add("P00IT", P00IT)

            jsvars.Add("P33BT", P33BT)
            jsvars.Add("P33CT", P33CT)
            jsvars.Add("P33LT", P33LT)
            jsvars.Add("P33IT", P33IT)

            jsvars.Add("P31BT", P31BT)
            jsvars.Add("P31CT", P31CT)
            jsvars.Add("P31LT", P31LT)
            jsvars.Add("P31IT", P31IT)

            jsvars.Add("P04BT", P04BT)
            jsvars.Add("P04CT", P04CT)
            jsvars.Add("P04LT", P04LT)
            jsvars.Add("P04IT", P04IT)

            jsvars.Add("P34BT", P34BT)
            jsvars.Add("P34CT", P34CT)
            jsvars.Add("P34LT", P34LT)
            jsvars.Add("P34IT", P34IT)

            jsvars.Add("P14BT", P14BT)
            jsvars.Add("P14CT", P14CT)
            jsvars.Add("P14LT", P14LT)
            jsvars.Add("P14IT", P14IT)

            jsvars.Add("P01BT", P01BT)
            jsvars.Add("P01CT", P01CT)
            jsvars.Add("P01LT", P01LT)
            jsvars.Add("P01IT", P01IT)

            jsvars.Add("P02BT", P02BT)
            jsvars.Add("P02CT", P02CT)
            jsvars.Add("P02LT", P02LT)
            jsvars.Add("P02IT", P02IT)

            jsvars.Add("P29BT", P29BT)
            jsvars.Add("P29CT", P29CT)
            jsvars.Add("P29LT", P29LT)
            jsvars.Add("P29IT", P29IT)

            jsvars.Add("WB1BT", WB1BT)
            jsvars.Add("WB1CT", WB1CT)
            jsvars.Add("WB1LT", WB1LT)
            jsvars.Add("WB1IT", WB1IT)

            jsvars.Add("WB2BT", WB2BT)
            jsvars.Add("WB2CT", WB2CT)
            jsvars.Add("WB2LT", WB2LT)
            jsvars.Add("WB2IT", WB2IT)

            jsvars.Add("WB3BT", WB3BT)
            jsvars.Add("WB3CT", WB3CT)
            jsvars.Add("WB3LT", WB3LT)
            jsvars.Add("WB3IT", WB3IT)

            jsvars.Add("WB4BT", WB4BT)
            jsvars.Add("WB4CT", WB4CT)
            jsvars.Add("WB4LT", WB4LT)
            jsvars.Add("WB4IT", WB4IT)

            jsvars.Add("WB5BT", WB5BT)
            jsvars.Add("WB5CT", WB5CT)
            jsvars.Add("WB5LT", WB5LT)
            jsvars.Add("WB5IT", WB5IT)

            jsvars.Add("WashingBT", WashingBT)
            jsvars.Add("WashingCT", WashingCT)
            jsvars.Add("WashingLT", WashingLT)
            jsvars.Add("WashingIT", WashingIT)

            jsvars.Add("MVBT", MVBT)
            jsvars.Add("MVCT", MVCT)
            jsvars.Add("MVLT", MVLT)
            jsvars.Add("MVIT", MVIT)
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Dispose()
        End Try
    End Sub
End Class