<%@ Page Title="" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Product_search.aspx.vb" Inherits="Product_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FF9933; height: 620px;">
    <div style="height: 799px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#660033" Font-Bold="True" 
            Font-Names="Lucida Sans Unicode" Font-Size="XX-Large" Font-Underline="True" 
            ForeColor="#CC33FF" Text="Product Search Zone"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Blue" Text="Select Catagory:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
            runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" 
            DataTextField="pcat" DataValueField="pcat" Height="19px" Width="202px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pcat] FROM [Product]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" Font-Underline="True" ForeColor="#000099" Text="Details:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="pid" DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." Width="1015px">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product id" ReadOnly="True" 
                    SortExpression="pid" />
                <asp:BoundField DataField="pcat" HeaderText="Catagory" SortExpression="pcat" />
                <asp:BoundField DataField="pname" HeaderText="Name" SortExpression="pname" />
                <asp:BoundField DataField="dom" HeaderText="Date of manufacture" 
                    SortExpression="dom" />
                <asp:BoundField DataField="pcompany" HeaderText="Company" 
                    SortExpression="pcompany" />
                <asp:BoundField DataField="doex" HeaderText="Date of expire" 
                    SortExpression="doex" />
                <asp:BoundField DataField="pdtls" HeaderText="Details" SortExpression="pdtls" />
                <asp:BoundField DataField="srs" HeaderText="Rs/-" SortExpression="srs" />
                <asp:ImageField DataImageUrlField="pimg" HeaderText="Photo">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" 
            InsertCommand="INSERT INTO [Product] ([pid], [pcat], [pname], [dom], [pcompany], [doex], [pdtls], [prs], [srs], [pimg]) VALUES (@pid, @pcat, @pname, @dom, @pcompany, @doex, @pdtls, @prs, @srs, @pimg)" 
            SelectCommand="SELECT [pid], [pcat], [pname], [dom], [pcompany], [doex], [pdtls], [prs], [srs], [pimg] FROM [Product] WHERE ([pcat] = @pcat)" 
            UpdateCommand="UPDATE [Product] SET [pcat] = @pcat, [pname] = @pname, [dom] = @dom, [pcompany] = @pcompany, [doex] = @doex, [pdtls] = @pdtls, [prs] = @prs, [srs] = @srs, [pimg] = @pimg WHERE [pid] = @pid">
            <DeleteParameters>
                <asp:Parameter Name="pid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pid" Type="String" />
                <asp:Parameter Name="pcat" Type="String" />
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="dom" Type="String" />
                <asp:Parameter Name="pcompany" Type="String" />
                <asp:Parameter Name="doex" Type="String" />
                <asp:Parameter Name="pdtls" Type="String" />
                <asp:Parameter Name="prs" Type="Decimal" />
                <asp:Parameter Name="srs" Type="Decimal" />
                <asp:Parameter Name="pimg" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="pcat" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pcat" Type="String" />
                <asp:Parameter Name="pname" Type="String" />
                <asp:Parameter Name="dom" Type="String" />
                <asp:Parameter Name="pcompany" Type="String" />
                <asp:Parameter Name="doex" Type="String" />
                <asp:Parameter Name="pdtls" Type="String" />
                <asp:Parameter Name="prs" Type="Decimal" />
                <asp:Parameter Name="srs" Type="Decimal" />
                <asp:Parameter Name="pimg" Type="String" />
                <asp:Parameter Name="pid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Arial" Font-Size="X-Large" ForeColor="#003366" 
            Text="Note: If you buy any product must log in and search any product"></asp:Label>
    </div>
    </div>
</asp:Content>

