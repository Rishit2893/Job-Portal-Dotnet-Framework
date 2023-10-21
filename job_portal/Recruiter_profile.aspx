<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recruiter_profile.aspx.cs" Inherits="job_portal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1100px;
            margin-right: 0px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style4 {
            width: 246px;
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <h2>Welcome to Recruiter Page, <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label></h2>
            </td>
            <td class="auto-style4" style="text-align:right">
                <asp:LinkButton ID="LinkButton1" runat="server" href="SignOut.aspx"><h3>Logout</h3></asp:LinkButton>
            </td>
        </tr>
    </table>
    
    <br />
    <center>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="355px" Width="629px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
             
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        
    </asp:DetailsView>
    </center>
    <br />
    <br />
    
</asp:Content>
