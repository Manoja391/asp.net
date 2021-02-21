<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DocDetail.aspx.cs" Inherits="DocDetail" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#FF9900" Text="View My Details"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Doctor  Id  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" TextMode="MultiLine" 
        Width="251px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Mobile  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Categorie  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />

</div>
</asp:Content>