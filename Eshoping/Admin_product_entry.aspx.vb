Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_product_entry
    Inherits System.Web.UI.Page
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()
        Try
            If FileUpload1.HasFile Then
                fileName = FileUpload1.FileName
                filePath = Server.MapPath("~/product/" & Convert.ToString(fileName))
                FileUpload1.SaveAs(filePath)
                fileName = "~/product/" & fileName
            End If
            cmd2 = New SqlCommand("insert into Product(pid,pcat,pname,dom,pcompany,doex,pdtls,prs,srs,pimg) values(@pid,@pcat,@pname,@dom,@pcompany,@doex,@pdtls,@prs,@srs,@pimg)", con)
            cmd2.Parameters.AddWithValue("@pid", TextBox1.Text.Trim())
            cmd2.Parameters.AddWithValue("@pcat", DropDownList1.SelectedItem.Text.Trim())
            cmd2.Parameters.AddWithValue("@pname", TextBox2.Text.Trim())
            cmd2.Parameters.AddWithValue("@dom", TextBox5.Text.Trim())
            cmd2.Parameters.AddWithValue("@pcompany", TextBox3.Text.Trim())
            cmd2.Parameters.AddWithValue("@doex", TextBox6.Text.Trim())
            cmd2.Parameters.AddWithValue("@pdtls", TextBox4.Text.Trim())
            cmd2.Parameters.AddWithValue("@prs", TextBox7.Text.Trim())
            cmd2.Parameters.AddWithValue("@srs", TextBox8.Text.Trim())
            cmd2.Parameters.AddWithValue("@pimg", fileName)
            cmd2.ExecuteReader()
            Label16.Text = "Product Entry is Successful"
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            fileName = Nothing
            filePath = Nothing
            TextBox5.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox6.Text = ""
            TextBox7.Text = ""
            TextBox8.Text = ""
            con.Close()

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            TextBox1.Text = "PID-" & rand1.Next(3000)
        Next
    End Sub
End Class
