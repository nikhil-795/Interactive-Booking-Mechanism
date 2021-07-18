<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Boooknow.aspx.cs" Inherits="Project11.Boooknow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
    body {
	background-image: url("Checkin.jpeg");
        background-repeat:no-repeat;
       background-size:cover;

    }
        .auto-style1 {
            margin-left: 408px;
            margin-right: 167px;
        }
        .auto-style2 {
            margin-left: 800px;
            margin-top: 0px;
        }
        .auto-style4 {
            font-weight: normal;
            color: #FFFFFF;
        }
     .auto-style10 {
         font-weight: normal;
     }
            .auto-style21 {
                color: #C0C0C0;
            }
            .auto-style22 {
            height: 207px;
        }
        .auto-style23 {
            font-weight: normal;
            text-decoration: underline;
            color: #0000FF;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="338px" BorderColor="Black" BorderStyle="Double" CssClass="auto-style1">
            <EditItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Age:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                EmailId:
                <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                <br />
                Adharno:
                <asp:TextBox ID="AdharnoTextBox" runat="server" Text='<%# Bind("Adharno") %>' />
                <br />
                Nationality:
                <asp:TextBox ID="NationalityTextBox" runat="server" Text='<%# Bind("Nationality") %>' />
                <br />
                TypesofRoom:
                <asp:TextBox ID="TypesofRoomTextBox" runat="server" Text='<%# Bind("TypesofRoom") %>' />
                <br />
                NoOfRooms:
                <asp:TextBox ID="NoOfRoomsTextBox" runat="server" Text='<%# Bind("NoOfRooms") %>' />
                <br />
                CheckinDate:
                <asp:TextBox ID="CheckinDateTextBox" runat="server" Text='<%# Bind("CheckinDate") %>' />
                <br />
                CheckOutDate:
                <asp:TextBox ID="CheckOutDateTextBox" runat="server" Text='<%# Bind("CheckOutDate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                EmailId:
                <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                <br />
                Adharno:
                <asp:TextBox ID="AdharnoTextBox" runat="server" Text='<%# Bind("Adharno") %>' />
                <br />
                Nationality:
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Srilanka</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Iran</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>NewZealand</asp:ListItem>
                    <asp:ListItem>Jamica</asp:ListItem>
                </asp:DropDownList>
                <br />
                TypesofRoom:
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="135px">
                    <asp:ListItem>Classic OneBedroom</asp:ListItem>
                    <asp:ListItem>Classic Two Bedroom</asp:ListItem>
                    <asp:ListItem>Honeymoon Suite</asp:ListItem>
                    <asp:ListItem>Family Suite</asp:ListItem>
                    <asp:ListItem>Luxury Suite</asp:ListItem>
                    <asp:ListItem>Super Delux Suite</asp:ListItem>
                </asp:DropDownList>
                <br />
                NoOfRooms:
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="59px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
                CheckinDate:
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <br />
                CheckOutDate:
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" PostBackUrl="~/LastPage.aspx" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                <br />
                Age:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                EmailId:
                <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Bind("EmailId") %>' />
                <br />
                Adharno:
                <asp:Label ID="AdharnoLabel" runat="server" Text='<%# Bind("Adharno") %>' />
                <br />
                Nationality:
                <asp:Label ID="NationalityLabel" runat="server" Text='<%# Bind("Nationality") %>' />
                <br />
                TypesofRoom:
                <asp:Label ID="TypesofRoomLabel" runat="server" Text='<%# Bind("TypesofRoom") %>' />
                <br />
                NoOfRooms:
                <asp:Label ID="NoOfRoomsLabel" runat="server" Text='<%# Bind("NoOfRooms") %>' />
                <br />
                CheckinDate:
                <asp:Label ID="CheckinDateLabel" runat="server" Text='<%# Bind("CheckinDate") %>' />
                <br />
                CheckOutDate:
                <asp:Label ID="CheckOutDateLabel" runat="server" Text='<%# Bind("CheckOutDate") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
      <table class="auto-style2">
          <tr>
              
              <th class="auto-style22"><span class="auto-style23"><strong><em>COST OF ROOMS and Availability</em></strong></span><br />
                  <span class="auto-style4"><em>Classic OneBedroom(40)-Rs 2000&nbsp; Night<br />
                  Classic TwoBedroom(40)-Rs3000 Night</em><br />
                  <span class="auto-style10"><em>Honeymoon Suite(20)-Rs 8000 Night<br />
                  Family Suite(35)-Rs7000 Night<br class="auto-style21" />Luxury Suite(30)-Rs9000Night<br class="auto-style21" />SuperDelux(30)-Rs10000Night<strong><br class="auto-style21" />
                  </strong></em></span></span>
              </th>
              
          </tr>
      </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [Final]"></asp:SqlDataSource>
    </form>
</body>
</html>
