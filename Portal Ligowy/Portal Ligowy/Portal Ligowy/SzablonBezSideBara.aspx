<%@ Page Title="" Language="C#" MasterPageFile="~/PortalLigowy.Master" AutoEventWireup="true" CodeBehind="SzablonBezSideBara.aspx.cs" Inherits="Portal_Ligowy.SzablonBezSideBara" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- NIE ZMIENIAĆ TU NIC, TO TYLKO SZABLON, STĄD KOPIUJESZ NA WŁAŚCIWĄ STRONĘ UKŁAD!-->
    <div class="content">
        <div class="cTitleBar">
            <p class="cTitle">
                Test
            </p>
        </div>
        <div class="clear"></div>
        <p class="cText">Szablon do skopiowania dla podstron bez sidebara</p>
    </div>

    <div class="content">
        <div class="cTitleBar">
            <p class="cTitle">
                Test2
            </p>
        </div>
        <div class="clear"></div>
        <p class="cText">Szablon do skopiowania dla podstron bez sidebara</p>
    </div>
    <!-- tresc przed clear! -->
    <div class="clear"></div>
</asp:Content>
