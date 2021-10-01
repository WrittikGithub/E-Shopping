Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Admin_new_reg
    Inherits System.Web.UI.Page
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        con.Open()
        Try
            If FileUpload1.HasFile Then
                fileName = FileUpload1.FileName
                filePath = Server.MapPath("~/emp/" & Convert.ToString(fileName))
                FileUpload1.SaveAs(filePath)
                fileName = "~/emp/" & fileName
            End If
            cmd2 = New SqlCommand("insert into Admin(aid,apass,dofj,aname,aadd,amob,aemail,dob,agen,aimg) values(@aid,@apass,@dofj,@aname,@aadd,@amob,@aemail,@dob,@agen,@aimg)", con)
            cmd2.Parameters.AddWithValue("@aid", TextBox1.Text.Trim())
            cmd2.Parameters.AddWithValue("@apass", TextBox5.Text.Trim())
            cmd2.Parameters.AddWithValue("@dofj", TextBox8.Text.Trim())
            cmd2.Parameters.AddWithValue("@aname", TextBox2.Text.Trim())
            cmd2.Parameters.AddWithValue("@aadd", TextBox6.Text.Trim())
            cmd2.Parameters.AddWithValue("@amob", TextBox3.Text.Trim())
            cmd2.Parameters.AddWithValue("@aemail", TextBox7.Text.Trim())
            cmd2.Parameters.AddWithValue("@dob", TextBox4.Text.Trim())
            cmd2.Parameters.AddWithValue("@agen", DropDownList1.SelectedItem.Text.Trim())
            cmd2.Parameters.AddWithValue("@aimg", fileName)
            cmd2.ExecuteReader()
            Label16.Text = "Registration is Successful"
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
         If TextBox1.Text = "" Then
            ImageButton1.Enabled = False
        Else
            ImageButton1.Enabled = True

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            TextBox1.Text = "EMP-" & rand1.Next(3000)
        Next
        If TextBox1.Text = "" Then
            ImageButton1.Enabled = False
        Else
            ImageButton1.Enabled = True

        End If
    End Sub
End Class
