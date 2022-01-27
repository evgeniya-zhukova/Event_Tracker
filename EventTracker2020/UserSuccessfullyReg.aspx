<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSuccessfullyReg.aspx.cs" Inherits="EventTracker2020.UserSuccessfullyReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>New User Successfully Registered</h1>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblText" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="txtClose" runat="server" OnClick="txtClose_Click" Text="Close" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
