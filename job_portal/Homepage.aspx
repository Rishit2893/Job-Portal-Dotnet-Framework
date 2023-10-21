<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="job_portal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 166px;
            height: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container-fluid mt-3">
        <div class="row">
          <div class="col">
              <center>
                  <a href="AdminLogin.aspx"><img src="images/admin.png" class="auto-style1"/></a>
                  <h3>Admin</h3>
              </center>
              </div>
          <div class="col">
              <center>
                  <a href="JobSeekerLogin.aspx"><img src="images/jobseeker.jpeg" class="auto-style1" /></a>
                  <h3>Jobseeker</h3>

              </center>
              </div>
          <div class="col">
              <center>
                  <a href="RecruiterLogin.aspx"><img src="images/recruiter.jpg" class="auto-style1"/></a>
                  <h3>Recruiter</h3>
              </center>
              </div>
            </div>
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
</asp:Content>
