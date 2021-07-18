<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prac.aspx.cs" Inherits="Project11.prac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 704px;
        }
    </style>
</head>
    <style>
    body {
	background-image: url("Checkin.jpeg");
        background-repeat:no-repeat;
       background-size:cover;

    }
        .auto-style3 {
            margin-left: 417px;
            margin-right: 64px;
        }
    </style>
<body>

    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource2" DefaultMode="Insert" GridLines="Both" BorderColor="#000099" BorderStyle="Double" CaptionAlign="Top" CssClass="auto-style3" Font-Bold="True" Font-Italic="True" Font-Overline="False" Width="417px">
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
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Afganistan</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>SriLanka</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Hungry</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Itly</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>United Kingdom</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                </asp:DropDownList>
                <br />
                TypesofRoom:
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Classic One Bedroom</asp:ListItem>
                    <asp:ListItem>Classic Two Bedroom</asp:ListItem>
                    <asp:ListItem>Honeymoon Suite</asp:ListItem>
                    <asp:ListItem>Family Suite</asp:ListItem>
                    <asp:ListItem>Luxury Suite</asp:ListItem>
                    <asp:ListItem>Super Delux Suite</asp:ListItem>
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
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <HeaderTemplate>
                DETAILS
            </HeaderTemplate>
            <InsertItemTemplate>
                FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' Height="16px" Width="153px" />
                <br />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' Height="16px" Width="158px" />
                <br />
                <br />
                Age:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' Height="16px" Width="183px" />
                <br />
                <br />
                EmailId:
                <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                <br />
                <br />
                Adharno:
                <asp:TextBox ID="AdharnoTextBox" runat="server" Text='<%# Bind("Adharno") %>' />
                <br />
                <br />
                Nationality:
                <asp:DropDownList ID="DropDownList4" runat="server" Height="21px" Width="142px">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Srilanka</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>Afganistan</asp:ListItem>
                    <asp:ListItem>Newzeland</asp:ListItem>
                    <asp:ListItem>South Africa</asp:ListItem>
                    <asp:ListItem>UAE</asp:ListItem>
                    <asp:ListItem>Scotland</asp:ListItem>
                    <asp:ListItem>Netherland</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Thailand</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Veitnam</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>Barbedoes</asp:ListItem>
                    <asp:ListItem>Brazil</asp:ListItem>
                    <asp:ListItem>Spain</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Itly</asp:ListItem>
                    <asp:ListItem>France</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                TypesofRoom:
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Classic OneBedroom</asp:ListItem>
                    <asp:ListItem>Classic TwoBedroom</asp:ListItem>
                    <asp:ListItem>Honeymoon Suite</asp:ListItem>
                    <asp:ListItem>Family Suite</asp:ListItem>
                    <asp:ListItem>Luxury Suite</asp:ListItem>
                    <asp:ListItem>SuperDelux Suite</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                CheckinDate:
                <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
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
                <br />
                <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
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
                <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" PostBackUrl="~/LastPage.aspx" Text="Insert" CausesValidation="True" />
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
                CheckinDate:
                <asp:Label ID="CheckinDateLabel" runat="server" Text='<%# Bind("CheckinDate") %>' />
                <br />
                CheckOutDate:
                <asp:Label ID="CheckOutDateLabel" runat="server" Text='<%# Bind("CheckOutDate") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString13 %>" SelectCommand="SELECT * FROM [info]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString12 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
