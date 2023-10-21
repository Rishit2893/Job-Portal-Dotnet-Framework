<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Search_job.aspx.cs" Inherits="job_portal.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-color: #66CCFF;
        height: 145px;
    }
        .auto-style3 {
            width: 403px;
        }
        .auto-style4 {
            width: 399px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <center>
        <h2 style=" color: #FF6600;"> Search Job</h2>
    </center>
    <br />
    <br/>
    <br/>
    <br />
    <br/>
    <br/>
    <br />
    <table class="auto-style1" border="0">
        
        <tr>
            <td class="auto-style4">
                <button class="w3-btn w3-round-large w3-hover-aqua">
                <asp:HyperLink ID="HyperLink2" runat="server" href="SearchByCompany.aspx">Search By Company</asp:HyperLink>
                </button>
            </td>
            <td class="auto-style3"><button class="w3-btn w3-round-large w3-hover-aqua">
                <asp:HyperLink ID="HyperLink3" runat="server" href="SearchByCategory.aspx">Search by category</asp:HyperLink>
                </button>
           </td>
            <td><button class="w3-btn w3-round-large w3-hover-aqua">
                <asp:HyperLink ID="HyperLink4" runat="server" href="Saved_jobs.aspx">My Jobs</asp:HyperLink>
                </button>
           </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br/>
    <br/>
    <br/>

    <br/>
    <br/>
    <br />
    <br/>
    <br/>
    <br />
</asp:Content>
