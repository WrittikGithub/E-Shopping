Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net.Mail
Imports System.Net
Partial Class conf_booking
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            cmd2 = New SqlCommand("insert into Booking(bid,cid,bdate,pmode,trs) values(@bid,@cid,@bdate,@pmode,@trs)", con)
            cmd2.Parameters.AddWithValue("@bid", Label10.Text.Trim())
            cmd2.Parameters.AddWithValue("@cid", Label24.Text.Trim())
            cmd2.Parameters.AddWithValue("@bdate", Label8.Text.Trim())
            cmd2.Parameters.AddWithValue("@pmode", Label25.Text.Trim())
            cmd2.Parameters.AddWithValue("@trs", Label14.Text.Trim())
            cmd2.ExecuteReader()
            Label22.Text = "Booking is Successful"
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            con.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label8.Text = Date.Today
        Label10.Text = Session("bid")
        Label14.Text = Session("trs")
        Label24.Text = Session("cid")
    End Sub
End Class
