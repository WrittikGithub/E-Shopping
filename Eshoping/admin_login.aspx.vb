Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_login
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select * from Admin where aid='" + TextBox1.Text + "' and apass='" + TextBox3.Text + "'", con)
            Dim dr As SqlDataReader

            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("aid") = TextBox1.Text
                Response.Redirect("After_login_home.aspx")
            Else
                MsgBox("enter wrong password", MsgBoxStyle.YesNo)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub
End Class
