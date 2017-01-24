<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="admin_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emlak Sitesi</title>
    <link href="../Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:500px; height:200px;margin:0 auto; margin-top:150px; background-color:#EBE0AD" >
        <div style="width:452px; height:113px; margin:20px; float:left; text-align:center;left:30px">
            
            <asp:Label ID="LabelKullaniciAdi" runat="server" Text="Kullanıcı Adı :" ></asp:Label>
        <asp:TextBox ID="TextBoxKullaniciAdi" runat="server"  Width="164px" Height="25px" ></asp:TextBox><br /><br />
            <asp:Label ID="LabelSifre" runat="server" Text="Şifre :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxSifre" runat="server" Width="164px" Height="25px" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="ButtonGirisYap" runat="server" Text="Giriş Yap" Height="25px" Width="101px" OnClick="ButtonGirisYap_Click" /> 
    </div>
        
         </div>   
    </form>
</body>
</html>
