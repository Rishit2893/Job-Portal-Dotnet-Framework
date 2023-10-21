<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SearchByCompany.aspx.cs" Inherits="job_portal.SearchByCompany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 394px;
        }
        .auto-style2 {
            margin-left: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><asp:Label ID="Label1" runat="server" Text="Search By Company" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
        <br />
        <br />
    <br />
    <br /></center>
    <div>

        <table class="nav-justified">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align:right">
                    <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="36px" Text="Search" Width="175px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="1061px" Height="220px" CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
            <asp:TemplateField HeaderText="Save">  
                                <EditItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Apply">  
                                <EditItemTemplate>  
                                    <asp:CheckBox ID="CheckBox2" runat="server" />  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox2" runat="server" />  
                                </ItemTemplate>  
                            </asp:TemplateField>
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
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Apply Or Save" Width="234px" Height="53px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
