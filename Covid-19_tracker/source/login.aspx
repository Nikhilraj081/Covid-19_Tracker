<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MYPROJECT1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="login1.css" />
    
   
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:50px;padding-bottom:70px">
    
    <asp:Panel ID="Panel1" runat="server" BackColor="#0066CC" Height="354px" CssClass="auto-style6" Width="375px">
            <div class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text="Login" Font-Size="XX-Large" ForeColor="White"></asp:Label>

            </div>
            <div class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="Email Id" ForeColor="White" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Width="178px" TextMode="Email" Height="22px"></asp:TextBox>
            </div>
            <div class="auto-style11">
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="Larger" ForeColor="White"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style12" Width="179px" TextMode="Password"></asp:TextBox>
            </div>
            <div class="auto-style13">
                <asp:HyperLink ID="HyperLink1" style="text-decoration:none" runat="server" ForeColor="#FFFF66" Font-Size="Large" NavigateUrl="~/registration.aspx">New User Register</asp:HyperLink>
            </div>
            <div class="auto-style14">
                <asp:Button ID="Button3" runat="server" BackColor="#0033CC" Font-Size="Larger" ForeColor="White" Height="34px" OnClick="Button3_Click1" Text="Login" Width="110px" />
            </div>
            <div class="auto-style15">
                <asp:Label ID="Label4" runat="server" Font-Size="Larger" ForeColor="#FFFF66"></asp:Label>
            </div>


        </asp:Panel>

       
        </div>
</asp:Content>
    

