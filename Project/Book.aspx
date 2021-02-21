<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="New Booking"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Appointment Id  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Categorie  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Date  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="(DD/MM/YYYY)"></asp:Label>
        <br />
&nbsp;<br />
        <asp:Label ID="Label5" runat="server" Text="Time  :-"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>7 am</asp:ListItem>
            <asp:ListItem>8 am</asp:ListItem>
            <asp:ListItem>9am</asp:ListItem>
            <asp:ListItem>10 am</asp:ListItem>
            <asp:ListItem>11 am</asp:ListItem>
            <asp:ListItem>12pm</asp:ListItem>
            <asp:ListItem>1 pm</asp:ListItem>
            <asp:ListItem>3 pm</asp:ListItem>
            <asp:ListItem>4 pm</asp:ListItem>
            <asp:ListItem>5 pm</asp:ListItem>
            <asp:ListItem>6 pm</asp:ListItem>
            <asp:ListItem>7 pm</asp:ListItem>
            <asp:ListItem>8 pm</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Check" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="White" ForeColor="Black" 
            Height="45px" onclick="Button2_Click" Text="Empty" Visible="False" 
            Width="145px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="45px" onclick="Button3_Click" 
            Text="Empty" Visible="False" Width="145px" BackColor="White" />
        <br />
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" Height="30px" onclick="Button6_Click" 
            Text="Book" Visible="False" Width="51px" />
        <br />
    
    </div>
</asp:Content>