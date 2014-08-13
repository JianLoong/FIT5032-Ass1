<%@ Page Title="Home Page" Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="true"  %>

<asp:Content runat="server" ID="Default" ContentPlaceHolderID="MainContent">
    <section class="featured">
        <div class="row">
            <div class="col-lg-12">
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="Adverts" CssClass="img-responsive" />
                <asp:XmlDataSource ID="Adverts" runat="server" DataFile="Adverts.xml"></asp:XmlDataSource>
            </div>
            <div class="col-lg-12 text-center">
                <p></p>
                <div class="jumbotron">
                    <h1>Hi. 您好.สวัสดี.</h1>
                    <p>Welcome to U-Village a place where it is all about tasting different flavours and experiencing different cultures.</p>
                </div>
            </div>
        </div>
    </section>
    <p></p>

    <div class="row" style="font-family: 'Lobster', cursive;">
        <div class="col-lg-3 text-center">
            <div class="well well-sm">
                <asp:Image runat="server"
                    ImageUrl="./Images/01.jpg"
                    ToolTip="Porter House Steak"
                    AlternateText="Tom Yum Broth"
                    CssClass="img-responsive" />
                <em>Porter House Steak</em>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="well well-sm">
                <asp:Image runat="server" ImageUrl="./Images/02.jpg"
                    CssClass="img-responsive"
                    ToolTip="Tom Yum Broth"
                    AlternateText="Tom Yum Broth" />
                <em>Tom Yum Broth</em>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="well well-sm">
                <asp:Image runat="server" ImageUrl="./Images/03.jpg"
                    CssClass="img-responsive"
                    ToolTip="Pork & Cos Lettuce Wrap"
                    AlternateText="Pork & Cos Lettuce Wrap" />
                <em>Pork & Cos Lettuce Wrap</em>
            </div>
        </div>
        <div class="col-lg-3 text-center">
            <div class="well well-sm">
                <asp:Image runat="server" ImageUrl="./Images/04.jpg"
                    CssClass="img-responsive"
                    ToolTip="Pork Belly Mini Bun"
                    AlternateText="Pork Belly Mini Bun" />
                <em>Pork Belly Mini Bun</em>
            </div>
        </div>
    </div>
</asp:Content>
