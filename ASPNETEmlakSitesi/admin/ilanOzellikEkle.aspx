<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ilanOzellikEkle.aspx.cs" Inherits="admin_ilanOzellikEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 25%;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td colspan="2" style="width: 30%">&nbsp;</td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownListIlan" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4"><h2>İÇ ÖZELLİK</h2></td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">Kapıcı :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxKapici" runat="server" Text="Evet" />
            </td>
            <td style="width: 25%">&nbsp;&nbsp;&nbsp; Şömine :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxSomine" runat="server" Text="Evet" />
            </td>

        </tr>
         <tr>
            <td style="width: 25%">Asansör :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxAsansor" runat="server" Text="Evet" />
             </td>
            <td style="width: 25%">&nbsp;&nbsp;&nbsp; Küvet :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxKuvet" runat="server" Text="Evet" />
             </td>

        </tr>
         <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>

        </tr>
        <tr>
            <td colspan="4"><h2>DIŞ ÖZELLİK</h2></td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Park :</td>
            <td class="auto-style3">
                <asp:CheckBox ID="CheckBoxPark" runat="server" Text="Evet" />
            </td>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp; Alarm :</td>
            <td class="auto-style3">
                <asp:CheckBox ID="CheckBoxAlarm" runat="server" Text="Evet" />
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Oyun Alanı :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxOyunAlani" runat="server" Text="Evet" />
            </td>
            <td style="width: 25%">&nbsp;&nbsp;&nbsp; Yürüyüş Parkuru :</td>
            <td style="width: 25%">
                <asp:CheckBox ID="CheckBoxYuruyusParkuru" runat="server" Text="Evet" />
            </td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">
                &nbsp;</td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">
                <asp:Button ID="ButtonOzellikEkle" runat="server" OnClick="ButtonOzellikEkle_Click" Text="Özellik Ekle" />
            </td>
            <td style="width: 25%">&nbsp;</td>
            <td style="width: 25%">
                &nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>

