<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="News.ascx.cs" Inherits="Portal_Ligowy.Cnt.News" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PLConnectionString %>" SelectCommand=""></asp:SqlDataSource>




<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <LayoutTemplate>              
                    <asp:Placeholder
                        id="itemPlaceholder"
                        runat="server" />
                </div>
          <asp:DataPager ID="DataPager1" PageSize="5" runat="server">
                                <Fields >
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>

            </LayoutTemplate>
            <ItemTemplate>
                 <div class="news">
        <div class="nTitleBar">
            <p class="nTitle">
                <%# Eval("Title") %>
            </p>
            <div class="nInfo">
                <img src="../images/nAutor.png" alt="Autor: " style="float:left;"/><p class="nInfo_elm"><%# Eval("Name") %></p>
                <img src="../images/nDate.png" alt="Data: " style="float:left;"/><p class="nInfo_elm"><%# Eval("DateAdd") %></p>
            </div>
        </div>
        <div class="clear"></div>
        <p class="newsText"><%# Eval("TxtShort") %></p>
        <div class="nMore">
             <a href="News.aspx?id=<%# Eval("ID") %>&mode=0"><img src="../images/czytdal.png" alt="Komentarze" class="nMore_elm"/></a>
            <a href="News.aspx?id=<%# Eval("ID") %>&mode=1"><img src="../images/koment.png" alt="Komentarze" style="float:right;" class="nMore_elm"/></a>
           
          </div>
                     <div class="clear"></div>
    </div>

            </ItemTemplate>
            <AlternatingItemTemplate>
                   <div class="news">
        <div class="nTitleBar">
            <p class="nTitle">
               <%# Eval("Title") %>
            </p>
            <div class="nInfo">
                <img src="../images/nAutor.png" alt="Autor: " style="float:left;"/><p class="nInfo_elm"><%# Eval("Name") %></p>
                <img src="../images/nDate.png" alt="Data: " style="float:left;"/><p class="nInfo_elm"><%# Eval("DateAdd") %></p>
            </div>
        </div>
        <div class="clear"></div>
        <p class="newsText"><%# Eval("TxtShort") %></p>
        <div class="nMore">
           <a href="News.aspx?id=<%# Eval("ID") %>&mode=0"><img src="../images/czytdal.png" alt="Komentarze" class="nMore_elm"/></a>
            <a href="News.aspx?id=<%# Eval("ID") %>&mode=1"><img src="../images/koment.png" alt="Komentarze" style="float:right;" class="nMore_elm"/></a>
           

        </div><div class="clear"></div>
    </div>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
             Brak.
            </EmptyDataTemplate>
 </asp:ListView>
