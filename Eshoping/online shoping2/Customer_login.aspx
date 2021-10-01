<%@ Page Title="" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Customer_login.aspx.vb" Inherits="Customer_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #CCFF33; height: 655px;">
    <div style="height: 771px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="857px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Welcome To Cutomer Login Zone" 
                BackColor="Blue" Font-Bold="True" Font-Italic="True" 
                Font-Names="Segoe UI Semibold" Font-Size="XX-Large" ForeColor="#9999FF"></asp:Label>
            <br />
            <table class="style4">
                <tr>
                    <td class="style5">
                        <asp:Panel ID="Panel2" runat="server" Height="551px" Width="723px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="X-Large" ForeColor="Maroon" Text="Enter Id"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="X-Large" ForeColor="Maroon" Text="Enter password"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Maroon" 
                                NavigateUrl="~/Forget_password.aspx">Forget Password?</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Maroon" 
                                NavigateUrl="~/Customer_new_reg.aspx">New Registration</asp:HyperLink>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" 
                                ImageUrl="~/pic/Button.gif" Width="162px" />
                        </asp:Panel>
                    </td>
                    <td style="background-image: url('http://localhost:51157/online_shopping/pic/lock%20new.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/lock new.jpg" 
                            Width="623px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </div>
</asp:Content>

