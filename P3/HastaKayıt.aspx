<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HastaKayıt.aspx.cs" Inherits="P3.HastaKayıt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  style="background-image:url('resim/pat.jpg'); height:100%;background-position:top;background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <div>
        </div>
    <p>
        &nbsp;</p>
    <p style="font-family:Bahnschrift;font-size:larger; font-weight: 700;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>HASTA KAYIT EKRANI</strong></p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad Soyad</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="139px"></asp:TextBox>
            &nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TC Kimlik No&nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="139px"></asp:TextBox>
        </p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre&nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="24px" TextMode="Password" Width="139px"></asp:TextBox>
        </p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre Tekrar&nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="24px" TextMode="Password" Width="139px"></asp:TextBox>
            &nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Kayıt Ol" Width="100px" />
            &nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zaten Üye Misiniz?&nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button  ID="Button2"  runat="server" Height="47px" OnClick="Button2_Click" Text="Giriş Ekranına Dön" Width="122px" />
            &nbsp;</p>
        <p style="font-family: Bahnschrift; font-size: larger; font-weight: 700">
            &nbsp;</p>
    </form>
    </body>
</html>
