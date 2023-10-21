<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUp.aspx.cs" Inherits="job_portal.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 752px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <h2>Welcome to Job Portal,<asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" ForeColor="Blue"></asp:Label></h2>
            </td>
            <td style="text-align:right" class="auto-style1">
                <asp:LinkButton ID="LinkButton1" runat="server" href="SignOut.aspx" style="text-align:right"><h4>Logout</h4></asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" Height="112px" Width="799px" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
        </center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [username] = @username" InsertCommand="INSERT INTO [Login] ([username], [password], [role]) VALUES (@username, @password, @role)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password, [role] = @role WHERE [username] = @username">
    <DeleteParameters>
        <asp:Parameter Name="username" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="role" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="role" Type="String" />
        <asp:Parameter Name="username" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    
    <br />
    <div>

    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
