<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendanceRegisters.aspx.cs" Inherits="EventTracker2020.AttendanceRegisters" %>

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
            height: 32px;
        }
        .auto-style22 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 20px;
            text-align: right;
            height: 31px;
        }
        .auto-style23 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 477px;
            text-align: left;
            height: 31px;
        }
        .auto-style24 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 187px;
            height: 31px;
        }
        .auto-style25 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            height: 31px;
        }
        .auto-style26 {
            height: 31px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            width: 20px;
            text-align: right;
            height: 26px;
        }
        .auto-style29 {
            width: 477px;
            text-align: left;
            height: 26px;
        }
        .auto-style30 {
            width: 187px;
            height: 26px;
        }
        .auto-style31 {
            height: 26px;
        }
        .auto-style32 {
            width: 20px;
            text-align: left;
            height: 32px;
        }
        .auto-style33 {
            width: 187px;
            height: 32px;
        }
        .auto-style34 {
            height: 32px;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Attendance Registers</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        </td>
                    <td class="auto-style21">
                        <asp:Button ID="btnNewRegister" runat="server" Text="New Register" OnClick="btnNewRegister_Click" />
                    </td>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style33">
                        </td>
                    <td class="auto-style34">
                        <asp:Button ID="btnAttendanceSchemes" runat="server" Text="Attendance Schemes" OnClick="btnAttendanceSchemes_Click" />
                    </td>
                    <td class="auto-style34">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        </td>
                    <td class="auto-style29">
                        <u><asp:HyperLink ID="btnOpenPopupWindow" runat="server" Text="What are attendance Registers?" onclick="mypopup()" ForeColor="#0033CC"/></u>
                    </td>
                    <td class="auto-style30">
                        &nbsp;</td>
                    <td class="auto-style30">
                        </td>
                    <td class="auto-style31">
                        </td>
                    <td class="auto-style31">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblInfo" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
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
                        Register Name</td>
                    <td class="auto-style17">
                        Register Operations</td>
                    <td class="auto-style17">
                        Cause for Concern (%)</td>
                    <td class="auto-style16">
                        # of Sessions</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        1</td>
                    <td class="auto-style23">
                        <asp:Label ID="lblRegName1" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlOption1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View Attendance</asp:ListItem>
                            <asp:ListItem Value="E">Edit Register</asp:ListItem>
                            <asp:ListItem Value="D">Delete</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="txtCauseConcern1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="txtSessions1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style26">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        2</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblRegName2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlOption2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View Attendance</asp:ListItem>
                            <asp:ListItem Value="E">Edit Register</asp:ListItem>
                            <asp:ListItem Value="D">Delete</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="txtCauseConcern2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="txtSessions2" runat="server"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        3</td>
                    <td class="auto-style14">
                        <asp:Label ID="lblRegName3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlOption3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View Attendance</asp:ListItem>
                            <asp:ListItem Value="E">Edit Register</asp:ListItem>
                            <asp:ListItem Value="D">Delete</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="txtCauseConcern3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="txtSessions3" runat="server"></asp:Label>
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
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style27">
                        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
         <script type="text/javascript">
         function mypopup() {
             mywindow = window.open("WhatAreAttRegister.aspx", "mywindow", "location=1,status=1,  width=500,height=500");
             mywindow.moveTo(1, 0);
         }
    </script>
</body>
</html>