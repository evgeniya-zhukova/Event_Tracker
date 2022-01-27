<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="EventTracker2020.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 666px;
        }
        .auto-style3 {
            width: 24px;
        }
        .auto-style4 {
            width: 666px;
            text-align: right;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Reset Password</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text="Please, enter your email address to request a password reset"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please fill your email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email Address*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your E-mail should be the right format" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>