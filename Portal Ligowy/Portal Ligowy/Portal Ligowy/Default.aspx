<%@ Page Title="" Language="C#" MasterPageFile="~/PortalLigowy.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Portal_Ligowy.Default" %>
<asp:Content ID="Home" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="about">
        <p id="abtitle">O nas</p>
        <p id="abinfo">TUTAJ JAKIEŚ INFO O STRONIE! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit. </p>
    </div>

    <div class="news">
        <div class="nTitleBar">
            <p class="nTitle">
                News 1
            </p>
            <div class="nInfo">
                <img src="../images/nAutor.png" alt="Autor: " style="float:left;"/><p class="nInfo_elm">Admin</p>
                <img src="../images/nDate.png" alt="Data: " style="float:left;"/><p class="nInfo_elm">24.04.2015</p>
            </div>
        </div>
        <div class="clear"></div>
        <p class="newsText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit.                 	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper.</p>
        <div class="nMore">
            <a href="#"><img src="../images/koment.png" alt="Komentarze" class="nMore_elm"/></a>
            <a href="#"><img src="../images/czytdal.png" alt="Czytaj dalej" class="nMore_elm" style="float:right;"/></a>
        </div><div class="clear"></div>
    </div>

    <div class="news">
        <div class="nTitleBar">
            <p class="nTitle">
                News 2
            </p>
            <div class="nInfo">
                <img src="../images/nAutor.png" alt="Autor: " style="float:left;"/><p class="nInfo_elm">Admin</p>
                <img src="../images/nDate.png" alt="Data: " style="float:left;"/><p class="nInfo_elm">24.04.2015</p>
            </div>
        </div>
        <div class="clear"></div>
        <p class="newsText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit.                 	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper.</p>
        <div class="nMore">
            <a href="#"><img src="../images/koment.png" alt="Komentarze" class="nMore_elm"/></a>
            <a href="#"><img src="../images/czytdal.png" alt="Czytaj dalej" class="nMore_elm" style="float:right;"/></a>
        </div><div class="clear"></div>
    </div>
</asp:Content>
