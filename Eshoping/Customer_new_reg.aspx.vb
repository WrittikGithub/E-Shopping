Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Customer_new_reg
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If TextBox1.Text = "" Then
            Button1.Enabled = False
        Else
            Button1.Enabled = True

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
           
            cmd2 = New SqlCommand("insert into Customer(cid,cname,cadd,cemail,cmob,cgen,cpin,nby,cpass) values(@cid,@cname,@cadd,@cemail,@cmob,@cgen,@cpin,@nby,@cpass)", con)
            cmd2.Parameters.AddWithValue("@cid", TextBox1.Text.Trim())
            cmd2.Parameters.AddWithValue("@cname", TextBox2.Text.Trim())
            cmd2.Parameters.AddWithValue("@cadd", TextBox5.Text.Trim())
            cmd2.Parameters.AddWithValue("@cemail", TextBox3.Text.Trim())
            cmd2.Parameters.AddWithValue("@cmob", TextBox6.Text.Trim())
            cmd2.Parameters.AddWithValue("@cgen", DropDownList1.SelectedItem.Text.Trim())
            cmd2.Parameters.AddWithValue("@cpin", TextBox9.Text.Trim())
            cmd2.Parameters.AddWithValue("@nby", TextBox4.Text.Trim())
            cmd2.Parameters.AddWithValue("@cpass", TextBox7.Text.Trim())
            cmd2.ExecuteReader()
            Response.Redirect("Customer_login.aspx")
        Catch ex As Exception
            '  MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            con.Close()

        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            TextBox1.Text = "CID-" & rand1.Next(3000)
        Next
        If TextBox1.Text = "" Then
            Button1.Enabled = False
        Else
            Button1.Enabled = True

        End If
    End Sub
End Class
