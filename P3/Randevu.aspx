<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Randevu.aspx.cs" Inherits="P3.Randevu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightgrey">
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="107px" ImageUrl="~/resim/6.jpg" Width="127px" BorderStyle="Inset" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tel No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="18px" Width="141px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kan Grubu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>0+</asp:ListItem>
                <asp:ListItem>0-</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şikayet&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Height="18px" Width="141px"></asp:TextBox>
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarih&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="141px" style="margin-left: 0px" TextMode="Date"></asp:TextBox>
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Saat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="149px">
                <asp:ListItem>9:00</asp:ListItem>
                <asp:ListItem>9:30</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>10:30</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>11:30</asp:ListItem>
                <asp:ListItem>13:00</asp:ListItem>
                <asp:ListItem>13:30</asp:ListItem>
                <asp:ListItem>14:00</asp:ListItem>
                <asp:ListItem>14:30</asp:ListItem>
                <asp:ListItem>15:00</asp:ListItem>
                <asp:ListItem>15:30</asp:ListItem>
                <asp:ListItem>16:00</asp:ListItem>
                <asp:ListItem>16:30</asp:ListItem>
            </asp:DropDownList>
            &nbsp;</p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bölüm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="DocDep" DataValueField="DocDep" OnSelectedIndexChanged="Page_Load" Width="148px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" SelectCommand="SELECT [DocDep] FROM [Doc]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString2 %>" SelectCommand="SELECT [DocName] FROM [Doc] WHERE ([DocDep] = @DocDep)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList9" DefaultValue="1" Name="DocDep" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doktor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource6" DataTextField="DocName" DataValueField="DocName" Height="18px" Width="153px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Randevu Al" Width="122px" />
            &nbsp;</p>
        <p  style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    </form>
</body>
</html>
