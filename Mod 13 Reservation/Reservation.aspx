<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reservation.aspx.vb" Inherits="Mod_13_Reservation.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reservation</title>

    <link rel="stylesheet" href="StyleSheet1.css" />
    <link rel="stylesheet" href="bootstrap.css" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #339933;
        }
        .auto-style2 {
            width: 177px;
        }
        .auto-style3 {
            width: 177px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 177px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 237px;
            height: 90px;
            position: absolute;
            top: 16px;
            left: 421px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Big Bear Reservation System</h1>
            <h2>Welcome to our site...<img alt="" class="auto-style7" src="logo.jpg" /></h2>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Full Name" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email" Font-Bold="True"></asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email format is wrong" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Cabin Selection</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Grizzly (3 bedrooms) $99</asp:ListItem>
                        <asp:ListItem>Polar (2 bedrooms) $89</asp:ListItem>
                        <asp:ListItem>Kodiak (1 bedroom) $79</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Night(s)</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Check-in-Date</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="#99FF99" BorderColor="Black" BorderWidth="3px" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="34px" Text="Reserve" Width="135px" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationConnectionString %>" ProviderName="<%$ ConnectionStrings:ReservationConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Reservation]"></asp:SqlDataSource>
    </form>
</body>
</html>
