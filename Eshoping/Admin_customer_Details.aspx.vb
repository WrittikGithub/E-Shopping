Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net.Mail
Imports System.Net
Partial Class Admin_customer_Details
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim fromAdress As String = TextBox3.Text
        Dim fromPassword As String = TextBox4.Text
        Dim mailSubject As String = TextBox5.Text
        Dim mailBody As String = TextBox6.Text
        Dim toAddress As String = TextBox2.Text
        Dim smtp As New SmtpClient("smtp.gmail.com", 587)
        smtp.EnableSsl = True
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential(fromAdress, fromPassword)
        Dim mail As New MailMessage(fromAdress, toAddress, mailSubject, mailBody)
        Try
            smtp.Send(mail)
        Catch ex As Exception
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        TextBox2.Text = GridView1.SelectedRow.Cells(4).Text
    End Sub
End Class
