<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="JobSeeker_regis1.aspx.cs" Inherits="job_portal.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 236px;
        }
        .auto-style4 {
            width: 415px;
        }
        .auto-style6 {
            width: 605px;
        }
        .auto-style7 {
            width: 733px;
        }
        .auto-style8 {
            width: 666px;
            margin-left: 40px;
        }
        .auto-style9 {
            width: 611px;
            height: 25px;
        }
        .auto-style10 {
            width: 415px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
        .auto-style12 {
            width: 611px;
        }
        .auto-style13 {
            width: 622px;
        }
        .auto-style14 {
            width: 622px;
            margin-left: 40px;
        }
        .auto-style15 {
            width: 666px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Login details" Font-Bold="True" Font-Size="Large" ForeColor="#00B423" Font-Underline="True"></asp:Label>
    </p>
    <table class="w3-table-all w3-card-4">
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
        <asp:Label ID="Label5" runat="server" Text="Personal details" Font-Bold="True" Font-Size="Large" ForeColor="#00B423" Font-Underline="True"></asp:Label>
    </p>
    <table class="w3-table-all w3-card-4" >
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                <asp:Label ID="Label7" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                <asp:Label ID="Label8" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender"/>
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style12" style="text-align:right">
                D.O.B</td>
            <td class="auto-style4">
                &nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DateofBirth") %>' TextMode="Date"></asp:TextBox>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style9" style="text-align:right">
                <asp:Label ID="Label11" runat="server" Text="Location"></asp:Label>
            </td>
            <td class="auto-style10">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Text="Country"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server" Text="State"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Text="City"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12" style="text-align:right"><asp:Label ID="Label12" runat="server" Text="Full Address"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Height="61px" Width="215px" TextMode="MultiLine"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12" style="text-align:right"><asp:Label ID="Label13" runat="server" Text="Contact No."></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12" style="text-align:right">
            <asp:Label ID="Label14" runat="server" Text="email_id"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp; &nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12" style="text-align:right">
            <asp:Label ID="Label15" runat="server" Text="Profile Date"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style12">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label10" runat="server" Text="Education details" Font-Bold="True" Font-Size="Large" ForeColor="#00B423" Font-Underline="True"></asp:Label>
    </p>
    <table class="w3-table-all w3-card-4">
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label19" runat="server" Text="S.S.C"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label20" runat="server" Text="H.S.C"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label21" runat="server" Text="Graduation"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem Value="NULL">select</asp:ListItem>
                    <asp:ListItem>B.Tech</asp:ListItem>
                    <asp:ListItem>B.B.A</asp:ListItem>
                    <asp:ListItem>Pharmacy</asp:ListItem>
                    <asp:ListItem>Dental</asp:ListItem>
                    <asp:ListItem>B.com</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label22" runat="server" Text="Institute"></asp:Label>
            </td>
            <td class="auto-style4">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style14" style="text-align:right">
                <asp:Label ID="Label31" runat="server" Text="Percentage"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;
                &nbsp;<asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("DateofBirth") %>'></asp:TextBox>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style13" style="text-align:right">
                <asp:Label ID="Label23" runat="server" Text="Post Graduation"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem Value="NULL">Select</asp:ListItem>
                    <asp:ListItem>M.tech</asp:ListItem>
                    <asp:ListItem>M.B.A</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right">
            <asp:Label ID="Label27" runat="server" Text="Institute"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox13" runat="server" Height="18px" Width="133px"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right">
            <asp:Label ID="Label28" runat="server" Text="Percentage"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right">
            <asp:Label ID="Label29" runat="server" Text="Doctorate/PhD"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem Value="NULL">select</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right">
            <asp:Label ID="Label30" runat="server" Text="Institute"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            &nbsp;
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right"><asp:Label ID="Label32" runat="server" Text="Percentage"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13" style="text-align:right"><asp:Label ID="Label33" runat="server" Text="Certification Course"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style13">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label24" runat="server" Text="Professional details" Font-Bold="True" Font-Size="Large" ForeColor="#00B423" Font-Underline="True"></asp:Label>
    </p>
    <table class="w3-table-all w3-card-4" >
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style15" style="text-align:right">
                <asp:Label ID="Label25" runat="server" Text="Category"></asp:Label>
            &nbsp;
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList10" runat="server" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style15" style="text-align:right">
                <asp:Label ID="Label26" runat="server" Text="Area"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style15" style="text-align:right">
                <asp:Label ID="Label34" runat="server" Text="Company"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style15" style="text-align:right">
                <asp:Label ID="Label35" runat="server" Text="Role"></asp:Label>
            </td>
            <td class="auto-style4">
&nbsp;
                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style8" style="text-align:right">
                <asp:Label ID="Label36" runat="server" Text="Experience"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList12" runat="server">
                    <asp:ListItem Value="0">select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label44" runat="server" Text="years"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList13" runat="server">
                    <asp:ListItem Value="0">select</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:Label ID="Label45" runat="server" Text="months"></asp:Label>

            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style15" style="text-align:right">
                <asp:Label ID="Label37" runat="server" Text="Annual Salary"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem Value="0">select</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<asp:Label ID="Label46" runat="server" Text="Lacs"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList14" runat="server">
                    <asp:ListItem Value="0">select</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>75</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label47" runat="server" Text="Thousands"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style15" style="text-align:right"><asp:Label ID="Label38" runat="server" Text="Skills"></asp:Label>
            </td><td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox22" runat="server" Height="18px" Width="133px"></asp:TextBox>
            </td><td>&nbsp;</td></tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="auto-style15">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <p style="text-align:center">
        <br />
        <asp:Label ID="Label39" runat="server" Text="Resume" Font-Bold="True" Font-Size="Large" ForeColor="#00B423" Font-Underline="True"></asp:Label>
    </p>
    <table class="w3-table-all w3-card-4">
        <tr><td class="auto-style7">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style7" style="text-align:right">
                <asp:Label ID="Label40" runat="server" Text="Resume HeadLine"></asp:Label>
            &nbsp;
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style7">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
        <tr>
            <td class="auto-style7" style="text-align:right">
                <asp:Label ID="Label41" runat="server" Text="Upload Resume"></asp:Label>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr><td class="auto-style7">&nbsp;</td><td class="auto-style4">&nbsp;</td><td>&nbsp;</td></tr>
    </table>
    <center>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-info" Text="Create Profile" Height="50" Width="150" OnClick="Button1_Click" /></center>
        <br />
    <br />
</asp:Content>
