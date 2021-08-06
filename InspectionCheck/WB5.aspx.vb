Imports System.Data.SqlClient
Imports System.Data
Public Class WB5
    Inherits System.Web.UI.Page
    Public SQL As New SQLControl
    Dim bulan As String
    Dim tahun As String
    Dim Namabulan As String
    Public Flag As GlobalVariable
    Public Sub LoadGrid(Optional Query As String = "")
        If Query = "" Then
            If Flag.FlagMode = False Then
                If Cb_Week.SelectedValue = "All" Then
                    SQL.ExecQuery("SELECT Waktu.ID, SKID.InspectionCheck, SKID.Standard, SKID.Week, Waktu.Result, Waktu.Tanggal, Waktu.Remark, Waktu.PIC, Waktu.Bulan FROM SKID INNER JOIN Waktu ON SKID.ID = Waktu.Idc WHERE Waktu.Bulan = '" & Namabulan & "' AND Waktu.Tahun = '" & tahun & "' AND SKID.SKID LIKE '%WB5%' AND (Result IS NULL OR Result = '' OR Tanggal IS NULL OR Tanggal = '' OR Remark IS NULL OR Remark = '' OR PIC IS NULL OR PIC = '');")

                Else
                    SQL.ExecQuery("SELECT Waktu.ID, SKID.InspectionCheck, SKID.Standard, SKID.Week, Waktu.Result, Waktu.Tanggal, Waktu.Remark, Waktu.PIC, Waktu.Bulan FROM SKID INNER JOIN Waktu ON SKID.ID = Waktu.Idc WHERE Waktu.Bulan = '" & Namabulan & "' AND Waktu.Tahun = '" & tahun & "' AND SKID.Week = '" & Cb_Week.SelectedValue & "' AND SKID.SKID LIKE '%WB5%' AND (Result IS NULL OR Result = '' OR Tanggal IS NULL OR Tanggal = '' OR Remark IS NULL OR Remark = '' OR PIC IS NULL OR PIC = '');")
                End If
            ElseIf Flag.FlagMode = True Then
                If Cb_Week.SelectedValue = "All" Then
                    SQL.ExecQuery("SELECT Waktu.ID, SKID.InspectionCheck, SKID.Standard, SKID.Week, Waktu.Result, Waktu.Tanggal, Waktu.Remark, Waktu.PIC, Waktu.Bulan FROM SKID INNER JOIN Waktu ON SKID.ID = Waktu.Idc WHERE Waktu.Bulan = '" & Namabulan & "' AND Waktu.Tahun = '" & tahun & "' AND SKID.SKID LIKE '%WB5%';")

                Else
                    SQL.ExecQuery("SELECT Waktu.ID, SKID.InspectionCheck, SKID.Standard, SKID.Week, Waktu.Result, Waktu.Tanggal, Waktu.Remark, Waktu.PIC, Waktu.Bulan FROM SKID INNER JOIN Waktu ON SKID.ID = Waktu.Idc WHERE Waktu.Bulan = '" & Namabulan & "' AND Waktu.Tahun = '" & tahun & "' AND SKID.Week = '" & Cb_Week.SelectedValue & "' AND SKID.SKID LIKE '%WB5%';")
                End If
            End If
        Else
            SQL.ExecQuery(Query)
        End If
        If SQL.HasException(True) Then Exit Sub
        RptTampil.DataSource = SQL.DBDT
        RptTampil.DataBind()
    End Sub
    Protected Sub tampil()
        tahun = Left(Tb_Tanggal.Text, 4)
        bulan = Mid(Tb_Tanggal.Text, 6, 2)
        If bulan = "01" Then
            Namabulan = "Januari"
            LoadGrid()
        ElseIf bulan = "02" Then
            Namabulan = "Februari"
            LoadGrid()
        ElseIf bulan = "03" Then
            Namabulan = "Maret"
            LoadGrid()
        ElseIf bulan = "04" Then
            Namabulan = "April"
            LoadGrid()
        ElseIf bulan = "05" Then
            Namabulan = "Mei"
            LoadGrid()
        ElseIf bulan = "06" Then
            Namabulan = "Juni"
            LoadGrid()
        ElseIf bulan = "07" Then
            Namabulan = "Juli"
            LoadGrid()
        ElseIf bulan = "08" Then
            Namabulan = "Agustus"
            LoadGrid()
        ElseIf bulan = "09" Then
            Namabulan = "September"
            LoadGrid()
        ElseIf bulan = "10" Then
            Namabulan = "Oktober"
            LoadGrid()
        ElseIf bulan = "11" Then
            Namabulan = "November"
            LoadGrid()
        ElseIf bulan = "12" Then
            Namabulan = "Desember"
            LoadGrid()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Bt_Masuk.Attributes.Add("AutoPostback", "true")
        hide()
        tampil()
    End Sub
    Private Sub addparam()
        SQL.AddParam("@id", "" & Tb_No.Text & "")
        SQL.AddParam("@ic", "" & Tb_IC.Text & "")
        SQL.AddParam("@standard", "" & Tb_Standard.Text & "")
        SQL.AddParam("@week", "" & Tb_Week.Text & "")
        SQL.AddParam("@result", "" & Cb_Result.SelectedValue & "")
        SQL.AddParam("@tanggal", "" & Tb_Tanggal.Text & "")
        SQL.AddParam("@remark", "" & Tb_Remark.Text & "")
    End Sub
    Private Overloads Sub update()
        addparam()
        If Cb_PIC.SelectedValue = "Others" Then
            Tb_PIC.Visible = True
            LoadGrid("UPDATE Waktu SET Result = @result, Tanggal = @tanggal, PIC = '" & Tb_PIC.Text & "', Remark = @remark WHERE ID = @id;")
            If SQL.HasException(True) Then Exit Sub
        Else
            Tb_PIC.Visible = False
            LoadGrid("UPDATE Waktu SET Result = @result, Tanggal = @tanggal, PIC = '" & Cb_PIC.Text & "', Remark = @remark WHERE ID = @id;")
            If SQL.HasException(True) Then Exit Sub
        End If
    End Sub
    Private Sub bersih()
        Cb_Result.SelectedValue = ""
        Tb_Username.Text = String.Empty
        Tb_Remark.Text = String.Empty
    End Sub

    Protected Sub Bt_Simpan_Click(sender As Object, e As EventArgs)
        update()
        tampil()
        bersih()
    End Sub

    Protected Sub Cb_PIC_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Cb_PIC.SelectedIndexChanged
        hide()
    End Sub

    Protected Sub Tb_Tanggal_TextChanged(sender As Object, e As EventArgs)
        tampil()
    End Sub

    Protected Sub Cb_Week_SelectedIndexChanged(sender As Object, e As EventArgs)
        tampil()
    End Sub
    Protected Sub hide()
        If Cb_PIC.SelectedValue = "Others" Then
            Tb_PIC.Visible = True
            Lb_PIC.Visible = True
        Else
            Tb_PIC.Visible = False
            Lb_PIC.Visible = False
        End If
        If Flag.FlagMode = False Then
            Bt_Admin.Visible = True
            Lb_Mode.Text = "Dalam (Mode Teknisi)"
            Bt_Out.Visible = False
        ElseIf Flag.FlagMode = True Then
            Bt_Admin.Visible = False
            Lb_Mode.Text = "Dalam (Mode Admin)"
            Bt_Out.Visible = True
        End If
    End Sub

    Protected Sub Bt_Masuk_Click(sender As Object, e As EventArgs)
        If Tb_Username.Text = "Admin" And Tb_Password.Text = "1234" Then
            Flag.FlagMode = True
        End If
        If Flag.FlagMode = False Then
            Bt_Admin.Visible = True
            Lb_Mode.Text = "Dalam (Mode Teknisi)"
            Bt_Out.Visible = False
        ElseIf Flag.FlagMode = True Then
            Bt_Admin.Visible = False
            Lb_Mode.Text = "Dalam (Mode Admin)"
            Bt_Out.Visible = True
        End If
        tampil()
    End Sub

    Protected Sub Bt_Out_Click(sender As Object, e As EventArgs)
        Flag.FlagMode = False
        If Flag.FlagMode = False Then
            Bt_Admin.Visible = True
            Lb_Mode.Text = "Dalam (Mode Teknisi)"
            Bt_Out.Visible = False
        ElseIf Flag.FlagMode = True Then
            Bt_Admin.Visible = False
            Lb_Mode.Text = "Dalam (Mode Admin)"
            Bt_Out.Visible = True
        End If
        tampil()
    End Sub
End Class