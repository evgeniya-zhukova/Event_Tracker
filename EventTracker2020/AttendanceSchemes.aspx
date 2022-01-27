<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendanceSchemes.aspx.cs" Inherits="EventTracker2020.AttendanceSchemes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 384px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 384px;
            text-align: left;
        }
        .auto-style10 {
            width: 20px;
            text-align: right;
        }
        .auto-style11 {
            width: 20px;
            text-align: left;
            height: 26px;
        }
        .auto-style12 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
        }
        .auto-style14 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 384px;
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
        .auto-style18 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 384px;
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
            width: 384px;
            text-align: left;
            font-size: x-large;
            height: 33px;
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
            width: 384px;
            text-align: left;
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
            text-align: left;
            height: 33px;
        }
        .auto-style29 {
            height: 33px;
        }
        .auto-style30 {
            width: 294px;
        }
        .auto-style31 {
            height: 33px;
            width: 294px;
        }
        .auto-style32 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            background-color: #C0C0C0;
            width: 294px;
        }
        .auto-style33 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            height: 31px;
            width: 294px;
        }
        .auto-style34 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 294px;
        }
        .auto-style35 {
            text-align: center;
            width: 294px;
        }
        .auto-style36 {
            width: 384px;
            text-align: left;
            height: 26px;
        }
        .auto-style37 {
            width: 294px;
            height: 26px;
        }
        .auto-style38 {
            height: 26px;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Attendance Schemes</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style36"></td>
                    <td id="btnAttendanceSchemes" class="auto-style37">
                        </td>
                    <td id="btnAttendanceSchemes" class="auto-style38">
                        </td>
                    <td class="auto-style38">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        </td>
                    <td class="auto-style21">
                        <asp:Button ID="btnNewScheme" runat="server" Text="New Scheme" OnClick="btnNewScheme_Click" />
                    </td>
                    <td class="auto-style31">
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="btnAttendanceRegisters" runat="server" Text="Attendance Registers" OnClick="btnAttendanceRegisters_Click" />
                    </td>
                    <td class="auto-style29">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style30">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <u><asp:HyperLink ID="btnOpenPopupWindow" runat="server" Text="What are attendance Schemes?" onclick="mypopup()" ForeColor="#0033CC"/></u>
                    </td>
                    <td class="auto-style30">
                        &nbsp;</td>
                    <td>
                        <u>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style30">
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
                        Scheme Name</td>
                    <td class="auto-style32">
                        Scheme Operations</td>
                    <td class="auto-style16">
                        Default Scheme</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        1</td>
                    <td class="auto-style23">
                        <asp:Label ID="txtName1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:DropDownList ID="ddlOption1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View in new Window</asp:ListItem>
                            <asp:ListItem Value="C">Copy</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style25">
                        <asp:Button ID="btnDef1" runat="server" OnClick="btnDef1_Click" Text="Current Default" />
                    </td>
                    <td class="auto-style26">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        2</td>
                    <td class="auto-style14">
                        <asp:Label ID="txtName2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style34">
                        <asp:DropDownList ID="ddlOption2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View in new Window</asp:ListItem>
                            <asp:ListItem Value="C">Copy</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDef2" runat="server" OnClick="btnDef2_Click" Text="Set as Default " Width="169px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        3</td>
                    <td class="auto-style14">
                        <asp:Label ID="txtName3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style34">
                        <asp:DropDownList ID="ddlOption3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOption1_SelectedIndexChanged">
                            <asp:ListItem Value="V">View in new Window</asp:ListItem>
                            <asp:ListItem Value="C">Copy</asp:ListItem>
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDef3" runat="server" OnClick="btnDef3_Click" Text="Set as Default " Width="169px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style35">
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
                        &nbsp;</td>
                    <td class="auto-style35">
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
             mywindow = window.open("WhatAreAttScheme.aspx", "mywindow", "location=1,status=1,  width=500,height=500");
             mywindow.moveTo(1, 0);
         } 
    </script>
</body>
</html>