<%@ Page Title="" Language="VB" MasterPageFile="~/Customer_after_login_MasterPage.master" AutoEventWireup="false" CodeFile="Customer_update.aspx.vb" Inherits="Customer_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FF66FF; height: 684px;">
    <div style="background-position: center top; height: 1372px; background-image: url('pic/buy_smart1.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" BackColor="#660066" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" 
            ForeColor="#FFFF66" Text="Update Profile Zone"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Arial" Font-Size="X-Large" ForeColor="Maroon" Text="Your Id" 
            Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Arial" Font-Size="X-Large" ForeColor="#990000" Text="Details:"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="cid" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Width="1055px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cid" HeaderText="Customer Id" ReadOnly="True" 
                    SortExpression="cid" />
                <asp:BoundField DataField="cname" HeaderText="Name" SortExpression="cname" />
                <asp:BoundField DataField="cadd" HeaderText="Address" SortExpression="cadd" />
                <asp:BoundField DataField="cemail" HeaderText="Email" SortExpression="cemail" />
                <asp:BoundField DataField="cmob" HeaderText="Contact Number" 
                    SortExpression="cmob" />
                <asp:BoundField DataField="cgen" HeaderText="Gender" SortExpression="cgen" />
                <asp:BoundField DataField="cpin" HeaderText="cpin" SortExpression="cpin" />
                <asp:BoundField DataField="nby" HeaderText="Nearest Location" 
                    SortExpression="nby" />
                <asp:BoundField DataField="cpass" HeaderText="Password" 
                    SortExpression="cpass" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Customer] WHERE [cid] = @cid" 
            InsertCommand="INSERT INTO [Customer] ([cid], [cname], [cadd], [cemail], [cmob], [cgen], [cpin], [nby], [cpass]) VALUES (@cid, @cname, @cadd, @cemail, @cmob, @cgen, @cpin, @nby, @cpass)" 
            SelectCommand="SELECT [cid], [cname], [cadd], [cemail], [cmob], [cgen], [cpin], [nby], [cpass] FROM [Customer] WHERE ([cid] = @cid)" 
            UpdateCommand="UPDATE [Customer] SET [cname] = @cname, [cadd] = @cadd, [cemail] = @cemail, [cmob] = @cmob, [cgen] = @cgen, [cpin] = @cpin, [nby] = @nby, [cpass] = @cpass WHERE [cid] = @cid">
            <DeleteParameters>
                <asp:Parameter Name="cid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cid" Type="String" />
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="cadd" Type="String" />
                <asp:Parameter Name="cemail" Type="String" />
                <asp:Parameter Name="cmob" Type="Decimal" />
                <asp:Parameter Name="cgen" Type="String" />
                <asp:Parameter Name="cpin" Type="Decimal" />
                <asp:Parameter Name="nby" Type="String" />
                <asp:Parameter Name="cpass" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="cid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="cadd" Type="String" />
                <asp:Parameter Name="cemail" Type="String" />
                <asp:Parameter Name="cmob" Type="Decimal" />
                <asp:Parameter Name="cgen" Type="String" />
                <asp:Parameter Name="cpin" Type="Decimal" />
                <asp:Parameter Name="nby" Type="String" />
                <asp:Parameter Name="cpass" Type="String" />
                <asp:Parameter Name="cid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</div>
</div>
</asp:Content>

