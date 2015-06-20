<%@ Page Title="" Language="C#" MasterPageFile="~/PortalLigowy.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Portal_Ligowy.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <div class="news">
        <div class="nTitleBar">
            <p class="nTitle">
                <asp:Label ID="Tit" runat="server" Text="Title"></asp:Label>
            </p>
            <div class="nInfo">
                <img src="../images/nAutor.png" alt="Autor: " style="float:left;"/><p class="nInfo_elm"><asp:Label ID="Autor" runat="server" Text="Autor"></asp:Label></p>
                <img src="../images/nDate.png" alt="Data: " style="float:left;"/><p class="nInfo_elm"><asp:Label ID="Data" runat="server" Text="Data"></asp:Label></p>
            </div>
        </div>
        <div class="clear"></div>
        <p class="newsText">
            <asp:Label ID="Txt" runat="server" Text="Txt"></asp:Label>
        </p>
        <div class="nMore">
            

        </div><div class="clear"></div>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cofnij" />
    </div>



</asp:Content>
