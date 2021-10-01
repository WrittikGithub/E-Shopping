<%@ Page Title="" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="admin_login.aspx.vb" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #00FFFF; height: 826px;">
    <div style="height: 819px">
        <table class="style4">
            <tr>
                <td class="style5">
                    <asp:Panel ID="Panel1" runat="server" Height="520px" Width="592px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Admin Login Zone" BackColor="Aqua" 
                            Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" 
                            Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Size="Large" ForeColor="#990000" Text="Enter Email"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="207px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Size="Large" ForeColor="#990000" Text="Enter Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Width="179px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" 
                            ForeColor="Red" Text="Submit" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                            Font-Italic="True" Font-Size="Large" Font-Underline="True" 
                            ForeColor="#000099" NavigateUrl="~/Forget_password.aspx">Forget Password?</asp:HyperLink>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
                </td>
                <td style="background-position: center center; background-image: url('http://localhost:51157/online_shopping/pic/istockphoto-476183457-1024x1024.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
                    <asp:Image ID="Image1" runat="server" Height="615px" style="margin-left: 3px" 
                        Width="747px" ImageUrl="~/pic/istockphoto-476183457-1024x1024.jpg" />
                </td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>

