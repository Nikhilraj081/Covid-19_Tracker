<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="MYPROJECT1.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="registration1.css">
    <style type="text/css">
        .auto-style17 {
            width: 367px;
            margin-left: 77px;
            margin-top: 32px;
        }
        .auto-style18 {
            width: 140px;
            margin-left: 209px;
            margin-top: 22px;
        }
       
        .auto-style19 {
            margin-left: 8px;
        }
        .auto-style20 {
            margin-left: 15px;
        }
       
        .auto-style21 {
            margin-left: 80px;
        }
       
       
       
        .auto-style22 {
            text-align: center;
            margin-left: 449px;
            margin-top: 107px;
            padding: 5px;
        }
       
       
       
        .auto-style23 {
        margin-left: 82px;
    }
       
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:130px;padding-bottom:70px">
    
    <asp:Panel ID="Panel1" runat="server" BackColor="#0066CC" Height="447px" Width="458px" CssClass="auto-style22">
        
        <br />
        <div class="label">
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="White" Text="New User Regiustration" align="center"></asp:Label>
        </div>
        <div class="textbox">
        <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="White" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="196px" Class="textbox2" CssClass="auto-style21" ></asp:TextBox>
        </div>
        <div class="textbox">

            <asp:Label ID="Label10" runat="server" Font-Size="Larger" ForeColor="White" Text="Last Name"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style23" Width="196px"></asp:TextBox>

        </div>
        <div class="textbox" controltocompare="Textbox3" aria-busy="False">
        <asp:Label ID="Label3" runat="server" Font-Size="Larger" ForeColor="White" Text="Email Id"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="197px" CssClass="auto-style10" TextMode="Email"></asp:TextBox>
        </div>
        <div class="auto-style9">
              <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
        </div>
        
        <div class="textbox">
        <asp:Label ID="Label4" runat="server" Font-Size="Larger" ForeColor="White" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" TextMode="Password" Width="195px"></asp:TextBox>
            </div>
        <div class="auto-style19">

            <asp:Label ID="Label9" runat="server" Font-Size="X-Large" ForeColor="White" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style20" Width="194px" TextMode="Password"></asp:TextBox>

        </div>
        
        <div class="textbox">
        <asp:Label ID="Label6" runat="server" Font-Size="Larger" ForeColor="White" Text="Mobile No"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone" Width="195px" CssClass="auto-style5" Height="20px"  ></asp:TextBox>
        </div>
          <div class="auto-style18">
              <asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="#0033CC" ForeColor="White" Height="40px" Width="121px" OnClick="Button1_Click" />
          </div>
            
          
            
        <div class="auto-style17">
            <asp:Label ID="Label8" runat="server" ForeColor="Yellow" Font-Size="Large"></asp:Label>
        </div>
    </asp:Panel>
     
    </div>
</asp:Content>
