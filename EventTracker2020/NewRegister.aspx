<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRegister.aspx.cs" Inherits="EventTracker2020.NewRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 477px;
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
        .auto-style20 {
            width: 477px;
            font-size: x-large;
        }
        .auto-style21 {
            width: 477px;
            text-align: left;
            font-size: x-large;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style23 {
            width: 20px;
            text-align: right;
            height: 26px;
        }
        .auto-style24 {
            width: 477px;
            text-align: right;
            height: 26px;
        }
        .auto-style25 {
            width: 187px;
            height: 26px;
        }
        .auto-style26 {
            height: 26px;
        }
    </style>
</head>
<body id="btnAttreg">
    <h1 class="auto-style5">New Register</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style20">
                        <strong>Properties</strong></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="btnAttreg" runat="server" OnClick="btnAttreg_Click" Text="Attendance Registers" />
                    </td>
                    <td>
                        &nbsp;</td>
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
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style2">
                        Name*:</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log out" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server" Width="267px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The Name should be entered" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">Description*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="268px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BorderColor="Red" ControlToValidate="txtDescription" ErrorMessage="The Description must be entered" ForeColor="Red" Height="51px" Width="208px"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">Attendance Scheme*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropListAttendance" runat="server">
                            <asp:ListItem Value="System Scheme"></asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" BorderColor="Red" ControlToValidate="DropListAttendance" EnableTheming="True" ErrorMessage="The Scheme must be chosen" ForeColor="Red" Height="51px" Width="208px"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" Height="51px" Width="208px"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style21">
                        <strong>Users</strong></td>
                    <td class="auto-style3">
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
                        Users*</td>
                    <td class="auto-style3">
                        Upload participants users csv associated with this event</td>
                    <td>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <asp:Button ID="UploadButton" runat="server" OnClick="UploadButton_Click" Text="Upload file" />
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
                </tr>
                <tr>
                    <td class="auto-style19">
                        #</td>
                    <td class="auto-style18">
                        Session Name</td>
                    <td class="auto-style17">
                        Session Description</td>
                    <td class="auto-style16">
                        Delete</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        1</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSessionNam1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtSessionDescr1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete1" runat="server" OnClick="btnDelete1_Click" Text="V" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        2</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSessionNam2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtSessionDescr2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete2" runat="server" OnClick="btnDelete2_Click" Text="V" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        3</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSessionNam3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtSessionDescr3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnDelete3" runat="server" OnClick="btnDelete3_Click" Text="V" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        </td>
                    <td class="auto-style24">
                        </td>
                    <td class="auto-style25">
                        </td>
                    <td class="auto-style26">
                        </td>
                    <td class="auto-style26">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style8" aria-autocomplete="none">
                        <asp:Button ID="btnAddSessions" runat="server" Text="+ Add Sessions" OnClick="btnAddSessions_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtAddSession" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" BorderColor="Red" ControlToValidate="txtAddSession" ErrorMessage="It should be a number no more than 17" ForeColor="Red" MaximumValue="20" MinimumValue="1" Type="Integer" Width="208px"></asp:RangeValidator>
                    </td>
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
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
