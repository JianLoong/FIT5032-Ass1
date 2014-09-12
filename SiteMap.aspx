<%@ Page Title="Site Map" Language="C#" MasterPageFile="MasterPage.Master" 
    AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs"
    StylesheetTheme="SkinFile" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h1><i class="fa fa-sitemap">&nbsp;</i>Site Map</h1>
    <hr />
    <div>
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="BulletedList" SkinID="TreeViewSkin"
            ShowExpandCollapse="False" ShowLines="True">
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" SiteMapProvider="UVillageSiteMap" runat="server"/>
    </div>
    <p></p>
</asp:Content>


