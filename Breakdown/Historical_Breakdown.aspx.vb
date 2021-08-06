Imports System.Data.SqlClient
Public Class Historical_Breakdown
    Inherits System.Web.UI.Page

    Public SQL As New SQLControl
    Public Sub LoadGrid(Optional Query As String = "")
        If Query = "" Then
            SQL.ExecQuery("SELECT * FROM Breakdown;")
        Else
            SQL.ExecQuery(Query)
        End If
        If SQL.HasException(True) Then Exit Sub
        RptTampil.DataSource = SQL.DBDT
        RptTampil.DataBind()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadGrid()
    End Sub

    Protected Sub Bt_Simpan_Click(sender As Object, e As EventArgs)
        update()
        LoadGrid()
    End Sub
    Protected Sub addparam()
        SQL.AddParam("@id", "" & Tb_No.Text & "")
        SQL.AddParam("@jenis", "" & Cb_Jenis.Text & "")
        SQL.AddParam("@area", "" & Cb_Area.Text & "")
        SQL.AddParam("@modul", "" & Cb_Modul.Text & "")
        SQL.AddParam("@issue", "" & Tb_Issue.Text & "")
        SQL.AddParam("@tanggal", "" & Tb_Tanggal.Text & "")
        SQL.AddParam("@action", "" & Tb_Action.Text & "")
        SQL.AddParam("@start", "" & Tb_Start.Text & "")
        SQL.AddParam("@finish", "" & Tb_Finish.Text & "")
        SQL.AddParam("@improvement", "" & Tb_Improvement.Text & "")
        SQL.AddParam("@sparepart", "" & Tb_Sparepart.Text & "")
        SQL.AddParam("@pic", "" & Tb_PIC.Text & "")
    End Sub

    Protected Sub update()
        addparam()
        LoadGrid("UPDATE Breakdown SET Issue = @issue, Tanggal = @tanggal, Action = @action, Start = @start, Finish = @finish, Improvement = @improvement, Sparepart = @sparepart, PIC = @pic WHERE ID = @id;")
        If SQL.HasException(True) Then Exit Sub
    End Sub
    Protected Sub hapus()
        addparam()
        LoadGrid("DELETE Breakdown WHERE ID = @id")
    End Sub


    Protected Sub Bt_Hapus_Click(sender As Object, e As EventArgs)
        hapus()
        LoadGrid()
    End Sub
End Class