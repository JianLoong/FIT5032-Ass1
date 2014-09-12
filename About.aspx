<%@ Page Title="About" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" 
    CodeBehind="About.aspx.cs"
    StylesheetTheme="SkinFile" %>

<%-- Done via anchors due to the specifications that only 1 master can be used. Anchors are then used to redirect user from main page. 
    http://stackoverflow.com/questions/6826741/anchor-link-landing-in-wrong-position --%>
<asp:Content runat="server" ID="Content3" ContentPlaceHolderID="MainContent">
    <h1><i class="fa fa-spoon">&nbsp;</i>About</h1>
    <hr />
    <div class="row">
        <div class="col-lg-6">
            <h1>Who are we?</h1>
            <p>We are a unique modern Asian Fusion restaurant situated within the heart of St. Kilda</p>
            <p>Our Communal dining tables, bright modern design and golden textured wooden walls set the scene for a smart relaxed dining experience.</p>
            <p>Our Menu prides itself on freshness presentation and above all the authentic flavours of Asia We invite you to enjoy a meal or casual drinks and tapas in our sake & plum wine bar.</p>
            <div class="row">
                <div class="col-lg-6">
                    <div class="well well-sm text-center">
                        <asp:HyperLink runat="server" NavigateUrl="./FAQ.aspx" Text="FAQ" CssClass="btn btn-info"></asp:HyperLink>
                        <p>Do you have a question?</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="well well-sm text-center">
                        <asp:HyperLink runat="server" NavigateUrl="./OurHistory.aspx" Text="Our History" CssClass="btn btn-info"></asp:HyperLink>
                        <p>Interested to know our origins? </p>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <asp:Image CssClass="img-responsive" runat="server" ToolTip="U-Village Restaurant and Bar" ImageUrl="./Images/gallery.jpg" />
        </div>
    </div>
    <p></p>
    <p><strong><em><i class="fa fa-comments">&nbsp;</i>Have a look what our customers say.......</em></strong></p>
    <div class="row">
        <div class="col-lg-4">
            <div class="well well-sm">
                <blockquote class="small">
                    <p>Perfect. What an amazing evening. The food was great (prices as well) as too the service. The owner is very kind and the front of house manager is beautiful. She made us very welcome and does her job wonderfully. The old school music a nice touch, and we love the lights and garden features - a great little and intimate set up. Will certainly be returning.</p>
                    <footer><i class="fa fa-comment">&nbsp;</i>Luke Springer <cite title="Source Title">http://www.urbanspoon.com/u/profile/2198938</cite></footer>
                </blockquote>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="well well-sm">
                <blockquote class="small">
                    <p>Dad and I had a lovely night at U-Village and the restaurant did fill up a little bit by the time we left. For me dining at U-Village was a very comfortable experience. The service was professional and warm, which I must say is a rarity at a lot of Asian eateries. The food on offer were a good blend of innovation and traditional. I do hope that business picks up for U-Village, because I certainly won’t hesitate to come back.</p>
                    <footer><i class="fa fa-comment">&nbsp;</i>Rumbling Teddy <cite title="Source Title">http://rumblingteddy.wordpress.com/2013/09/01/u-village/</cite></footer>
                </blockquote>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="well well-sm">
                <blockquote class="small">
                    <p>
                        I thoroughly enjoyed my meal.  U-Village’s menu is interesting and has a variety of dishes influenced by thai, malay and chinese cooking.  The food is presented nicely, fresh and of good quality.  The braised pork and soft shell crab is enough to keep me coming back to this restaurant!
                    </p>
                    <footer><i class="fa fa-comment">&nbsp;</i>Jo <cite title="Source Title">http://burpappetit.wordpress.com/2013/06/26/u-village-st-kilda/</cite></footer>
                </blockquote>
            </div>
        </div>
    </div>
    <p></p>
</asp:Content>
