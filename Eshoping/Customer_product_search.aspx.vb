Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Customer_product_search
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Dummy.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Session("cid")
    End Sub

   
    Protected Sub GridView4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView4.SelectedIndexChanged
        TextBox8.Text = GridView4.SelectedRow.Cells(1).Text
        TextBox9.Text = GridView4.SelectedRow.Cells(8).Text
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim rand1 As New Random()
        Dim p As Integer
        For p = 1 To 100
            Label21.Text = "Booking id"
            Label22.Text = "THB-" & rand1.Next(3000)
        Next
        If Label21.Text = "Booking id" Then
            Button1.Visible = False
            Label20.Visible = False
            Button2.Visible = True

        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("insert into cart(pid,rs,bid)values(@pid,@rs,@bid)", con)
            cmd.Parameters.AddWithValue("@pid", TextBox8.Text.Trim())
            cmd.Parameters.AddWithValue("@rs", TextBox9.Text.Trim())
            cmd.Parameters.AddWithValue("@bid", Label22.Text.Trim())
            cmd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()

        End Try
        Try
            con.Open()
            Dim cmd As New SqlCommand()
            cmd = New SqlCommand("select * from cart where bid='" + Label22.Text + "'", con)
            Dim adp As SqlDataAdapter = New SqlDataAdapter(cmd)
            Dim dt As DataSet = New DataSet()
            adp.Fill(dt)
            GridView3.DataSource = dt
            DataBind()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        Label23.Text = Val(Label23.Text) + Val(TextBox9.Text)
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Session("bid") = Label22.Text
        Session("trs") = Label23.Text
        Response.Redirect("conf_booking.aspx")
    End Sub
End Class
