Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_change_password
    Inherits System.Web.UI.Page
    Dim cmd, cmd1 As New SqlCommand
    Dim dr, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            If TextBox3.Text <> TextBox2.Text Then
                MsgBox("You have enter worong old password", MsgBoxStyle.OkCancel)
            Else
                cmd1 = New SqlCommand("update Admin set apass='" + TextBox5.Text + "' where aid='" + TextBox1.Text + "'", con)
                cmd1.ExecuteReader()
                Label6.Text = "Your Password Update Successfully"
            End If
        Catch ex As Exception

        End Try

        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("aid")
        con.Open()
        Try
            cmd = New SqlCommand("select * from  Admin where aid='" + TextBox1.Text + "' ", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox3.Text = dr(1).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
