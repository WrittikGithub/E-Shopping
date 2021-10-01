<%@ Page Title="" Language="VB" MasterPageFile="~/Customer_after_login_MasterPage.master" AutoEventWireup="false" CodeFile="Customer_product_search.aspx.vb" Inherits="Customer_product_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            width: 100%;
            height: 159px;
        }
        .style11
        {
            height: 201px;
            width: 424px;
        }
        .style9
        {
            width: 803px;
            height: 201px;
        }
        .style10
        {
            height: 201px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FFFF66; height: 1103px;">
    <div style="height: 1104px; background-color: #00FF99;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" BackColor="#0099FF" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" 
            ForeColor="#000066" Text="Product Search and Buy Zone"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Yellow" Text="Customer Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Yellow" Text="Select product catagory:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="pcat" DataValueField="pcat" 
            Height="16px" Width="248px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pcat] FROM [Product]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Yellow" Text="Details:"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView4" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." Width="1143px">
            <Columns>
                <asp:CommandField SelectText="Select to add cart" ShowSelectButton="True" />
                <asp:BoundField DataField="pid" HeaderText="Product Id" ReadOnly="True" 
                    SortExpression="pid" />
                <asp:BoundField DataField="pcat" HeaderText="Product Catagory" 
                    SortExpression="pcat" />
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
        <br />
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Large" Font-Underline="False" Text="Your selected product id:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Large" Font-Underline="False" Text="Rs/-"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
        <table class="style8">
            <tr>
                <td class="style11">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        Width="282px">
                        <Columns>
                            <asp:BoundField DataField="pid" HeaderText="Product id" />
                            <asp:BoundField DataField="rs" HeaderText="Rs/-" />
                            <asp:BoundField DataField="bid" HeaderText="Booking id" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="style9">
                    &nbsp;
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Font-Underline="False" Text="Your sure book? "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="click here?" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="ADD" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Font-Underline="False"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Font-Underline="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Font-Underline="False" Text="Total:"></asp:Label>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Font-Underline="False" Text="0"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style10">
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Yellow" 
            Font-Size="X-Large" Height="49px" Text="Pay and Continue" Width="345px" />
    </div>
    </div>
</asp:Content>

