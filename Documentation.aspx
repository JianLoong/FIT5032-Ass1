<%@ Page Title="Documentation" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="Documentation.aspx.cs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <h1><i class="fa fa-list">&nbsp;</i><%: Title %></h1>
        <hr />
    <p></p>
    <div class="row">
        <div class="col-md-9">
            <table class="table table-striped">
                <tr>
                    <td><i class="fa fa-user">&nbsp;</i>Author Name</td>
                    <td>Jian Loong Liew &nbsp;
                        <span>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl="https://www.facebook.com/jianloong.liew" 
                            Text="" ToolTip="Facebook"><i class="fa fa-facebook"></i></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            NavigateUrl="https://www.facebook.com/jianloong.liew" Text="" ToolTip="Linkedin"><i class="fa fa-linkedin-square"></i></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink6" runat="server" 
                            NavigateUrl="https://plus.google.com/111554444386332521899/posts" Text="" 
                            ToolTip="Google Plus"><i class="fa fa-google-plus"></i></asp:HyperLink>
                    </span>
                    </td>
                </tr>
                <tr>
                    <td><i class="fa fa-barcode">&nbsp;</i>Student ID</td>
                    <td>22545727</td>
                </tr>
                <tr>
                    <td><i class="fa fa-book">&nbsp;</i>Unit Name</td>
                    <td>
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="http://www.monash.edu.au/pubs/handbooks/units/FIT5032.html" Text="" ToolTip="FIT5032">FIT5032 Internet Applications Development</asp:HyperLink></td>
                </tr>
                <tr>
                    <td><i class="fa fa-university">&nbsp;</i>Unit Provider</td>
                    <td>Monash University, The Caulfield School of Information Technology</td>
                </tr>
                <tr>
                    <td><i class="fa fa-paperclip">&nbsp;</i>Assignment Number</td>
                    <td>1 - Construct a web site for a business or organisation.</td>
                </tr>
                <tr>
                    <td><i class="fa fa-calendar-o">&nbsp;</i>Date of Submission</td>
                    <td></td>
                </tr>
                <tr>
                    <td><i class="fa fa-graduation-cap">&nbsp;</i>Tutor Name</td>
                    <td>Christopher</td>
                </tr>
                <tr>
                    <td><i class="fa fa-envelope-square">&nbsp;</i>Email</td>
                    <td>Author</td>
                </tr>
            </table>
            <article>
            </article>
        </div>
        <div class="col-md-3">
            <aside>
                <h3>Project Information</h3>
                <ul class="list-group">
                    <li class="list-group-item">
                        <i class="fa fa-github-square">&nbsp;</i><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://github.com/JianLoong/FIT5032-Ass1" Text="">Github</asp:HyperLink></li>
                    <li class="list-group-item">
                        <i class="fa fa-github-alt">&nbsp;</i><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://github.com/JianLoong/FIT5032-Ass1/wiki" Text="" ToolTip="GitHub Wiki">GitHub Wiki</asp:HyperLink></li>
                </ul>
            </aside>
        </div>
    </div>

</asp:Content>
