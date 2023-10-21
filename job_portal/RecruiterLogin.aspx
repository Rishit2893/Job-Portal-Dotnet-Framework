<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RecruiterLogin.aspx.cs" Inherits="job_portal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="boot/css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
    <br />
    <br />
    <div class="container">
        <div class="row">
          <div class="col-md-5 mx-auto">
               <div class="card">
                  <div class="card-body"></div>
                  <div class="row">
                      <div class="col">
                          <center>
                              <h3>Login</h3>
                          </center>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col">
                          <hr>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col">
                          <label>UserName</label>
                          <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="user_text" runat="server" placeholder="UserName"></asp:TextBox>
                          </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col">
                          <label>Password</label>
                          <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="pass_text" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                          </div>
                      </div>
                  </div>
                      <asp:Label ID="Label1" runat="server" Visible="False" ForeColor="Red"></asp:Label>
                  
                  <div class="form-group">
                      <center>
                        <asp:Button class="btn btn-primary btn-block" width="101px" height="40px" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                          <asp:HyperLink ID="HyperLink1" runat="server">Forget Password?</asp:HyperLink>
                      </center>
                  </div>
                  <div>
                      <label>New User!    </label>
                      <asp:HyperLink ID="HyperLink2" runat="server" href="Recruiter_regis.aspx">Registration</asp:HyperLink>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <br/>
    <br/>
    <br />
    <br/>
    <br/>
    <br />
    <br/>    
</asp:Content>
