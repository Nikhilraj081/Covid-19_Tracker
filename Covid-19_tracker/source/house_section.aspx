<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="house_section.aspx.cs" Inherits="MYPROJECT1.house_section" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style37{
            margin-top:66px;
        }
        .auto-style38 {
            height: 64px;
        }
        .auto-style39 {
            margin-left: 136px;
            margin-top: 19px;
        }
        .auto-style40 {
            margin-left: 50px;
        }
        .auto-style41 {
            margin-left: 52px;
        }
        .auto-style42 {
            margin-left: 55px;
        }
        .auto-style43 {
            width: 100%;
            height: 256px;
        }
        .auto-style44 {
            text-align: center;
            
        }
        .auto-style45 {
            text-align: left;
            padding:-20px;
        }
        .auto-style46{
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="padding-top:200px;padding-bottom:70px">
         <asp:Panel ID="Panel1" runat="server" CssClass="auto-style46" BackColor="#009999"  Width="100%">
             <div class="auto-style38">

                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style39" Height="27px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px" BackColor="#F1F1F1">
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

                 <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style40" Height="27px" Width="150px" BackColor="#F1F1F1">
                     <asp:ListItem>select your city</asp:ListItem>
                     <asp:ListItem>Chhapra</asp:ListItem>
                     <asp:ListItem>Patna</asp:ListItem>
                     <asp:ListItem>Gaya</asp:ListItem>
                    <asp:ListItem>Bhagalpur</asp:ListItem>
                    <asp:ListItem>Aara</asp:ListItem>
                    <asp:ListItem>Siwan</asp:ListItem>
                 </asp:DropDownList>

                 <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style41" Height="27px" Width="148px" BackColor="#F1F1F1">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>Room</asp:ListItem>
                        <asp:ListItem>Hostel</asp:ListItem>
                        <asp:ListItem>P.G</asp:ListItem>
                 </asp:DropDownList>

                 <asp:Button ID="Button1" runat="server" CssClass="auto-style42" Height="26px" Text="Apply" Width="74px" BackColor="#0099FF" BorderStyle="None" ForeColor="White" />

                 <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

             </div>
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="149px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%" CellSpacing="10" OnItemCommand="DataList1_ItemCommand" DataKeyField="ad_id">

                 <ItemTemplate>
                                <table class="auto-style43" style="background-color: #FFFFFF">
                         <tr>
                             <td class="auto-style44">
                                 <asp:Image ID="Image1" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte []) Eval("pic") ) %>' Height="140px" Width="220px" />
                             </td>
                         </tr>
                         <tr>
                             <td style="padding:-20px">
                                 <asp:Label ID="Label4" runat="server" style="margin-left:10px" Text="₹" Font-Size="X-Large"></asp:Label>
&nbsp; 
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("price") %>' Font-Size="X-Large"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="padding:-20px">
                                 <asp:Label ID="Label2" runat="server" style="margin-left:20px" Text='<%# Eval("utype") %>' Font-Size="Small"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="auto-style45">
                                 <asp:Label ID="Label3" runat="server" style="margin-left:20px" Text='<%# Eval("uaddress") %>' Font-Size="Small"></asp:Label>
                                 <asp:Label ID="Label5" runat="server" Text='<%# Eval("city") %>' Font-Size="Small"></asp:Label>
                             </td>
                         </tr>      
                          <tr>
                             <td class="auto-style44">
                                 
                                 <asp:Button ID="Button2" runat="server" BorderStyle="None" Font-Size="Small" Height="20px" Text="View Details" Width="90px" BackColor="#0066FF" CommandArgument='<%# Eval("ad_id")%>' CommandName="&quot;view_details&quot;" ForeColor="White" />
                                 
                             </td>
                         </tr>
                     </table>
                     <br />
                     
             
                 </ItemTemplate>

             </asp:DataList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room_rental_systemConnectionString2 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [POSTAD] WHERE ([utype] = @utype)">

                 <SelectParameters>
                     <asp:QueryStringParameter Name="utype" QueryStringField="ref" Type="String" />
                 </SelectParameters>

             </asp:SqlDataSource>
             &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:room_rental_systemConnectionString2 %>" SelectCommand="SELECT * FROM [POSTAD] WHERE (([city] LIKE '%' + @city + '%') AND ([utype] LIKE '%' + @utype + '%'))">

                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList2" Name="city" PropertyName="SelectedValue" Type="String" />
                     <asp:ControlParameter ControlID="DropDownList3" Name="utype" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>

             </asp:SqlDataSource>


         </asp:Panel>
     </div>
</asp:Content>
