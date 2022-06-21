<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="my_profile.aspx.cs" Inherits="MYPROJECT1.my_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 376px;
            width: 150px;
           
        }
        .auto-style3 {
            height: 383px;
            width: 163px;
        }
        .auto-style4 {
            width: 87px;
            margin-left: 51px;
        }
        .auto-style5 {
            margin-left: 55px;
            width: 78px;
            height: 22px;
        }
        .auto-style6{
            padding-left:25px;
            height: 28px;
            margin-top: 0px;
        }
        .auto-style7 {
            margin-left: 33px;
            width: 126px;
        }
        .auto-style8 {
            margin-left: 271px;
            margin-top: -325px;
            padding-left:20px;
            padding-top:15px;
           
            
        }
        .auto-style10 {
            margin-left: 45px;
            margin-top: 15px;
            height: 26px;
        }       
        .auto-style12 {
            margin-top: 19px;
        }
                           
        .auto-style16 {
            height: 39px;
            margin-left: 45px;
            margin-top: 14px;
          
        }   
        
        .auto-style19 {
            margin-top: 13px;
        margin-left: 0px;
    }
        
        .auto-style20 {
            height: 19px;
            margin-left: 45px;
            margin-top: 37px;
        }              
        .auto-style22 {
            margin-top: 20px;
        }         
        
        .auto-style26 {
            margin-left: 30px;
        }
        .auto-style27 {
            margin-left: 75px;
        }
        .auto-style28 {
            margin-left: 19px;
        }
   
        
        .auto-style29 {
            margin-left: 2px;
        }
        .auto-style30 {
            margin-left: 74px;
        }
        .auto-style31 {
            margin-left: 21px;
        }
   
        
        .auto-style32 {
            height: 19px;
            margin-left: 0px;
            margin-top: 13px;
        }
        .auto-style33 {
            margin-left: 45px;
            margin-top: 14px;
        }
        .auto-style34 {
            margin-left: 50px;
        }
        .auto-style35 {
            margin-left: 24px;
        }
        .auto-style36 {
            margin-left: 23px;
        }
        .auto-style39 {
            margin-left: 21px;
            margin-bottom: 0px;
        }
   
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:120px;padding-bottom:70px">
   
        <div style="margin-top:55px;padding:50px" class="auto-style2">
          <div style=" background:white;padding-top:15px" class="auto-style3">
              <div class="auto-style5">
              <asp:Label ID="Label1" runat="server" Text="Hello" Font-Size="Small" ForeColor="Black"></asp:Label>
                  </div>
              <div class="auto-style4">
                  <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Large" ForeColor="Black"></asp:Label>
              </div>
              <hr />
              <div id="logout_btn" runat="server" class="auto-style6">
                  <asp:Button ID="Button2" runat="server" Text="My Account" BackColor="White" BorderColor="White" BorderStyle="None" Font-Size="Large" Width="104px" />
              </div>
               <hr />
              <div class="auto-style7">
                  <asp:Button ID="Button1" runat="server" Text="Logout" BackColor="White" BorderColor="White" BorderStyle="None" Font-Size="Large" Width="74px" OnClick="Button1_Click" />
              </div>
               <hr />
          </div>
        </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8" Width="865px" Height="383px" BackColor="White">
            <div class="auto-style10">
            <asp:Label ID="Label3"  runat="server" Text="Name" Font-Size="Large"></asp:Label>
             </div>
            <div class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" CssClass="auto-style14" Width="150px" ReadOnly="True" style="margin-left: 50px"></asp:TextBox>
                
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style26" Width="150px" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="Button9" runat="server" CssClass="auto-style27" Text="Edit" Width="66px" OnClick="Button9_Click" BackColor="#00FF99" Height="30px" />
                <asp:Button ID="Button5" runat="server" CssClass="auto-style28" Text="Save" Width="66px" Visible="False" BackColor="#00FF99" Height="30px" OnClick="Button5_Click" />
                
            </div>
           
            <div class="auto-style16">
                <asp:Label ID="Label4" runat="server" Text="Email Address" Font-Size="Large"></asp:Label>
               
                <div class="auto-style19">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style29" placeholder="Email Id" ReadOnly="True" TextMode="Email" Width="150px"></asp:TextBox>
                    <asp:Button ID="Button10" runat="server" CssClass="auto-style30" Text="Edit" Width="66px" OnClick="Button10_Click" BackColor="#00FF99" Height="30px" />
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style31" Text="Save" Width="66px" Visible="False" BackColor="#00FF99" Height="30px" OnClick="Button6_Click" />
                </div>
            </div>
            <div class="auto-style20">
                <asp:Label ID="Label5" runat="server" Text="Mobile Number" Font-Size="Large"></asp:Label>
                
            </div>
            <div class="auto-style22">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Mobile No" CssClass="auto-style14" TextMode="Phone" Width="150px" ReadOnly="True" style="margin-left: 50px"></asp:TextBox>
                <asp:Button ID="Button11" runat="server" CssClass="auto-style27" Text="Edit" Width="66px" OnClick="Button11_Click" Height="30px" BackColor="#00FF99" />
                <asp:Button ID="Button7" runat="server" CssClass="auto-style28" Text="Save" Width="66px" OnClick="Button14_Click" Visible="False" BackColor="#00FF99" Height="30px" />
            </div>
            <div class="auto-style33">
                <asp:Label ID="Label6" runat="server" Text="Password" Font-Size="Large"></asp:Label>
            </div>
            <div class="auto-style32">

                <asp:TextBox ID="TextBox6" runat="server"  placeholder="Old Password"  CssClass="auto-style34" Width="150px" ReadOnly="True" TextMode="Phone">********</asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" placeholder="New Password" CssClass="auto-style35" Width="150px" Visible="False" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server"  placeholder="Confirm Password" CssClass="auto-style39" Width="150px" Visible="False" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button12" runat="server" CssClass="auto-style27" Text="Edit" Width="67px" OnClick="Button15_Click" BackColor="#00FF99" Height="30px" />
                <asp:Button ID="Button8" runat="server" CssClass="auto-style36" Text="Save" Width="66px" Visible="False" BackColor="#00FF99" Height="30px" />

            </div>
            
        </asp:Panel>   
</div>
</asp:Content>
