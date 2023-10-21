<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Post_job.aspx.cs" Inherits="job_portal.Post_job" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        background-color: #CCCCFF;
    }
    .auto-style2 {
        height: 20px;
    }
    .auto-style3 {
        width: 558px;
    }
    .auto-style4 {
        height: 20px;
        width: 558px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><asp:Label ID="Label1" runat="server" Text="Post Job" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
    <br />
    <br /></center>
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">
                    <asp:Label ID="Label2" runat="server" Text="Job Title"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">
                    <asp:Label ID="Label3" runat="server" Text="Post"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">
                    <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">
                    <asp:Label ID="Label5" runat="server" Text="Area"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align:right">
                    <asp:Label ID="Label6" runat="server" Text="Location"></asp:Label>
                </td>
                <td>&nbsp;&nbsp; Country<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;&nbsp; State<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;&nbsp; City<asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label7" runat="server" Text="Min. Experience"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
&nbsp;Years&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
&nbsp;Months</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label8" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>5000</asp:ListItem>
                        <asp:ListItem>10000</asp:ListItem>
                    </asp:DropDownList>
&nbsp; To&nbsp;
                    <asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>10000</asp:ListItem>
                        <asp:ListItem>25000</asp:ListItem>
                    </asp:DropDownList>
&nbsp;Rs. per month</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label9" runat="server" Text="Education"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList10" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>B.E</asp:ListItem>
                        <asp:ListItem>M.B.A</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label10" runat="server" Text="Skills"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label11" runat="server" Text="Basic Requirement"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label12" runat="server" Text="No. of Vacancy"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align:right">
                    <asp:Label ID="Label13" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
&nbsp; To
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Post" Width="103px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
