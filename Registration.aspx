<%@ Page Language="C#" Title="Registration" AutoEventWireup="true" MasterPageFile="MasterPage.master" CodeFile="Registration.aspx.cs" Inherits="ass1_Registration" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="well well">

        <h1><i class="fa fa-users">&nbsp;</i><%: Title %></h1>
        <hr />

        <asp:Panel ID="Registration_Form" runat="server">
            <fieldset>
                <h2>Please fill in your details</h2>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-sm-3 control-label">User name</asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control input-sm" />
                        <asp:RequiredFieldValidator runat="server" 
                            ControlToValidate="UserName"
                            CssClass="label label-danger"
                            ErrorMessage="The user name field is required."
                            ForeColor="" EnableViewState="False" EnableTheming="False"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <%-- Regex for no spaces http://stackoverflow.com/questions/6779174/asp-net-regular-expression-validator-no-spaces--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                            ControlToValidate="UserName"
                            CssClass="label label-danger"
                            ErrorMessage="The user name must not contain spaces."
                            ForeColor=""
                            ValidationExpression="^[a-zA-Z0-9_]{5,255}$" EnableTheming="False"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>
                        <%-- Using display dynamic so that it wont occupy space: http://stackoverflow.com/questions/1002156/how-to-combine-regularexpressionvalidator-control-and-requiredfieldvalidator --%>
                        <%-- Regex for length : http://stackoverflow.com/questions/9950902/why-isnt-my-rangevalidator-working
                    http://stackoverflow.com/questions/21198563/unable-to-check-password-length-using-regex-in-mvc4% --%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="UserName"
                            CssClass="label label-danger"
                            ErrorMessage="The user name must be between 6 and 20 characters"
                            ForeColor=""
                            ValidationExpression="^.{6,20}$" EnableTheming="False" EnableViewState="False"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-sm-3 control-label">Email address</asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control input-sm" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="label label-danger"
                            ErrorMessage="The email address field is required."
                            ForeColor=""
                            Display="Dynamic"
                            EnableTheming="false"
                            EnableViewState="false" />
                        <%--Email format validation: http://stackoverflow.com/questions/182542/email-address-validation-for-asp-net --%>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="Email"
                            CssClass="label label-danger"
                            ErrorMessage="Invalid Email Format"
                            ForeColor=""
                            Display="Dynamic"
                            EnableTheming="false"
                            EnableViewState="false">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-sm-3 control-label">Password</asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control input-sm" />
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="Password"
                            CssClass="label label-danger"
                            ErrorMessage="The password field is required."
                            ForeColor=""
                            Display="Dynamic"
                            EnableTheming="false">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="Password"
                            CssClass="label label-danger"
                            ErrorMessage="The password must be between 6 and 20 characters"
                            ForeColor=""
                            ValidationExpression="^.{6,20}$" EnableTheming="False" EnableViewState="False"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-sm-3 control-label">Confirm password</asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control input-sm" />

                        <asp:CompareValidator runat="server" ControlToCompare="Password"
                            ControlToValidate="ConfirmPassword"
                            CssClass="label label-danger"
                            Display="Dynamic"
                            ErrorMessage="The password and confirmation password do not match." ForeColor="" />

                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="ConfirmPassword"
                            CssClass="label label-danger"
                            Display="Dynamic" ErrorMessage="The confirm password field is required."
                            ForeColor="" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Gender" CssClass="col-sm-3 control-label">Gender </asp:Label>
                    <div class="col-sm-9">
                        <asp:ListBox ID="Gender" runat="server" CssClass="form-control input-sm"
                            EnableTheming="false">
                            <asp:ListItem Text="--Select One--" Value="" />
                            <asp:ListItem Text="Male"></asp:ListItem>
                            <asp:ListItem Text="Female">Female</asp:ListItem>
                        </asp:ListBox>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="Gender"
                            CssClass="label label-danger"
                            ErrorMessage="Please select your gender."
                            ForeColor=""
                            Display="Dynamic" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Country" CssClass="col-sm-3 control-label">Country </asp:Label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="Country" runat="server" DataSourceID="Countries" DataTextField="countryName" CssClass="form-control input-sm"
                            DataValueField="countryName">
                        </asp:DropDownList>
                        <asp:XmlDataSource ID="Countries" runat="server" DataFile="Countries.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="Country"
                            CssClass="label label-danger"
                            ErrorMessage="Please select a country."
                            ForeColor=""
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Newsletter" CssClass="col-sm-3 control-label">Newsletter? </asp:Label>
                    <div class="col-sm-9">
                        <asp:RadioButtonList ID="Newsletter" runat="server" CssClass="">
                            <asp:ListItem>&nbsp;Yes</asp:ListItem>
                            <asp:ListItem>&nbsp;No</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="Newsletter"
                            CssClass="label label-danger"
                            ErrorMessage="Please answer this question."
                            ForeColor=""
                            Display="Dynamic" />
                    </div>
                </div>
                <div class="form-group">
<%--                    <script type="text/javascript">
                        function ValidateTerms(oSrc, args) {
                            args.IsValid = (args.checked);
                        }
                    </script>--%>
                    <%-- http://stackoverflow.com/questions/5876021/correct-semantic-tag-for-copyright-info-html5 --%>
                    <asp:Label runat="server" AssociatedControlID="Terms" CssClass="col-sm-3 control-label">Terms</asp:Label>
                    <div class="col-sm-9">
                        <asp:CheckBox ID="Terms" runat="server" CssClass="checkbox-inline" Text="I agree to the terms and conditions." />
                    </div>
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:CustomValidator ID="CustomValidator1" runat="server"
                            Display="Dynamic"
                            ForeColor=""
                            CssClass="label label-danger"
                            ErrorMessage="Please accept the terms and conditions to proceed.."
                            ClientValidationFunction="ValidateTerms"
                            OnServerValidate="CustomValidator1_ServerValidate" EnableTheming="False" EnableViewState="False"></asp:CustomValidator>
                    </div>

                    <%--Custom validator does not generate a JS, so it seems that all other fields must be validated first then its validated 
                http://forums.asp.net/t/1216367.aspx?Server+Side+CustomValidator+not+working
                http://msdn.microsoft.com/en-us/library/vstudio/f5db6z8k(v=vs.100).aspx --%>
                </div>
                <div class="form-group">
                    <%--Range validator : http://stackoverflow.com/questions/8826328/asp-net-range-validator-on-textbox--%>
                    <asp:Label runat="server" AssociatedControlID="NoOfEatOut" CssClass="col-sm-3 control-label">How often do you eat out in a month?</asp:Label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="NoOfEatOut" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="NoOfEatOut"
                            CssClass="label label-danger"
                            ErrorMessage="Please enter a number."
                            ForeColor=""
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator
                            runat="server"
                            Type="Integer"
                            CssClass="label label-danger"
                            ControlToValidate="NoOfEatOut"
                            MinimumValue="0"
                            MaximumValue="31"
                            ForeColor=""
                            ErrorMessage="Please enter a valid value"
                            Display="Dynamic">
                        </asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button runat="server" CommandName="MoveNext" Text="Register" CssClass="btn btn-primary"
                            ID="Register"
                            OnClick="RegisterButton_Click" />
                    </div>
                </div>


            </fieldset>
        </asp:Panel>
        <asp:Panel runat="server"
            ID="Registration_Success">
            <asp:Label ID="Information" runat="server"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>

