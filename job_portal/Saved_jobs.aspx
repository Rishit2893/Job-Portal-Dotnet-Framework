<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Saved_jobs.aspx.cs" Inherits="job_portal.Saved_jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><asp:Label ID="Label1" runat="server" Text="Saved Jobs" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        <br />
        <br />
    <br />
    <br /></center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1025px" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Height="221px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="Apply">  
                                <EditItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </ItemTemplate>  
                            </asp:TemplateField>
            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
            <asp:BoundField DataField="job_post_id" HeaderText="job_post_id" SortExpression="job_post_id" />
            <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
            <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
            <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
            
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Saved_jobs] WHERE [saved_job_id] = @saved_job_id" SelectCommand="SELECT Saved_jobs.candidate_id, Saved_jobs.job_post_id, Company.company_name, Job_post.job_title, Job_post.post FROM Saved_jobs INNER JOIN Job_post ON Saved_jobs.job_post_id = Job_post.job_post_id INNER JOIN Company ON Job_post.company_id = Company.company_id">
        <DeleteParameters>
            <asp:Parameter Name="saved_job_id" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Apply For Selected Jobs" OnClick="Button1_Click" />
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
