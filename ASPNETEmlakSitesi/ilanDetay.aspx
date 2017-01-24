<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="ilanDetay.aspx.cs" Inherits="ilanDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <script src="sliderjs/jquery.js"></script>
    <script src="sliderjs/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderjs/amazingslider-1.css"/>
    <script src="sliderjs/initslider-1.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:700px;height:auto; float:left">
         <div style="width:700px;height:auto;align-items:center ">
             <div style="width:340px;height:220px; align-content:center">
                 <!-- slider kodları-->
      <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:400px;margin:0px auto 0px;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">

                <asp:DataList ID="DataListDetaySlider" runat="server">
                    <ItemTemplate>
                         <li><img src="<%#Eval("resimResim") %><br/><%#Eval("resimAd") %>" /> </li>
                    </ItemTemplate>
                </asp:DataList>
               
            </ul>
           
        </div>
    </div>


    <!-- slider sonu -->
</div>
             <div style="width:370px;height:auto; margin-top:30px">
                 <asp:DataList ID="DataListIlanDetay" runat="server" Width="330px">
                     <ItemTemplate>
                 <table class="body-left" style="width: 320px; table-layout: fixed;">
                     <tr>
                         <td  style="width: 100px">Oda Sayısı :</td>
                         <td  style="width: 220px">
                             <asp:Label ID="LabelOdaSayisi" runat="server" Text='<%# Eval("idOdaSayisi") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td  style="width: 100px">Bina Yaşı :</td>
                         <td style="width: 220px">
                             <asp:Label ID="LabelBinaYasi" runat="server" Text='<%# Eval("idBinaYasi") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 100px">Bina Kat Sayısı :</td>
                         <td style="width: 220px">
                             <asp:Label ID="LabelBinaKatSayisi" runat="server" Text='<%# Eval("idBinaKat") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 100px">Bina Kaçıncı Kat :</td>
                         <td class="auto-style8" style="width: 220px">
                             <asp:Label ID="LabelKacinciKat" runat="server" Text='<%# Eval("idBinaKacinciKat") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 100px">Isıtma</td>
                         <td style="width: 220px">
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("idIsitma") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 100px">Eşyalı Mı?</td>
                         <td style="width: 220px">
                             <asp:CheckBox ID="CheckBoxEsyaliMi" runat="server" Checked='<%# Eval("idEsyaliMi") %>' />
                         </td>
                     </tr>
                 </table>
                         
                     </ItemTemplate>
                 </asp:DataList>
             </div>
             </div>
        <div style="width:700px;height:auto; float:left">
            <asp:DataList ID="DataListIlanAciklamaAdres" runat="server">
                <ItemTemplate>

                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="LabelAdres" runat="server" Text='<%# Eval("ilanAdres") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="LabelAciklama" runat="server" Text='<%# Eval("ilanAciklama") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>

                </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="width:700px;height:auto; float:left;margin-top:30px">
            <asp:DataList ID="DataListicOzellik" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="4">İÇ ÖZELLİK</td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxKuvet" runat="server" Checked='<%# Eval("kuvet") %>' Text="Küvet" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxAsansor" runat="server" Checked='<%# Eval("asansor") %>' Text="Asansör" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxKapici" runat="server" Checked='<%# Eval("kapici") %>' Text="Kapıcı" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxSomine" runat="server" Checked='<%# Eval("somine") %>' Text="Şömine" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="width:700px;height:auto; float:left;margin-top:30px">
            <asp:DataList ID="DataListdisOzellik" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="4">DIŞ ÖZELLİK</td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxPark" runat="server" Checked='<%# Eval("park") %>' Text="Park" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxAlarm" runat="server" Checked='<%# Eval("alarm") %>' Text="Alarm" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxOyunAlani" runat="server" Checked='<%# Eval("oyunAlani") %>' Text="Oyun Alanı" />
                            </td>
                            <td style="width: 25%">
                                <asp:CheckBox ID="CheckBoxYuruyusParkuru" runat="server" Checked='<%# Eval("yuruyusParkuru") %>' Text="Yürüyüş Parkuru" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                            <td style="width: 25%">&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
           
            </asp:DataList>
        </div>
        </div>
</asp:Content>

