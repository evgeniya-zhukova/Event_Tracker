<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackerUserAdmin.aspx.cs" Inherits="EventTracker2020.TrackerUserAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 477px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 477px;
            text-align: left;
        }
        .auto-style10 {
            width: 20px;
            text-align: right;
        }
        .auto-style11 {
            width: 20px;
            text-align: left;
        }
        .auto-style12 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
        }
        .auto-style13 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 187px;
        }
        .auto-style14 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 477px;
            text-align: left;
        }
        .auto-style15 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 20px;
            text-align: right;
        }
        .auto-style16 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #C0C0C0;
        }
        .auto-style17 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 187px;
            background-color: #C0C0C0;
        }
        .auto-style18 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 477px;
            text-align: left;
            background-color: #C0C0C0;
        }
        .auto-style19 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 20px;
            text-align: right;
            background-color: #C0C0C0;
        }
        .auto-style21 {
            width: 477px;
            text-align: left;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Attendance Tracker User Admin</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style21">
                        <strong>Event Organizer Listing</strong></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        #</td>
                    <td class="auto-style18">
                        Email</td>
                    <td class="auto-style17">
                        Last Name</td>
                    <td class="auto-style16">
                        First Name</td>
                    <td class="auto-style16">
                        Enable</td>
                    <td class="auto-style16">
                        Approve</td>
                    <td class="auto-style16">
                        Delete</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        1</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLastName1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblFirstName1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbEnable1" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbApprove1" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete1" runat="server" Text="V" OnClick="btnDelete1_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        2</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLastName2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblFirstName2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbEnable2" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbApprove2" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete2" runat="server" Text="V" OnClick="btnDelete2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        3</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLastName3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblFirstName3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbEnable3" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbApprove3" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete3" runat="server" Text="V" OnClick="btnDelete3_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        4</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail4" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLastName4" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblFirstName4" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbEnable4" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbApprove4" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete4" runat="server" Text="V" OnClick="btnDelete4_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        5</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblEmail5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLastName5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="lblFirstName5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbEnable5" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="chbApprove5" runat="server" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete5" runat="server" Text="V" OnClick="btnDelete5_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnSave" runat="server" OnClick="Page_Load" Text="Save" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>

