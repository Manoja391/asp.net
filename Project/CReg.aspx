<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CReg.aspx.cs" Inherits="CReg" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label2" runat="server" Text="User ID  :-"></asp:Label>
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
        &nbsp;<asp:Label ID="Label6" runat="server" Text="Email  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Sex  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Age  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" MaxLength="4"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Bloog Group  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="100px">
            <asp:ListItem>A +</asp:ListItem>
            <asp:ListItem>A -</asp:ListItem>
            <asp:ListItem>B +</asp:ListItem>
            <asp:ListItem>B -</asp:ListItem>
            <asp:ListItem>O +</asp:ListItem>
            <asp:ListItem>O -</asp:ListItem>
            <asp:ListItem>AB +</asp:ListItem>
            <asp:ListItem>AB -</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<asp:Label ID="Label7" runat="server" Text="Password  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Confirm Password  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Cancel" />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>