<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ilanDetayEkle.aspx.cs" Inherits="admin_ilanDetayEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table>
     <tr>
            <td style="text-align: right">İlanımız : </td>
            <td>
                <asp:DropDownList ID="DropDownListIlanimiz" runat="server" Width="400px">
                </asp:DropDownList>
            </td></tr>
    <tr>
        <td style="text-align: right">Oda Sayısı : </td>
        <td>
            <asp:TextBox ID="TextBoxOdaSayisi" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Bina Yaşı : </td>
        <td>
            <asp:TextBox ID="TextBoxBinaYasi" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Bina Kaç Katlı?&nbsp; : </td>
        <td>
            <asp:TextBox ID="TextBoxBinaKacKatli" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Kaçıncı Katta? :&nbsp; </td>
        <td>
            <asp:TextBox ID="TextBoxKacinciKatta" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Isıtma : </td>
        <td>
            <asp:TextBox ID="TextBoxIsitma" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Eşyalı mı ? :</td>
        <td class="auto-style2">
            <asp:CheckBox ID="CheckBoxEsyaliMi" runat="server" Text="Eşyalı ise işaretleyiniz" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="ButtonKaydetIlanDetayEkle" runat="server" OnClick="ButtonKaydetIlanDetayEkle_Click" Text="KAYDET" Width="84px" />
            <br />
        </td>
    </tr>
</table>
    
</asp:Content>

