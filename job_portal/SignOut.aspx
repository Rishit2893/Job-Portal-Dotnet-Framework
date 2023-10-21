<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="job_portal.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>You Are Signed Out</h2>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Homepage.aspx">Login Again</asp:HyperLink>
        </div>
    </form>
</body>
</html>
