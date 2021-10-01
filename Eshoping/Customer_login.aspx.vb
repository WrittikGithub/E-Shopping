Imports System.Data
Imports System.Data.SqlClient
Partial Class Customer_login
    Inherits System.Web.UI.Page
    Dim cmd As SqlCommand
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            con.Open()
            cmd = New SqlCommand("select * from Customer where cid='" + TextBox1.Text + "' and cpass='" + TextBox2.Text + "'", con)
            Dim dr As SqlDataReader

            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("cid") = TextBox1.Text
                Response.Redirect("Customer_product_search.aspx")
            Else
                MsgBox("You enter wrong password", MsgBoxStyle.YesNo)
            End If
        Catch ex As Exception
        End Try
        con.Close()
    End Sub
End Class
