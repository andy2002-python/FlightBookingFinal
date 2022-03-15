<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FlightBooking.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 63%;
            height: 632px;
        }
        .style3
        {
            font-size: xx-large;
            text-align: left;
        }
        .style8
        {
            text-align: left;
            width: 446px;
            height: 25px;
        }
        .style10
        {
            text-align: left;
            width: 446px;
            height: 30px;
        }
        .style12
        {
            text-align: left;
            width: 446px;
            height: 33px;
        }
        .style18
        {
            height: 22px;
        }
        .style19
        {
            width: 248px;
            text-align: left;
            height: 33px;
        }
        .style20
        {
            width: 248px;
            text-align: left;
            height: 25px;
        }
        .style21
        {
            width: 248px;
            text-align: left;
            height: 30px;
        }
        .style39
        {
            text-align: center;
            height: 29px;
        }
        .style40
        {
            text-align: center;
        }
    </style>
</head>
<body  style="text-align: left">
    <form id="form1" runat="server">
    <p class="style3">
        <strong style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Flight Booking Form : </strong>
    </p>
    <table class="style1" align="center" bgcolor="Black" cellpadding="5" 
        cellspacing="10" dir="ltr" frame="vsides" 
        style="margin: 20px; font-size: 20px; display: table; background-color: #3D3D3D; color: #000000;">
        <tr>
            <td class="style20" 
                style="color: #000000; font-weight: bold;" bgcolor="#CCCCCC">
    
                <asp:Label ID="Label8" runat="server" Text="NAME" Width="130px"></asp:Label>
                :</td>
            <td class="style8" bgcolor="#CCCCCC">
                <asp:TextBox ID="name" runat="server" Height="32px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is required" ForeColor="Red" ControlToValidate="name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
    
                <b>
    
        <asp:Label ID="Label1" runat="server" Text="FROM" Width="130px" ForeColor="Black"></asp:Label>
                :</b></td>
            <td class="style8" bgcolor="#CCCCCC">
                <asp:DropDownList ID="from" runat="server" Height="32px" Width="250px">
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Jaisalmer</asp:ListItem>
                    <asp:ListItem>Manali</asp:ListItem>
                    <asp:ListItem>Shimla</asp:ListItem>
                    <asp:ListItem>Agra</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style20" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
                <b>
        <asp:Label ID="Label2" runat="server" Text="TO" Width="130px" ForeColor="Black"></asp:Label>
                :</b></td>
            <td class="style8" bgcolor="#CCCCCC" valign="32px">
                <asp:DropDownList ID="to" runat="server" Height="32px" Width="250px">
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Jaisalmer</asp:ListItem>
                    <asp:ListItem>Manali</asp:ListItem>
                    <asp:ListItem>Shimla</asp:ListItem>
                    <asp:ListItem>Agra</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="from" ControlToValidate="to" 
                    ErrorMessage="source and destination are same" ForeColor="Red" 
                    Operator="NotEqual"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style21" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
                <b>
        <asp:Label ID="Label4" runat="server" Text="ADULTS" Width="130px" ForeColor="Black"></asp:Label>
                :</b></td>
            <td class="style10" bgcolor="#CCCCCC">
        <asp:TextBox ID="adult" runat="server" Height="32px" Width="250px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="adult" ErrorMessage="not in range (1-10)" ForeColor="Red" 
                    MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Required " ForeColor="Red" ControlToValidate="adult">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
                <b>
        <asp:Label ID="Label5" runat="server" Text="CHILDRENDS" Width="130px" ForeColor="Black"></asp:Label>
                :</b></td>
            <td class="style10" bgcolor="#CCCCCC">
        <asp:TextBox ID="child" runat="server" Height="32px" Width="250px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="child" ErrorMessage="not in range (0-5)" ForeColor="Red" 
                    MaximumValue="5" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
                <b>
        <asp:Label ID="Label6" runat="server" Text="CLASS" Width="130px" ForeColor="Black"></asp:Label>
                :</b></td>
            <td class="style8" bgcolor="#CCCCCC">
        <asp:DropDownList ID="classtxt" runat="server" Height="32px" 
                    style="text-align: justify" Width="250px">
            <asp:ListItem>First class</asp:ListItem>
            <asp:ListItem>Business class</asp:ListItem>
            <asp:ListItem Selected="True">Economy class</asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style19" bgcolor="#CCCCCC" 
                style="color: #000000; font-weight: bold;">
                <b>
        <asp:Label ID="Label3" runat="server" Text="DEPARTURE" ForeColor="Black" Width="130px"></asp:Label>
                :</b></td>
            <td class="style12" bgcolor="#CCCCCC">
                <asp:TextBox ID="date" runat="server" Height="32px" Width="230px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/Screenshot (306).png" Width="24px" 
                    onclick="ImageButton1_Click1" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Required " ForeColor="Red" ControlToValidate="date">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18" align="center" bgcolor="#CCCCCC" colspan="2">
                <asp:Calendar ID="calender" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                    Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="ShortMonth" 
                    Width="285px" onselectionchanged="calender_SelectionChanged1" 
                    SelectedDate="03/07/2022 19:28:48" VisibleDate="2022-03-07">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style39" bgcolor="#CCCCCC" colspan="2">
        <asp:Button ID="refresh" runat="server" Text="refresh" onclick="Button2_Click" 
                    onclientclick="refresh_Click" Height="32px" style="text-align: center" 
                    Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="style39" bgcolor="#CCCCCC" colspan="2">
        <asp:Button ID="submit" runat="server" onclick="submit_Click" 
            onclientclick="submit_Click" Text="submit" Height="32px" 
                    style="text-align: center" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="style40" bgcolor="#CCCCCC" colspan="2">
        <asp:Label ID="printing" runat="server" Text="Updates here.." ForeColor="#006600" 
                    style="font-size: large; text-align: center; font-weight: 700;"></asp:Label>
            </td>
        </tr>
        </table>
    <div align="left">
    
        <br />
        <br />
        <h1>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Table Data : </strong>
        </h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="10" CellSpacing="5" DataSourceID="SqlDataSource1" Height="16px" 
            HorizontalAlign="Center" Width="16px" BackColor="#CCCCCC" 
            
            style="text-align: center" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" 
                    SortExpression="name" />
                <asp:BoundField DataField="source" HeaderText="source" 
                    SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="adult" HeaderText="adult" SortExpression="adult" />
                <asp:BoundField DataField="child" HeaderText="child" SortExpression="child" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT name, source, destination, date, class, adult, child FROM MyProjectTB"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
