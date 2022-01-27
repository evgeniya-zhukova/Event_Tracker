<%--
Course: COMP 2139
Team:               Peng Qiu 
                    Marina Savochkina 
                    Alisher Urazbayev 
                    Yevhenii Zalizniak 
                    Evgeniya Zhukova
--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EventTracker2020.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 664px;
        }
        .auto-style3 {
            width: 305px;
        }
        .auto-style4 {
            width: 664px;
            text-align: right;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 100px;
        }
        .auto-style7 {
            width: 31px;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Login</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style6">
                        <asp:Label ID="lblMessage" runat="server" Text=" " ForeColor="Red"></asp:Label>
                        <asp:Label ID="lblText1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">Username*:</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required to fill in" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Password*:</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required to fill in" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" CausesValidation="False" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>
                        <asp:LinkButton ID="lkbPassword" runat="server" OnClick="lkbPassword_Click" CausesValidation="False">Forgot Your Password?</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>