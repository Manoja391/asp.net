<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDoc.aspx.cs" Inherits="AddDoc" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#FF9900" Text="Add Doctor "></asp:Label>
    <br />
    <br />
    <br />
        <asp:Label ID="Label2" runat="server" Text="Doc ID  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="36px" TextMode="MultiLine" 
            Width="202px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        &nbsp;
    <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Categorie  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>General Physician</asp:ListItem>
            <asp:ListItem>Bone</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Dentist</asp:ListItem>
            <asp:ListItem>Neurologist</asp:ListItem>
            <asp:ListItem>Kidney</asp:ListItem>
            <asp:ListItem>Cardiologist</asp:ListItem>
            <asp:ListItem>Plastic Surgeon</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Cancel" />
        &nbsp;
    <br />

</div>
</asp:Content>
