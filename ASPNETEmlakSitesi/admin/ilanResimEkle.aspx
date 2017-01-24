<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ilanResimEkle.aspx.cs" Inherits="admin_ilanResimEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style2">
        <tr>
            <td style="text-align: right" class="auto-style4">&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownListIlan" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style4">Resim Adı :</td>
            <td>
                <asp:TextBox ID="TextBoxResimAdi" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style4">Resim :&nbsp; </td>
            <td>
                <asp:FileUpload ID="FileUploadIlanResim" runat="server" Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonIlanResimEkle" runat="server" OnClick="ButtonIlanResimEkle_Click" Text="Resim Ekle" />
                <asp:Button ID="ButtonBitir" runat="server" OnClick="ButtonBitir_Click" Text="Bitir" Width="79px" />
            </td>
        </tr>
    </table>
   
</asp:Content>

