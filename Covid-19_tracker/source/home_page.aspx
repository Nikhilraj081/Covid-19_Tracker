<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="MYPROJECT1.home_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style34 {
        margin-top: 50px;
    }
    .auto-style35 {
        margin-top: 16px;
    }
    .auto-style36 {
        height: 201px;
        position: absolute;
        left: 5%;
        margin-left: 386px;
        top: 199px;
        width: 15px;
        border-left: 5px blue;
        border-radius: 5px;
    }
    .auto-style37 {
        height: 198px;
        position: absolute;
        left: 65%;
        top: 201px;
        width: 15px;
        border-left: 5px blue;
        border-radius: 5px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
         <asp:Panel ID="Panel1" runat="server" BackColor="#DAEFF8" CssClass="auto-style34" Height="255px" Width="1350px">
            <h2 style="margin-left:20px;margin-top:10px;font-family:Corbel">What Are You Looking For</h2>
                <div class="auto-style15" style="border-radius:20px; background-color: #FFFFFF;">
                    <img alt="" class="auto-style18" src="Resources/houise.png" />
                         <div class="auto-style27">
                             <asp:HyperLink ID="HyperLink1" runat="server" Text="Home  " Font-Size="XX-Large"></asp:HyperLink>
                         </div>
                    &nbsp;<div class="auto-style21" style="border-radius:20px; background-color: #FFFFFF;">
                        <img alt="" class="auto-style19"  src="Resources/hostel%20(2).png" />
                        <div class="auto-style28">
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="XX-Large">Hostel</asp:HyperLink>
                        </div>
                        &nbsp;<div class="auto-style17" style="border-radius:20px; background-color: #FFFFFF;">
                            
                            
                            
                            <img alt="" class="auto-style20" src="Resources/pg.png" /> 
                            <div class="auto-style30">
                                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="XX-Large">P.G</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="auto-style36" style="background-color: #383838"></div>
                <div class="auto-style37" style="background-color: #383838"></div>
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFCC" CssClass="auto-style35" Height="295px" Width="1348px">
        </asp:Panel>
  
</asp:Content>
