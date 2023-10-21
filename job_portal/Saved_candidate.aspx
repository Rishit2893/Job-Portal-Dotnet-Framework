<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Saved_candidate.aspx.cs" Inherits="job_portal.Saved_candidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><asp:Label ID="Label1" runat="server" Text="Saved Candidates" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
    <br />
    <br /></center>
    <asp:GridView ID="GridView1" runat="server" style="margin-left:40px"
        onrowcommand="GridView1_RowCommand"
        onselectedindexchanged="GriedView1_SelectedIndexChanged" Width="750px">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Call" ShowHeader="true" Text="Call" />
        </Columns>
    </asp:GridView>
</asp:Content>
