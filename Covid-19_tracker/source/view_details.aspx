<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="view_details.aspx.cs" Inherits="MYPROJECT1.view_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style38 {
            width: 1247px;
        }
        .auto-style39 {
            width: 700px;
            height:400px;
            
        }
        .auto-style40 {
            text-align: center;
        }
        .auto-style41 {
            text-align: left;
            padding-left:50px;
        }
        .auto-style42 {
            width: 100%;
            height: 69px;
        }
        .auto-style44 {
            text-align: left;
            padding-left: 90px;
            height: 36px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:175px;padding-bottom:70px">
       
        <asp:Panel ID="Panel1" runat="server" Height="746px" BackColor="#009999">
            <div class="auto-style40">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="ad_id" DataSourceID="SqlDataSource1" Height="500px" RepeatDirection="Horizontal" Width="100%">
                    <ItemTemplate>
                        <br />
                        <br />
                        <table class="auto-style38">
                            <tr>
                                <td class="auto-style39" rowspan="8" style="background-color: #FFFFFF; border-style: solid">
                                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte []) Eval("pic") ) %>' Width="500px" />
                                    <br />
                                    <table class="auto-style42">
                                         <tr>
                                <td class="auto-style44">
                                    <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Price" ForeColor="#666666"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label21" runat="server" Font-Size="Larger" Text="₹"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Font-Size="Larger" Text='<%# Eval("price") %>' ForeColor="Black"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style44">
                                    <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Location" ForeColor="#666666"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("uaddress") %>' ForeColor="black"></asp:Label>
                                    ,<asp:Label ID="Label14" runat="server" Text='<%# Eval("city") %>' ForeColor="black"></asp:Label>
                                    ,<asp:Label ID="Label15" runat="server" Text='<%# Eval("ustate") %>' ForeColor="black"></asp:Label>
                                </td>
                            </tr>
                                    </table>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Details" ForeColor="#FFFF66"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Type  " ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("utype") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Category" ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Bedrooms" ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("bedroom") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label8" runat="server" Font-Size="Medium" Text="Bathrooms" ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("bathrooms") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                           
                            <tr>
                                <td class="auto-style40">
                                    <asp:Label ID="Label16" runat="server" Font-Size="Larger" Text="Seller Details" ForeColor="#FFFF66"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label17" runat="server" Font-Size="Medium" Text="Seller Name" ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("name") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style41">
                                    <asp:Label ID="Label19" runat="server" Font-Size="Medium" Text="Contact No" ForeColor="#CCCCCC"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("contact") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:room_rental_systemConnectionString2 %>" SelectCommand="SELECT * FROM [POSTAD] WHERE ([ad_id] = @ad_id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ad_id" QueryStringField="ad_id" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </asp:Panel>

    </div>
</asp:Content>
