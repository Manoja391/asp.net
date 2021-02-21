<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
        <h2>Choose Your Login</h2>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table width="80%" style="padding-left: 50px; margin-left: 213px;">
       <tr>
       <td width="33%"><center><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx"><img src="images/admin%20btn.jpg" /></asp:HyperLink></center></td>
       <td width="33%"><center><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Default2.aspx"><img src="images/patient%20btn.jpg" /></asp:HyperLink></center></td>
       <td><center><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Default3.aspx"><img src="images/Doctor%20btn.jpg" /></asp:HyperLink></center></td>
       </tr></table> 
        <br />
        <br />
        
    </div>
</asp:Content>