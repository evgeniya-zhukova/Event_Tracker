<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewScheme.aspx.cs" Inherits="EventTracker2020.NewScheme" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 376px;
        }
        .auto-style3 {
            width: 349px;
        }
        .auto-style4 {
            width: 376px;
            text-align: right;
        }
        .auto-style5 {
            text-align: left;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 376px;
            text-align: left;
        }
        .auto-style9 {
            width: 20px;
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
            width: 349px;
        }
        .auto-style14 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 376px;
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
            width: 349px;
            background-color: #C0C0C0;
        }
        .auto-style18 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 376px;
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
        .auto-style20 {
            width: 376px;
            font-size: x-large;
            height: 39px;
        }
        .auto-style21 {
            width: 376px;
            text-align: left;
            font-size: x-large;
        }
        .auto-style22 {
            width: 20px;
            height: 29px;
        }
        .auto-style23 {
            width: 376px;
            height: 29px;
        }
        .auto-style24 {
            width: 349px;
            height: 29px;
        }
        .auto-style25 {
            height: 29px;
        }
        .auto-style26 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 20px;
            text-align: right;
            height: 35px;
        }
        .auto-style27 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 376px;
            text-align: left;
            height: 35px;
        }
        .auto-style28 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 349px;
            height: 35px;
        }
        .auto-style29 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            height: 35px;
        }
        .auto-style30 {
            height: 35px;
        }
        .auto-style31 {
            width: 20px;
            height: 39px;
        }
        .auto-style32 {
            width: 349px;
            height: 39px;
        }
        .auto-style33 {
            height: 39px;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            height: 39px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">New Scheme</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" id="tbl">
                <tr>
                    <td class="auto-style31">
                        </td>
                    <td class="auto-style20">
                        <strong>General</strong></td>
                    <td class="auto-style32">
                        </td>
                    <td class="auto-style35">
                        <asp:Button ID="btnAttSchemes" runat="server" OnClick="btnAttSchemes_Click" Text="Attendance Schemes" />
                        </td>
                    <td class="auto-style33">
                        </td>
                    <td class="auto-style33">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style2">
                        Scheme
                        Name*:</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style34">
                        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        </td>
                    <td class="auto-style23">
                        <asp:TextBox ID="txtSchemeName" runat="server" Width="267px"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="lblRequiredName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style25">
                        </td>
                    <td class="auto-style25">
                        </td>
                    <td class="auto-style25">
                        </td>
                </tr>
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
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style21">
                        <strong>Attendance Statuses</strong></td>
                    <td class="auto-style3">
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
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style3">
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
                    <td class="auto-style8">
                        If &quot;Assigned %&quot; field is left blank, then the attendance status does not count toward the precent attendance calculation</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblOneLineFill" runat="server" ForeColor="Red"></asp:Label>
                    </td>
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
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style3">
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
                        Symbol</td>
                    <td class="auto-style17">
                        Status Name</td>
                    <td class="auto-style16">
                        Assigned %</td>
                    <td class="auto-style16">
                        Delete</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        1*</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txtSymbol1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtStatusName1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtAssignPercent1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtAssignPercent1" ErrorMessage="Assigned % should be a number less than 100" ForeColor="Red" MaximumValue="100" Type="Double"></asp:RangeValidator>
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="btnDelete1" runat="server" Text="V" OnClick="btnDelete1_Click" />
                    </td>
                    <td class="auto-style30">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        2</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSymbol2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtStatusName2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtAssignPercent2" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtAssignPercent2" ErrorMessage="Assigned % should be a number less than 100" ForeColor="Red" MaximumValue="100" Type="Double"></asp:RangeValidator>
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
                        <asp:TextBox ID="txtSymbol3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtStatusName3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtAssignPercent3" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtAssignPercent3" ErrorMessage="Assigned % should be a number less than 100" ForeColor="Red" MaximumValue="100" Type="Double"></asp:RangeValidator>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete3" runat="server" Text="V" OnClick="btnDelete3_Click" />
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
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAddSessions" runat="server" Text="+ Add Sessions" OnClick="btnAddSessions_Click" />
&nbsp;&nbsp;
                        <asp:TextBox ID="txtAddStatus" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtAddStatus" ErrorMessage="It should be a number no more than 17" ForeColor="Red" MaximumValue="17" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
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
                    <td class="auto-style8">
                        <asp:Label ID="lblNumSession" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style3">
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
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
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
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
