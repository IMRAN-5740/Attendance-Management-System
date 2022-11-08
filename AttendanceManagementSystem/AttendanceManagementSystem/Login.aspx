<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AttendanceManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div style="height:450px;">
            <table style="width:565px;height:421px; background-color:#00FFFF; margin:0 auto">
                <tr>
                    <td colspan="2"align="center">
                        &nbsp; <img id="Img1"
                            src="Images/Login2.png" alt="" ruant="server"
                            style="height:190px;width:199px" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Teacher and Admin Login</h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%">
                        <b>Email ID/User ID</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="29px"
                            Width="166px" Font-Bold="true" placeholder="Enter Email_Id/User ID"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="TextBox1" ErrorMessage="Enter Email-ID" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%">
                        <b>Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px"
                            Width="160px" TextMode="Password" Font-Bold="True" placeholder="Enter Password"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true"
                            Height="46px" Width="201px" BackColor="#6666FF" OnClick="Button1_Click" OnClientClick="Button1_Click" />
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
                    </td>
                  
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
