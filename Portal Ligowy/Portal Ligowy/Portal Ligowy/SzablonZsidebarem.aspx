<%@ Page Title="" Language="C#" MasterPageFile="~/PortalLigowy.Master" AutoEventWireup="true" CodeBehind="SzablonZsidebarem.aspx.cs" Inherits="Portal_Ligowy.SzablonZsidebarem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- NIE ZMIENIAĆ TU NIC, TO TYLKO SZABLON, STĄD KOPIUJESZ NA WŁAŚCIWĄ STRONĘ UKŁAD!-->
    <div id="sidebarWrapper">
        <div class="sidebar"><!-- jeśli chcesz wiecej sdiebarow to kopiujesz odtąd-->
            <div class="sTitleBar">
                <p class="sTitle">
                    Sidebar tytuł
                </p>
            </div>
            <p class="sText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit.                 	
	    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper.</p>
        </div><!-- dotąd-->
        <!-- i wklejasz tu-->
    </div>
    <div class="sccontent">
        <div class="scTitleBar">
            <p class="scTitle">
                Tytuł treści
            </p>
        </div>
        <p class="scText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit.                 	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper.</p>
    </div>

    <div class="sccontent">
        <div class="scTitleBar">
            <p class="scTitle">
                Tytuł treści2
            </p>
        </div>
        <p class="scText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit.                 	
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper.</p>
    </div>
    <div class="clear"></div>
</asp:Content>
