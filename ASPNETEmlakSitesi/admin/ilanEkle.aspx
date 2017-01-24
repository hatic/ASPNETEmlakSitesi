<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ilanEkle.aspx.cs" Inherits="admin_ilanEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    .auto-style1 {
        width: 976px;
        height: 318px;
    }
    .auto-style2 {
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
    <tr>
        <td style="text-align: right">İlan Başlığı : </td>
        <td>
            <asp:TextBox ID="TextBoxIşanBasligi" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Fiyat : </td>
        <td>
            <asp:TextBox ID="TextBoxIlanFiyat" runat="server" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Kategori : </td>
        <td>
            <asp:DropDownList ID="DropDownListKategori" runat="server" Width="400px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">İşlem :&nbsp; </td>
        <td>
            <asp:DropDownList ID="DropDownListIslem" runat="server" Width="400px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Kimden : </td>
        <td>
            <asp:DropDownList ID="DropDownListKimden" runat="server" Width="400px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Vitrin Olsun Mu ? :</td>
        <td class="auto-style2">
            <asp:CheckBox ID="CheckBoxVitrinOlsunMu" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Vitrin Resmi : </td>
        <td>
            <asp:FileUpload ID="FileUploadVitrin" runat="server" Width="400px" />
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Adres : </td>
        <td>
            <asp:TextBox ID="TextBoxAdres" runat="server" Height="40px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">Açıklama : </td>
        <td>
            <asp:TextBox ID="TextBoxAciklama" runat="server" Height="40px" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="ButtonKaydet" runat="server" OnClick="ButtonKaydet_Click" Text="KAYDET" Width="84px" />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

