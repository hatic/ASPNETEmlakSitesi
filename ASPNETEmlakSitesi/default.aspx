<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css"/>
    <script src="sliderengine/initslider-1.js"></script>
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:700px;float:left;height:auto">
        <div style="width:680px; margin:0 auto">
             <!-- Slider Kodları -->
    <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:620px;margin:0px auto 62px;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <asp:DataList ID="DataListdl_slider" runat="server">
                    <ItemTemplate>
                         <li><img src="<%#Eval("ilanVResim") %>" alt="<%#Eval("ilanBaslik") %><br/><%#Eval("ilanFiyat") %>  " /> </li>
                    </ItemTemplate>
                </asp:DataList>
          </ul>
        </div>
    </div>
   

        </div>

       </div>
    <div style="float:left;width:700px;height:29px;"><h3>İLAN VİTRİN</h3></div>
    <div style="width:680px;height:auto;float:left;margin:0 auto">
        <asp:DataList ID="DataListVitrin" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <ItemTemplate>
                <div style="width: 200px; height: 220px;float: left" >
                    <div style="width:190px;margin:0 auto;height:150px;margin-left:13px">
                     <a href="ilanDetay.aspx?ilanID=<%#Eval("ilanID") %>">  <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("ilanVResim") %>' Width="190px" /></a> 
                    </div>
                    <div  style="width:190px;margin:0 auto;height:30px;" >
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ilanBaslik") %>'></asp:Label>
                    </div>
                    <div style="width:190px; margin:0 auto;height:30px;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ilanFiyat") %>'></asp:Label>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

