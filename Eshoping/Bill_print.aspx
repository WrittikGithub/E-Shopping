<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Bill_print.aspx.vb" Inherits="Bill_print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
            height: 606px;
        }
        .style2
        {
            width: 745px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 671px">
    
    <div style="background-color: #FFCC99; height: 764px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BackColor="Yellow" Font-Bold="True" 
            Font-Names="Arial Black" Font-Size="XX-Large" Font-Underline="True" 
            ForeColor="Lime" Text="Bill Print"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <style type="text/css" media="print">
.dontprintme { display: none; }
</style>


<Input type=button Name="Print" Value="Print" onClick="javascript:window.print();return false" class="dontprintme">
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Red" Text="Select  customer Id:"></asp:Label>
&nbsp;&nbsp; 
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="cid" DataValueField="cid" 
            Height="18px" Width="209px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [bid] FROM [Booking] WHERE ([cid] = @cid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="cid" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="X-Large" ForeColor="Red" Text="Select  booking Id:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="bid" DataValueField="bid" 
            Height="16px" Width="163px">
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel1" runat="server" Height="597px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Customer Details:" Font-Bold="True" 
                            Font-Names="Illuma" Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView3" runat="server" Width="708px" 
                            AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource2" 
                            EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="cid" HeaderText="ID" ReadOnly="True" 
                                    SortExpression="cid" />
                                <asp:BoundField DataField="cname" HeaderText="Name" SortExpression="cname" />
                                <asp:BoundField DataField="cadd" HeaderText="Address" SortExpression="cadd" />
                                <asp:BoundField DataField="cemail" HeaderText="Email" SortExpression="cemail" />
                                <asp:BoundField DataField="cmob" HeaderText="Mobile Number" 
                                    SortExpression="cmob" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Customer] WHERE [cid] = @cid" 
                            InsertCommand="INSERT INTO [Customer] ([cid], [cname], [cadd], [cemail], [cmob]) VALUES (@cid, @cname, @cadd, @cemail, @cmob)" 
                            SelectCommand="SELECT [cid], [cname], [cadd], [cemail], [cmob] FROM [Customer] WHERE ([cid] = @cid)" 
                            UpdateCommand="UPDATE [Customer] SET [cname] = @cname, [cadd] = @cadd, [cemail] = @cemail, [cmob] = @cmob WHERE [cid] = @cid">
                            <DeleteParameters>
                                <asp:Parameter Name="cid" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="cid" Type="String" />
                                <asp:Parameter Name="cname" Type="String" />
                                <asp:Parameter Name="cadd" Type="String" />
                                <asp:Parameter Name="cemail" Type="String" />
                                <asp:Parameter Name="cmob" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="cid" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="cname" Type="String" />
                                <asp:Parameter Name="cadd" Type="String" />
                                <asp:Parameter Name="cemail" Type="String" />
                                <asp:Parameter Name="cmob" Type="Decimal" />
                                <asp:Parameter Name="cid" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Illuma" 
                            Font-Size="X-Large" ForeColor="#FF0066" Text="Booking Details:"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="bid" DataSourceID="SqlDataSource3" 
                            EmptyDataText="There are no data records to display." Width="635px">
                            <Columns>
                                <asp:BoundField DataField="bid" HeaderText="Booking Id" ReadOnly="True" 
                                    SortExpression="bid" />
                                <asp:BoundField DataField="cid" HeaderText="Customer id" SortExpression="cid" />
                                <asp:BoundField DataField="bdate" HeaderText="Booking Date" 
                                    SortExpression="bdate" />
                                <asp:BoundField DataField="pmode" HeaderText="Pay Mode" 
                                    SortExpression="pmode" />
                                <asp:BoundField DataField="trs" HeaderText="Total Rs/-" SortExpression="trs" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
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
                                <asp:ControlParameter ControlID="DropDownList2" Name="bid" 
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
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:Panel>
                </td>
                <td style="background-position: center center; background-image: url('http://localhost:51157/online_shopping/pic/bill%202.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
                    <asp:Image ID="Image1" runat="server" Height="498px" 
                        ImageUrl="~/pic/bill 2.jpg" Width="623px" />
                </td>
            </tr>
        </table>
    
    </div>
    
    </div>
    </form>
</body>
</html>
