<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recruiter_regis.aspx.cs" Inherits="job_portal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 236px;
        }
        .auto-style4 {
            width: 372px;
        }
        .auto-style6 {
            width: 617px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Login details" Font-Bold="True" Font-Size="Large" ForeColor="#FF9933" Font-Underline="True"></asp:Label>
    </p>
    <table class="nav-justified" style="background-color: #CCCCFF">
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:TextBox ID="user_text" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:TextBox ID="pass_text" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;
                <asp:TextBox ID="conf_pass_text" runat="server" ValidateRequestMode="Disabled" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label5" runat="server" Text="Company details" Font-Bold="True" Font-Size="Large" ForeColor="#FF9966" Font-Underline="True"></asp:Label>
    </p>
    <table class="nav-justified" style="background-color: #CCCCFF">
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label6" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label7" runat="server" Text="Contact Person"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label8" runat="server" Text="Company Information"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label9" runat="server" Text="Contact No."></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style6" style="text-align:right">
                <asp:Label ID="Label11" runat="server" Text="Email id"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <center>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="Create Profile" Height="50" Width="150" OnClick="Button1_Click" /></center>
        <br />
        <br />
</asp:Content>
