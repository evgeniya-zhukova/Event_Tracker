<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatAreAttScheme.aspx.cs" Inherits="EventTracker2020.WhatAreAttScheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 829px;
        }
        .auto-style3 {
            width: 98%;
        }
        .auto-style4 {
            width: 1502px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server" class="auto-style2">
        <div>
        </div>

        <h1>What are attendance schemes?</h1>
            
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Attendance schemes provide the criteria for marking attendance in a register. Each attendance register uses one attendance scheme, which you assign when creating a new register. The register defines the applicable users and sessions, and the attendance scheme defines the attendance statuses that you can givw to users for each session.
                    <br />
&nbsp;&nbsp;&nbsp; For example, a simple attendance scheme defines two possible attendance statuses: present and absent. If you were to apply this scheme to an attendance register, you would have two options for marking attendance for the register`s sessions. Users that attend a session would be marked as present and users that do not attend would be marked as absent.
                    <br />
&nbsp;&nbsp;&nbsp; You can create more complex schemes that define more statuses such as late and authorized absent. This provides flexibility to accommodate a wide range of attendance options.</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="Close" />
                </td>
            </tr>
        </table>
    </form>
            
</body>
</html>