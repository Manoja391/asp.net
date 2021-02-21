<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donar_Reg.aspx.cs" Inherits="Donar_Reg" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        Text="Donar Register"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="User ID  :-"></asp:Label>
&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
    <br />
    <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
&nbsp;<asp:Label ID="Label6" runat="server" Text="Mobile  :-"></asp:Label>
&nbsp;
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Blood Group  :-"></asp:Label>
&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label10" runat="server" Text="Organ  :-"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="84px">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem>Eye</asp:ListItem>
        <asp:ListItem>Liver</asp:ListItem>
        <asp:ListItem>Kidney</asp:ListItem>
        <asp:ListItem>Brain</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
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
    
</div>
</asp:Content>