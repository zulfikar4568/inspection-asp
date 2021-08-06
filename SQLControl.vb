Imports System.Data.SqlClient
Imports System.Configuration
Public Class SQLControl

    ' CONNECT SQL
    Private DBCon As New SqlConnection(ConfigurationManager.ConnectionStrings("PIC2").ConnectionString)
    Private DBCmd As SqlCommand

    ' DB DATA
    Public DBDA As SqlDataAdapter
    Public DBDT As DataTable
    Public DBDS As DataSet

    ' QUERY PARAMETERS
    Public Params As New List(Of SqlParameter)

    ' QUERY STATICS
    Public RecordCount As Integer
    Public Exception As String


    Public Sub New()

    End Sub
    'Allow Connection override
    Public Sub New(ConnectionString As String)
        DBCon = New SqlConnection(ConnectionString)
    End Sub

    Public Sub ExecQuery(Query As String)
        RecordCount = 0
        Exception = ""

        Try

            DBCon.Open()

            'Create DB Command
            DBCmd = New SqlCommand(Query, DBCon)

            'Load Params Into DB Command
            Params.ForEach(Sub(p) DBCmd.Parameters.Add(p))

            'Clear Params
            Params.Clear()

            'Execute Command  & Fill Dataset
            DBDT = New DataTable
            DBDA = New SqlDataAdapter(DBCmd)
            DBDS = New DataSet()
            DBDA.Fill(DBDS)
            RecordCount = DBDA.Fill(DBDT)



        Catch ex As Exception
            ' Capture Error
            Exception = "ExecQuery Error: " & vbNewLine & ex.Message
        Finally
            ' Close Connection
            If DBCon.State = ConnectionState.Open Then DBCon.Close()
        End Try
    End Sub
    ' Add Parameter
    Public Sub AddParam(Name As String, Value As Object)
        Dim NewParam As New SqlParameter(Name, Value)
        Params.Add(NewParam)
    End Sub

    ' Error Checking
    Public Function HasException(Optional Report As Boolean = False) As Boolean
        If String.IsNullOrEmpty(Exception) Then Return False
        If Report = True Then MsgBox(Exception, MsgBoxStyle.Critical, "Exception")
        Return True
    End Function
End Class
