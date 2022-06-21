<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="MYPROJECT1.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style type="text/css">
        .auto-style38 {
            height: 219px;
            position: absolute;
            left: 66%;
            top: 635px;
            width: 16px;
            border-left: 5px blue;
            border-radius: 5px;
            display:none;
        }
        .auto-style39 {
            height: 218px;
            position: absolute;
            left: 5%;
            margin-left: 386px;
            top: 634px;
            width: 16px;
            border-left: 5px blue;
            border-radius: 5px;
            display:none;
        }
        .auto-style40 {
            height: 361px;
            width:100%;
            margin-top:200px;
        }
    </style>
    <script type="text/javascript">
        function room_1(room) {
            window.location = "house_section.aspx?ref="+room;
        }
        function hostel_1(hostel) {
            window.location = "house_section.aspx?ref=" + hostel;
        }
        function pg_1(pg) {
            window.location = "house_section.aspx?ref=" + pg;
        }
	</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="auto-style40">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:Image ID="Image1" runat="server" Height="360px" Width="100%" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
     <div class="panel_heading">
        <p style="font-size:25px;padding-left:20px">What Are You Looking For</p>
        <div class="design_p1">
        <!--  <p style="">What Are You Looking For</p><br/> -->
          
            <div class="design_1" onclick="room_1('room')" >
                 <img  src="Resources/houise.png" class="image" />
                <p class="image_text"> Home</p>
            </div>
                           
            <div class="design_1" onclick="hostel_1('hostel')" >
                 <img class="image" src="Resources/hostel%20(2).png" />
                 <p class="image_text2"> Hostel</p>
            
            </div> 
               
            <div class="design_1" onclick="pg_1('pg')">
                 <img class="image" src="Resources/pg.png" />
                 <p class="image_text3" style="margin-left"> P.G</p>
            </div> 
       
        </div>
      </div>
   
         
    
     
     <div class="auto-style39" style="background-color: #ebe0e0"></div>
     <div class="auto-style38" style="background-color: #ebe0e0"></div>
    <div class="design_p1" style="margin-top:15px;background:#cdeebc;border-style:outset;border-color:#cdeebc">
        <h1 style="text-align:center"><u>About Us</u></h1>
 <p class="about_us_text">Our home-solutions firm, Nestaway, was established in Bengaluru by Amarendra Sahu, Deepak Dhar, Jitendra Jagadev and Smruti Parida in January 2015. All four founders had experienced a common problem – finding a home in the big city. Young people faced different kinds of discrimination. Single women and bachelors are considered unreliable. Migrants from other places are viewed with suspicion as they appear as ‘foreigners’ in a new city. Further, many newcomers did not have the knowhow to get around, lacking access to local insights in a new city.

We concluded that people leaving homes to relocate to another city needed more than just a house. They needed a place they could call home, a community where they would be accepted and a platform which allows connections to various other access points.</p>
    </div>
        
</asp:Content>
