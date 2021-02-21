<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="My.aspx.cs" Inherits="My" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
    
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Details" ForeColor="#FF9900"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="User Id  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="43px" TextMode="MultiLine" 
            Width="280px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="EMail  :-"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" 
            ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Font-Underline="True" 
            Text="Treatment History" ForeColor="#FF9900"></asp:Label>
        <br />
&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Horizontal" BorderStyle="None">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" 
                HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>