Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net.Mail
Imports System.Net
Partial Class admin_forgot_pass
    Inherits System.Web.UI.Page
    Dim cmd, cmd2 As New SqlCommand
    Dim dr, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            Label7.Text = rand1.Next(3000)
            TextBox4.Text = Val(Label7.Text)
        Next
        Dim fromAdress As String = TextBox7.Text
        Dim fromPassword As String = TextBox8.Text
        Dim mailSubject As String = TextBox10.Text
        Dim mailBody As String = TextBox4.Text
        Dim toAddress As String = TextBox1.Text
        Dim smtp As New SmtpClient("smtp.gmail.com", 587)
        smtp.EnableSsl = True
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential(fromAdress, fromPassword)
        Dim mail As New MailMessage(fromAdress, toAddress, mailSubject, mailBody)
        Try
            smtp.Send(mail)
        Catch ex As Exception
            Label16.Text = ex.Message.ToString
        End Try
        con.Close()

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            Label7.Text = rand1.Next(3000)
            TextBox4.Text = Val(Label7.Text)
        Next
        Dim fromAdress As String = TextBox7.Text
        Dim fromPassword As String = TextBox8.Text
        Dim mailSubject As String = TextBox10.Text
        Dim mailBody As String = TextBox4.Text
        Dim toAddress As String = TextBox1.Text
        Dim smtp As New SmtpClient("smtp.gmail.com", 587)
        smtp.EnableSsl = True
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential(fromAdress, fromPassword)
        Dim mail As New MailMessage(fromAdress, toAddress, mailSubject, mailBody)
        Try
            smtp.Send(mail)
        Catch ex As Exception
            Label16.Text = ex.Message.ToString
        End Try
        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            If Val(Label7.Text) = Val(TextBox3.Text) Then
                cmd = New SqlCommand("select * from Admin where aemail='" + TextBox1.Text + "'", con)
                dr = cmd.ExecuteReader
                If dr.Read Then
                    TextBox9.Text = dr(1).ToString

                End If
            Else
                MsgBox("you are wrong user", MsgBoxStyle.Information)
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

            cmd.Dispose()

        End Try
    End Sub
End Class
