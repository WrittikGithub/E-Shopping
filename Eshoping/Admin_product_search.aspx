<%@ Page Title="" Language="VB" MasterPageFile="~/Afetr_login_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_product_search.aspx.vb" Inherits="Admin_product_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #99FF99; height: 727px;">
    <div style="height: 567px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="#FF3300" Font-Bold="True" 
            Font-Names="Franklin Gothic Medium" Font-Size="XX-Large" Font-Underline="True" 
            ForeColor="#CC33FF" Text="Welcome To Product Update Zone"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#000066" Text="Select Catagory"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="pcat" DataValueField="pcat" 
            Height="18px" Width="208px">
            <asp:ListItem>Food</asp:ListItem>
            <asp:ListItem>Medicine</asp:ListItem>
            <asp:ListItem>Dress</asp:ListItem>
            <asp:ListItem>Kitchen</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Beauty</asp:ListItem>
            <asp:ListItem>Shoe</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pcat] FROM [Product]"></asp:SqlDataSource>
&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#000066" Text="Select Company"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource2" DataTextField="pcompany" 
            DataValueField="pcompany" Height="16px" Width="209px">
            <asp:ListItem>Haldiram</asp:ListItem>
            <asp:ListItem>Supercom net</asp:ListItem>
            <asp:ListItem>Shree creation</asp:ListItem>
            <asp:ListItem>Prestige</asp:ListItem>
            <asp:ListItem>Retail.com</asp:ListItem>
            <asp:ListItem>Hudabeauty</asp:ListItem>
            <asp:ListItem>Shree leathers</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pcompany] FROM [Product] WHERE ([pcat] = @pcat)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="pcat" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Black" 
            Font-Size="X-Large" Font-Underline="True" ForeColor="#990033" Text="Details:"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="pid" DataSourceID="SqlDataSource3" 
            EmptyDataText="There are no data records to display." Width="1028px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pid" HeaderText="Product Id" ReadOnly="True" 
                    SortExpression="pid" />
                <asp:BoundField DataField="pcat" HeaderText="Catagory" SortExpression="pcat" />
                <asp:BoundField DataField="pname" HeaderImageUrl="Name" HeaderText="Name" 
                    SortExpression="pname" />
                <asp:BoundField DataField="dom" HeaderText="Date of Manufactur" 
                    SortExpression="dom" />
                <asp:BoundField DataField="pcompany" HeaderText="Company" 
                    SortExpression="pcompany" />
                <asp:BoundField DataField="doex" HeaderText="Date of expaire" 
                    SortExpression="doex" />
                <asp:BoundField DataField="pdtls" HeaderText="pdtls" SortExpression="pdtls" />
                <asp:BoundField DataField="prs" HeaderText="Rs/-" SortExpression="prs" />
                <asp:BoundField DataField="srs" HeaderText="Customer Rs/-" 
                    SortExpression="srs" />
                <asp:ImageField DataImageUrlField="pimg" HeaderText="Photo">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" 
            InsertCommand="INSERT INTO [Product] ([pid], [pcat], [pname], [dom], [pcompany], [doex], [pdtls], [prs], [srs], [pimg]) VALUES (@pid, @pcat, @pname, @dom, @pcompany, @doex, @pdtls, @prs, @srs, @pimg)" 
            SelectCommand="SELECT [pid], [pcat], [pname], [dom], [pcompany], [doex], [pdtls], [prs], [srs], [pimg] FROM [Product] WHERE ([pcompany] = @pcompany)" 
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
                <asp:ControlParameter ControlID="DropDownList2" Name="pcompany" 
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
    </div>
    </div>
</asp:Content>

