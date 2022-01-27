<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatAreAttRegister.aspx.cs" Inherits="EventTracker2020.WhatAreAttRegister" %>


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

        <h1>What are attendance registers?</h1>
            
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; Attendance register are entries that you create to track attendance for activities in your organization of course.
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp; For example, you can create attendance registers to track attendance for mandatory session, weekly seminars or meeting.
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp; Use registers to define the sessions, attendance expectations and applicable users and enter data as you complete each session. Click a registers name to view or make to its attendance data.</td>
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