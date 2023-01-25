<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doktor2.aspx.cs" Inherits="P3.Doktor2" %>

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
&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="font-weight: 700;font-family:Bahnschrift;font-size:larger">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RANDEVULARIM</p>
        <p style="font-weight: 700;font-family:Bahnschrift;font-size:larger">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 110px" Width="1516px">
                <Columns>
                    <asp:BoundField DataField="AdSoyad" HeaderText="AdSoyad" SortExpression="AdSoyad" />
                    <asp:BoundField DataField="TcNo" HeaderText="TcNo" SortExpression="TcNo" />
                    <asp:BoundField DataField="KanGrubu" HeaderText="KanGrubu" SortExpression="KanGrubu" />
                    <asp:BoundField DataField="Sikayet" HeaderText="Sikayet" SortExpression="Sikayet" />
                    <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                    <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSPatConnectionString %>" SelectCommand="SELECT [AdSoyad], [TcNo], [KanGrubu], [Sikayet], [Tarih], [Saat] FROM [Table]"></asp:SqlDataSource>
        </p>
    </form>
    </body>
</html>
