<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="postad1.aspx.cs" Inherits="MYPROJECT1.postad1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="postad.css">
<style type="text/css">
    .auto-style22 {
        margin-left: 173px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:170px;padding-bottom:70px">
   
    <asp:Panel ID="Panel1" runat="server" BackColor="#0066CC" CssClass="auto-style20" Height="689px" Width="452px">
        
        <br />
        <div class="label">
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="White" Text="Post Ad" align="center"></asp:Label>
        </div>
        <div class="textbox">
        <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="White" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="196px" Class="textbox2" CssClass="auto-style3" style="margin-left: 112px"></asp:TextBox>
        </div>
        <div class="textbox">
        <asp:Label ID="Label3" runat="server" Font-Size="Larger" ForeColor="White" Text="State"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="199px" class="textbox2" CssClass="auto-style9" style="margin-left: 119px">
            <asp:ListItem>select your state</asp:ListItem>
            <asp:ListItem>Andhra Pradesh</asp:ListItem>
          <asp:ListItem>Arunachal Pradesh</asp:ListItem>
          <asp:ListItem>Assam</asp:ListItem>
          <asp:ListItem>Bihar</asp:ListItem>
          <asp:ListItem>Chhattisgarh</asp:ListItem>
          <asp:ListItem>Goa</asp:ListItem>
          <asp:ListItem>Gugrat</asp:ListItem>
          <asp:ListItem>Haryana</asp:ListItem>
          <asp:ListItem>Himachal Pradesh</asp:ListItem>
          <asp:ListItem>Jammu And Kashmir</asp:ListItem>
          <asp:ListItem>Jharkhand</asp:ListItem>
        </asp:DropDownList>
        </div>
        <div class="textbox">
        <asp:Label ID="Label4" runat="server" Font-Size="Larger" ForeColor="White" Text="City"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="197px" CssClass="auto-style10" style="margin-left: 133px">
            <asp:ListItem>select your city</asp:ListItem>
             <asp:ListItem>Chhapra</asp:ListItem>
            <asp:ListItem>Patna</asp:ListItem>
          <asp:ListItem>Gaya</asp:ListItem>
          <asp:ListItem>Bhagalpur</asp:ListItem>
          <asp:ListItem>Aara</asp:ListItem>
          <asp:ListItem>Siwan</asp:ListItem>
        </asp:DropDownList>
            </div>
        <div class="textbox">
        <asp:Label ID="Label5" runat="server" Font-Size="Larger" ForeColor="White" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="41px" TextMode="MultiLine" Width="190px" CssClass="auto-style11" style="margin-left: 87px"></asp:TextBox>
        </div>
        <div class="textbox">
        <asp:Label ID="Label6" runat="server" Font-Size="Larger" ForeColor="White" Text="Contact"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone" Width="185px" CssClass="auto-style12" Height="22px" style="margin-left: 93px"></asp:TextBox>
        </div>
        <div class="textbox">
        <asp:Label ID="Label7" runat="server" Text="Category" Font-Size="Larger" ForeColor="White"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style13" Height="22px" Width="154px" style="margin-left: 79px">
            <asp:ListItem>Select Your Category</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="textbox">
        <asp:Label ID="Label8" runat="server" Text="Type" Font-Size="Larger" ForeColor="White"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style14" Width="153px" style="margin-left: 122px">
            <asp:ListItem>Select Type</asp:ListItem>
            <asp:ListItem>Room</asp:ListItem>
            <asp:ListItem>Hostel</asp:ListItem>
            <asp:ListItem>PG</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="textbox">

        <asp:Label ID="Label9" runat="server" Font-Size="Larger" ForeColor="White" Text="Bedrooms"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style15" TextMode="Number" Width="142px" style="margin-left: 65px">1</asp:TextBox>

    </div>
         <div class="textbox">

             <asp:Label ID="Label10" runat="server" Font-Size="Larger" ForeColor="White" Text="Bathrooms"></asp:Label>
             <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style16" TextMode="Number" Width="142px" style="margin-left: 57px">1</asp:TextBox>

    </div>
         <div class="textbox">

             <asp:Label ID="Label11" runat="server" Font-Size="Larger" ForeColor="White" Text="Price"></asp:Label>
             <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style17" Width="141px" TextMode="Number" style="margin-left: 119px"></asp:TextBox>

    </div>
         <div class="textbox">

             <asp:Label ID="Label12" runat="server" Font-Size="Larger" ForeColor="White" Text="Upload Picture"></asp:Label>
             <asp:FileUpload ID="fileupload" allowmultiple="true" runat="server" CssClass="auto-style18" Font-Size="Small" ForeColor="White" Height="23px" Width="224px" />
    </div>
         <div class="textbox">

             <asp:Button ID="Button1" runat="server" BackColor="#0033CC" CssClass="auto-style22" Font-Size="Large" ForeColor="White" Height="31px" OnClick="Button1_Click" Text="Post" Width="103px" />

    </div>
        <div class="auto-style21">
            <asp:Label ID="Label13" runat="server" ForeColor="Yellow" Font-Size="Large"></asp:Label>
        </div>
          
    </asp:Panel>
      
        </div>
</asp:Content>
