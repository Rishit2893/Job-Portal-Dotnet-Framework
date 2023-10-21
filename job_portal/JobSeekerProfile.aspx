<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="JobSeekerProfile.aspx.cs" Inherits="job_portal.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1281px;
            height: 320px;
        }
        .auto-style2 {
            width: 1279px;
            height: 477px;
        }
        .auto-style3 {
            width: 1279px;
            height: 389px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-container">
    <center class="auto-style1">
    <asp:Label ID="Label1" runat="server" Text="Basic Details" Font-Bold="True" Font-Size="Large" ForeColor="#FF9966"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="238px" Width="751px" AutogenerateRows="False" DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="candidate_id" HeaderText="Candidate Id" InsertVisible="false" ReadOnly="true" SortExpression="candidate_id" Visible="false"/>
            <asp:BoundField DataField="username" HeaderText="UserName" SortExpression="username" Visible="false" />
            <asp:BoundField DataField="profile_date" HeaderText="Profile Date" SortExpression="profile_date" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="middle_name" HeaderText="Middle Name" SortExpression="middle_name" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="candidate_addrs" HeaderText="Candidate Address" SortExpression="candidate_addrs" />
            <asp:BoundField DataField="city_id" HeaderText="City Id" SortExpression="city_id" Visible="false" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" Visible="false" />
            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
            <asp:BoundField DataField="contact_no" HeaderText="Contact No." SortExpression="contact_no" />
            <asp:BoundField DataField="email_id" HeaderText="Email Id" SortExpression="email_id"/>
            <asp:CommandField ShowEditButton="true" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asp.net project\job_portal\job_portal\App_Data\Job.mdf;Integrated Security=True" DeleteCommand="Delete From [Candidate_basic] Where [candidate_id]=@candidate_id" InsertCommand="Insert into [Candidate_basic] ([profile_date],[first_name],[middle_name],[last_name],[candidate_addrs],[dob],[contact_no],[email_id]) Values(@profile_date,@first_name,@middle_name,@last_name,@candidate_addrs,@dob,@contact_no,@email_id)" SelectCommand="Select * From [Candidate_basic] Where ([candidate_id]=@candidate_id)" ProviderName="System.Data.SqlClient"  UpdateCommand="Update [Candidate_basic] Set [profile_date]=@profile_date,[first_name]=@first_name,[middle_name]=@middle_name,[last_name]=@last_name,[candidate_addrs]=@candidate_addrs,[dob]=@dob,[contact_no]=@contact_no,[email_id]=@email_id">
        <SelectParameters >
            <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="profile_date" DbType="Date" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="middlename" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="candidate_addrs" Type="String" />
            <asp:Parameter Name="city_id" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="dob" DbType="Date" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="candidate_id" Type="Int32" />
        
        </UpdateParameters>
        <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="profile_date" DbType="Date" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="middlename" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="candidate_addrs" Type="String" />
            <asp:Parameter Name="city_id" Type="Int32" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="dob" DbType="Date" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="candidate_id" Type="Int32" />
        
        </InsertParameters>
    </asp:SqlDataSource>
    </center>
</div>
<div class="w3-container">
    <center class="auto-style2">
    <asp:Label ID="Label2" runat="server" Text="Education Details" Font-Bold="True" Font-Size="Large" ForeColor="#FF9966"></asp:Label>
    &nbsp;<asp:DetailsView ID="DetailsView2" runat="server" Height="389px" Width="752px" AutogenerateRows="False" DataKeyNames="candidate_edu_id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="candidate_edu_id" HeaderText="Candidate Education Id" InsertVisible="false" ReadOnly="true" SortExpression="candidate_edu_id" Visible="false"/>
            <asp:BoundField DataField="candidate_id" HeaderText="Candidate Id" SortExpression="candidate_id" Visible="false" />
            <asp:BoundField DataField="per10" HeaderText="10 %" SortExpression="per10" />
            <asp:BoundField DataField="per12" HeaderText="12 %" SortExpression="per12" />
            <asp:BoundField DataField="graduation" HeaderText="Graduation" SortExpression="graduation" />
            <asp:BoundField DataField="institute_grad" HeaderText="Institute" SortExpression="institute_grad" />
            <asp:BoundField DataField="perc_grad" HeaderText="Percentage" SortExpression="perc_grad" />
            <asp:BoundField DataField="post_grad" HeaderText="Post Graduation" SortExpression="post_grad" />
            <asp:BoundField DataField="institute_post_grad" HeaderText="Institute" SortExpression="institute_post_grad" />
            <asp:BoundField DataField="perc_post_grad" HeaderText="Percentage" SortExpression="perc_post_grad" />
            <asp:BoundField DataField="dr_phd" HeaderText="Dr. /Phd." SortExpression="dr_phd" />
            <asp:BoundField DataField="institute_dr_phd" HeaderText="Institute" SortExpression="institute_dr_phd"/>
            <asp:BoundField DataField="perc_dr_phd" HeaderText="Percentage" SortExpression="perc_dr_phd"/>
            <asp:BoundField DataField="certification" HeaderText="Certification" SortExpression="certification"/>
            <asp:CommandField ShowEditButton="true" />
        </Fields>


        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />


    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asp.net project\job_portal\job_portal\App_Data\Job.mdf;Integrated Security=True" DeleteCommand="Delete From [Candidate_education] Where [candidate_edu_id]=@candidate_edu_id" InsertCommand="Insert into [Candidate_education] ([candidte_id],[per10],[per12],[graduation],[institute_grad],[perc_grad],[post_grad],[institute_post_grad],[perc_post_grad],[dr_phd],[institute_dr_phd],[perc_dr_phd],[certification]) Values(@candidte_id,@per10,@per12,@graduation,@institute_grad,@perc_grad,@post_grad,@institute_post_grad,@perc_post_grad,@dr_phd,@institute_dr_phd,@perc_dr_phd,@certification)" SelectCommand="Select * From [Candidate_education] Where ([candidate_id]=@candidate_id)" ProviderName="System.Data.SqlClient"  UpdateCommand="Update [Candidate_education] Set [candidte_id]=@candidate_id,[per10]=@per10,[per12]=@per12,[graduation]=@graduation,[institute_grad]@institute_grad,[perc_grad]=@perc_grad,[post_grad]=@post_grad,[institute_post_grad]=@institute_post_grad,[perc_post_grad]=@perc_post_grad,[dr_phd]=@dr_phd,[institute_dr_phd]=@institute_dr_phd,[perc_dr_phd]=@perc_dr_phd,[certification]=@certification">
        <SelectParameters >
            <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="candidate_edu_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="perc10" Type="Int32" />
            <asp:Parameter Name="per12" Type="Int32" />
            <asp:Parameter Name="graduation" Type="String" />
            <asp:Parameter Name="institute_grad" Type="String" />
            <asp:Parameter Name="perc_grad" Type="Decimal" />
            <asp:Parameter Name="post_grad" Type="String" />
            <asp:Parameter Name="institute_post_grad" Type="String" />
            <asp:Parameter Name="perc_post_grad" Type="Decimal" />
            <asp:Parameter Name="dr_phd" Type="String" />
            <asp:Parameter Name="institute_dr_phd" Type="String" />
            <asp:Parameter Name="perc_dr_phd" Type="Decimal" />
            <asp:Parameter Name="certification" Type="String" />
            <asp:Parameter Name="candidate_edu_id" Type="Int32" />
        
        </UpdateParameters>
        <InsertParameters>
        <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="perc10" Type="Int32" />
            <asp:Parameter Name="per12" Type="Int32" />
            <asp:Parameter Name="graduation" Type="String" />
            <asp:Parameter Name="institute_grad" Type="String" />
            <asp:Parameter Name="perc_grad" Type="Decimal" />
            <asp:Parameter Name="post_grad" Type="String" />
            <asp:Parameter Name="institute_post_grad" Type="String" />
            <asp:Parameter Name="perc_post_grad" Type="Decimal" />
            <asp:Parameter Name="dr_phd" Type="String" />
            <asp:Parameter Name="institute_dr_phd" Type="String" />
            <asp:Parameter Name="perc_dr_phd" Type="Decimal" />
            <asp:Parameter Name="certification" Type="String" />
            <asp:Parameter Name="candidate_edu_id" Type="Int32" />
        
        </InsertParameters>

    </asp:SqlDataSource>
    </center>
</div>
<div class="w3-container">
    <center class="auto-style3">
    <asp:Label ID="Label3" runat="server" Text="Professional Details" Font-Bold="True" Font-Size="Large" ForeColor="#FF9966"></asp:Label>
    <asp:DetailsView ID="DetailsView3" runat="server" Height="272px" Width="751px" AutogenerateRows="False" DataKeyNames="candidate_prof_id" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields><asp:BoundField DataField="area_id" HeaderText="Area Id" SortExpression="area_id" Visible="false" />
            <asp:BoundField DataField="candidate_prof_id" HeaderText="Candidate Prof. Id" InsertVisible="false" ReadOnly="true" SortExpression="candidate_id" Visible="false"/>
            <asp:BoundField DataField="candidate_id" HeaderText="Candidate Id" SortExpression="candidate_id" Visible="false" />
            <asp:BoundField DataField="area_id" HeaderText="Area Id" SortExpression="area_id" Visible="false" />
            <asp:BoundField DataField="expr_yrs" HeaderText="Experience Years" SortExpression="expr_yrs" />
            <asp:BoundField DataField="expr_mth" HeaderText="Experience Month" SortExpression="expr_mth" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="industry" HeaderText="Industry" SortExpression="industry" />
            <asp:BoundField DataField="ind_role" HeaderText="Industry Role" SortExpression="ind_role" />
            <asp:BoundField DataField="skills" HeaderText="Skills" SortExpression="skills" />
            <asp:CommandField ShowEditButton="true" />
        </Fields> 

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\asp.net project\job_portal\job_portal\App_Data\Job.mdf;Integrated Security=True" DeleteCommand="Delete From [Candidate_professional] Where [candidate_prof_id]=@candidate_prof_id" InsertCommand="Insert into [Candidate_professional] ([candidate_id],[area_id],[expr_yrs],[expr_mth],[salary],[industry],[ind_role],[skills]) Values(@candidate_id,@area_id,@expr_yrs,@expr_mth,@salary,@industry,@ind_role,@skills)" SelectCommand="Select * From [Candidate_professional] Where ([candidate_id]=@candidate_id)" ProviderName="System.Data.SqlClient"  UpdateCommand="Update [Candidate_professional] Set [candidate_id]=@candidate_id,[area_id]=@area_id,[expr_yrs]=@expr_yrs,[expr_mth]=@expr_mth,[salary]=@salary,[industry]=@industry,[ind_role]=@ind_role,[skills]=@skills">
        <SelectParameters >
            <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="candidate_prof_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="area_id" Type="Int32" />
            <asp:Parameter Name="expr_yrs" Type="Int32" />
            <asp:Parameter Name="expr_mth" Type="Int32" />
            <asp:Parameter Name="salary" Type="Decimal" />
            <asp:Parameter Name="industry" Type="String" />
            <asp:Parameter Name="ind_role" Type="String" />
            <asp:Parameter Name="skills" Type="String" />
            <asp:Parameter Name="candidate_prof_id" Type="Int32" />
        
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
            <asp:Parameter Name="area_id" Type="Int32" />
            <asp:Parameter Name="expr_yrs" Type="Int32" />
            <asp:Parameter Name="expr_mth" Type="Int32" />
            <asp:Parameter Name="salary" Type="Decimal" />
            <asp:Parameter Name="industry" Type="String" />
            <asp:Parameter Name="ind_role" Type="String" />
            <asp:Parameter Name="skills" Type="String" />
            <asp:Parameter Name="candidate_prof_id" Type="Int32" />

        </InsertParameters>

    </asp:SqlDataSource>
    </center>
</div>

</asp:Content>
