<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="EventTracker2020.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 388px;
        }
        .auto-style3 {
            width: 24px;
        }
        .auto-style4 {
            width: 388px;
            text-align: right;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 305px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 388px;
            text-align: right;
            height: 26px;
        }
        .auto-style10 {
            width: 24px;
            height: 26px;
        }
        .auto-style11 {
            width: 305px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            text-align: right;
            width: 119px;
        }
        .auto-style14 {
            width: 119px;
        }
        .auto-style15 {
            height: 26px;
            width: 119px;
        }
        .auto-style16 {
            width: 305px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">Registration Page</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The first name need to be fill" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="The last name need to be fill" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name should contain only alphabet characters" ValidationExpression="^[A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name should contain only alphabet characters" ValidationExpression="^[A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">&nbsp;First name*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="267px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        &nbsp;Last name*:&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="auto-style8" Width="270px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Address*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtAddress" runat="server" Width="704px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="The address need to be fill" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td aria-atomic="False" aria-busy="False" aria-orientation="horizontal" class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Email*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="268px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="The emial need to be fill" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Your E-mail should be the right format" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Password*:</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="267px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="The password need to be fill" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should contain 6 to 12 charaters at least, one upper case letter, and one special characters" ValidationExpression="^(?=.*[A-Z])(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{6,12}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Confirm Password*:</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" Width="269px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="The confirm password need to be fill" ControlToValidate="txtPasswordConfirm" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        </td>
                    <td class="auto-style10">
                        </td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMessage" runat="server" Text=" " ForeColor="Red"></asp:Label>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm" ErrorMessage="The Password and Confirm Password should be the same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                    <td class="auto-style15">
                        </td>
                    <td class="auto-style12">
                        </td>
                    <td class="auto-style12">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10">
                        </td>
                    <td class="auto-style12">
                        <asp:CheckBox ID="ckbAgree" runat="server" Text="I agree to the terms of service" />
                    </td>
                    <td class="auto-style15">
                        </td>
                    <td class="auto-style12">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="btnRegister0" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" CausesValidation="False" />
                    </td>
                    <td class="auto-style14">
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
