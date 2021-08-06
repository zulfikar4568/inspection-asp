Imports System.Data.SqlClient
Public Class New_Breakdown
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pic()
        jenis()
        jenismodul()
    End Sub

    Protected Sub Tb_Tambah_Click(sender As Object, e As EventArgs)
        tambah()
        bersih()
    End Sub
    Protected Sub tambah()
        Dim con As New SqlConnection
        Dim cmd As New SqlCommand
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PIC2").ConnectionString
        con.Open()
        cmd.Connection = con
        If Cb_PIC.Text = "Lainnya" And Cb_Jenis.Text = "Lainnya" Then
            cmd.CommandText = "INSERT INTO Breakdown (Jenis,Area,Modul,Issue,Tanggal,Action,Start,Finish,Improvement,Sparepart,PIC) VALUES ('" & Tb_Jenis.Text & "','" & Cb_Area.Text & "','" & Cb_Modul.Text & "','" & Tb_Issue.Text & "','" & Tb_Tanggal.Text & "','" & Tb_Action.Text & "','" & Tb_StartAction.Text & "','" & Tb_FinishAction.Text & "','" & Tb_Improvement.Text & "','" & Tb_Sparepart.Text & "','" & Tb_PIC.Text & "');"
        ElseIf Cb_PIC.Text = "Lainnya" And Cb_Jenis.Text <> "Lainnya" Then
            cmd.CommandText = "INSERT INTO Breakdown (Jenis,Area,Modul,Issue,Tanggal,Action,Start,Finish,Improvement,Sparepart,PIC) VALUES ('" & Cb_Jenis.Text & "','" & Cb_Area.Text & "','" & Cb_Modul.Text & "','" & Tb_Issue.Text & "','" & Tb_Tanggal.Text & "','" & Tb_Action.Text & "','" & Tb_StartAction.Text & "','" & Tb_FinishAction.Text & "','" & Tb_Improvement.Text & "','" & Tb_Sparepart.Text & "','" & Tb_PIC.Text & "');"
        ElseIf Cb_PIC.Text <> "Lainnya" And Cb_Jenis.Text = "Lainnya" Then
            cmd.CommandText = "INSERT INTO Breakdown (Jenis,Area,Modul,Issue,Tanggal,Action,Start,Finish,Improvement,Sparepart,PIC) VALUES ('" & Tb_Jenis.Text & "','" & Cb_Area.Text & "','" & Cb_Modul.Text & "','" & Tb_Issue.Text & "','" & Tb_Tanggal.Text & "','" & Tb_Action.Text & "','" & Tb_StartAction.Text & "','" & Tb_FinishAction.Text & "','" & Tb_Improvement.Text & "','" & Tb_Sparepart.Text & "','" & Cb_PIC.Text & "');"
        ElseIf Cb_PIC.Text <> "Lainnya" And Cb_Jenis.Text <> "Lainnya" Then
            cmd.CommandText = "INSERT INTO Breakdown (Jenis,Area,Modul,Issue,Tanggal,Action,Start,Finish,Improvement,Sparepart,PIC) VALUES ('" & Cb_Jenis.Text & "','" & Cb_Area.Text & "','" & Cb_Modul.Text & "','" & Tb_Issue.Text & "','" & Tb_Tanggal.Text & "','" & Tb_Action.Text & "','" & Tb_StartAction.Text & "','" & Tb_FinishAction.Text & "','" & Tb_Improvement.Text & "','" & Tb_Sparepart.Text & "','" & Cb_PIC.Text & "');"
        End If
        cmd.ExecuteNonQuery()
        cmd.Dispose()
        con.Close()
        jenismodul()
    End Sub

    Protected Sub jenis()
        If Cb_Jenis.Text = "Lainnya" Then
            Tb_Jenis.Visible = True
            Lb_Jenis2.Visible = True
        Else
            Tb_Jenis.Visible = False
            Lb_Jenis2.Visible = False
        End If
    End Sub
    Protected Sub pic()
        If Cb_PIC.Text = "Lainnya" Then
            Tb_PIC.Visible = True
            Lb_PIC2.Visible = True
        Else
            Tb_PIC.Visible = False
            Lb_PIC2.Visible = False
        End If
    End Sub
    Protected Sub bersih()
        Tb_Issue.Text = String.Empty
        Tb_Tanggal.Text = String.Empty
        Tb_Action.Text = String.Empty
        Tb_Improvement.Text = String.Empty
        Tb_Sparepart.Text = String.Empty
        Tb_Jenis.Text = String.Empty
        Tb_PIC.Text = String.Empty
        Tb_StartAction.Text = String.Empty
        Tb_FinishAction.Text = String.Empty
    End Sub

    Protected Sub Cb_PIC_SelectedIndexChanged(sender As Object, e As EventArgs)
        pic()
        jenis()
        jenismodul()
    End Sub

    Protected Sub Cb_Area_SelectedIndexChanged(sender As Object, e As EventArgs)
        Cb_Modul.Items.Clear()
        pic()
        jenis()
        jenismodul()
    End Sub
    Protected Sub Cb_Jenis_SelectedIndexChanged(sender As Object, e As EventArgs)
        pic()
        jenis()
        jenismodul()
    End Sub
    Protected Sub jenismodul()
        Dim p32(20) As ListItem
        p32(0) = New ListItem("Modul CU100", "Modul CU100")
        p32(1) = New ListItem("Modul CU200", "Modul CU200")
        p32(2) = New ListItem("Modul CU300", "Modul CU300")
        p32(3) = New ListItem("Process Modul", "Process Modul")
        p32(4) = New ListItem("Transfer Modul", "Transfer Modul")
        p32(5) = New ListItem("Storage", "Storage")
        p32(6) = New ListItem("CIP Modul", "CIP Modul")
        p32(7) = New ListItem("Fluid Modul", "Fluid Modul")
        p32(8) = New ListItem("Doube Jacket Modul", "Doube Jacket Modul")
        p32(9) = New ListItem("Elevator", "Elevator")

        Dim p31_p33_p00(20) As ListItem
        p31_p33_p00(0) = New ListItem("Modul CU100", "Modul CU100")
        p31_p33_p00(1) = New ListItem("Modul CU200", "Modul CU200")
        p31_p33_p00(2) = New ListItem("Modul CU300", "Modul CU300")
        p31_p33_p00(3) = New ListItem("Process Modul", "Process Modul")
        p31_p33_p00(4) = New ListItem("Transfer Modul", "Transfer Modul")
        p31_p33_p00(5) = New ListItem("Storage", "Storage")
        p31_p33_p00(6) = New ListItem("CIP Modul", "CIP Modul")
        p31_p33_p00(7) = New ListItem("Fluid Modul", "Fluid Modul")
        p31_p33_p00(8) = New ListItem("Doube Jacket Modul", "Doube Jacket Modul")

        Dim p04(20) As ListItem
        p04(0) = New ListItem("DJ Modul", "DJ Modul")
        p04(1) = New ListItem("Fluid Modul", "Fluid Modul")
        p04(2) = New ListItem("Main Vessel", "Main Vessel")
        p04(3) = New ListItem("P9 Anex", "P9 Anex")

        Dim p34_p02(20) As ListItem
        p34_p02(0) = New ListItem("DJ Modul", "DJ Modul")
        p34_p02(1) = New ListItem("Fluid Modul", "Fluid Modul")
        p34_p02(2) = New ListItem("Main Vessel", "Main Vessel")

        Dim p14_p01(20) As ListItem
        p14_p01(0) = New ListItem("DJ Modul", "DJ Modul")
        p14_p01(1) = New ListItem("Fluid Modul", "Fluid Modul")
        p14_p01(2) = New ListItem("Main Vessel", "Main Vessel")
        p14_p01(3) = New ListItem("P8 Anex", "P8 Anex")

        Dim p29(20) As ListItem
        p29(0) = New ListItem("DJ Modul", "DJ Modul")
        p29(1) = New ListItem("Fluid Modul", "Fluid Modul")
        p29(2) = New ListItem("Main Vessel", "Main Vessel")
        p29(3) = New ListItem("P7 Anex", "P7 Anex")
        p29(4) = New ListItem("Main Panel", "Main Panel")

        Dim wb(20) As ListItem
        wb(0) = New ListItem("Motor Blower", "Motor Blower")
        wb(1) = New ListItem("Hepa Filter", "Hepa Filter")
        wb(2) = New ListItem("Medium Filter", "Medium Filter")
        wb(3) = New ListItem("Equipment", "Equipment")

        Dim washing(20) As ListItem
        washing(0) = New ListItem("DJ Modul", "DJ Modul")
        washing(1) = New ListItem("Fluid Modul", "Fluid Modul")

        If Cb_Area.Text = "P32" Then
            For index As Integer = 0 To 9
                Cb_Modul.Items.Add(p32(index))
            Next
        End If
        If Cb_Area.Text = "P00" Or Cb_Area.Text = "P31" Or Cb_Area.Text = "P33" Then
            For index As Integer = 0 To 8
                Cb_Modul.Items.Add(p31_p33_p00(index))
            Next
        End If
        If Cb_Area.Text = "P14" Or Cb_Area.Text = "P01" Then
            For index As Integer = 0 To 3
                Cb_Modul.Items.Add(p14_p01(index))
            Next
        End If
        If Cb_Area.Text = "P04" Then
            For index As Integer = 0 To 3
                Cb_Modul.Items.Add(p04(index))
            Next
        End If
        If Cb_Area.Text = "P34" Or Cb_Area.Text = "P02" Then
            For index As Integer = 0 To 2
                Cb_Modul.Items.Add(p34_p02(index))
            Next
        End If
        If Cb_Area.Text = "P29" Then
            For index As Integer = 0 To 4
                Cb_Modul.Items.Add(p29(index))
            Next
        End If
        If Cb_Area.Text = "WB1" Or Cb_Area.Text = "WB2" Or Cb_Area.Text = "WB3" Or Cb_Area.Text = "WB4" Or Cb_Area.Text = "WB5" Then
            For index As Integer = 0 To 3
                Cb_Modul.Items.Add(wb(index))
            Next
        End If
        If Cb_Area.Text = "Washing" Then
            For index As Integer = 0 To 1
                Cb_Modul.Items.Add(washing(index))
            Next
        End If
        If Cb_Area.Text = "MovableTank" Then
        End If

    End Sub


End Class