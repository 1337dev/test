<%@ Page Title="" Language="C#" MasterPageFile="~/PortalLigowy.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"   Inherits="Portal_Ligowy.Default" %>
<%@ Register Src="~/Cnt/News.ascx" TagPrefix="CNT" TagName="News" %>
<asp:Content ID="Home" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

        <div  id="about">
            <p id="abtitle">O nas</p>
            <p id="abinfo">TUTAJ JAKIEŚ INFO O STRONIE! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis ipsum metus. In non ligula vel enim egestas ullamcorper. Morbi egestas augue et erat tempor, id aliquet tortor tincidunt. Etiam semper hendrerit nunc, et sagittis elit elementum id. Fusce et accumsan libero. Integer risus tortor, ultricies a mi vitae, pharetra dapibus dui. Praesent vulputate felis et risus mattis, ac vehicula eros vestibulum. Aliquam tincidunt vestibulum est et hendrerit. </p>
        </div>


    <CNT:News runat="server" ID="News1" />


</asp:Content>
