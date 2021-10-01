<%@ Page Title="" Language="VB" MasterPageFile="~/Customer_after_login_MasterPage.master" AutoEventWireup="false" CodeFile="Customer_booking_details.aspx.vb" Inherits="Customer_booking_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #99FF66; height: 906px;">
    <div style="height: 1408px; background-color: #FF66CC;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#009900" Text="Customer Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#009900" Text="Booking Details zone"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#009900" Text="Select Booking Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="bid" DataValueField="bid" 
            Height="16px" Width="177px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [bid] FROM [Booking] WHERE ([cid] = @cid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="cid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#009900" Text="Booking Details:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bid" DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." Width="882px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="bid" HeaderText="Booking id" ReadOnly="True" 
                    SortExpression="bid" />
                <asp:BoundField DataField="cid" HeaderText="customer id" SortExpression="cid" />
                <asp:BoundField DataField="bdate" HeaderText="booking date" 
                    SortExpression="bdate" />
                <asp:BoundField DataField="pmode" HeaderText="Pay mode" 
                    SortExpression="pmode" />
                <asp:BoundField DataField="trs" HeaderText="Total rs" SortExpression="trs" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Booking] WHERE [bid] = @bid" 
            InsertCommand="INSERT INTO [Booking] ([bid], [cid], [bdate], [pmode], [trs]) VALUES (@bid, @cid, @bdate, @pmode, @trs)" 
            SelectCommand="SELECT [bid], [cid], [bdate], [pmode], [trs] FROM [Booking] WHERE ([bid] = @bid)" 
            UpdateCommand="UPDATE [Booking] SET [cid] = @cid, [bdate] = @bdate, [pmode] = @pmode, [trs] = @trs WHERE [bid] = @bid">
            <DeleteParameters>
                <asp:Parameter Name="bid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bid" Type="String" />
                <asp:Parameter Name="cid" Type="String" />
                <asp:Parameter Name="bdate" Type="String" />
                <asp:Parameter Name="pmode" Type="String" />
                <asp:Parameter Name="trs" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="bid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="cid" Type="String" />
                <asp:Parameter Name="bdate" Type="String" />
                <asp:Parameter Name="pmode" Type="String" />
                <asp:Parameter Name="trs" Type="Decimal" />
                <asp:Parameter Name="bid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="#009900" Text="Cart Details:"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3" 
            EmptyDataText="There are no data records to display." Width="575px">
            <Columns>
                <asp:BoundField DataField="pid" HeaderText="Product id" SortExpression="pid" />
                <asp:BoundField DataField="rs" HeaderText="Rs/-" SortExpression="rs" />
                <asp:BoundField DataField="bid" HeaderText="Booking id" SortExpression="bid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [pid], [rs], [bid] FROM [cart] WHERE ([bid] = @bid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="bid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

