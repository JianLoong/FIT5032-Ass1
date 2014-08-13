<%@ Page Title="Frequently Asked Questions" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1><i class="fa fa-question-circle">&nbsp;</i>FAQ</h1>
    <hr />
    <div class="row">
        <div class="col-lg-6">
            <p><i class="fa fa-arrow-circle-right">&nbsp;</i><strong>What are your opening hours?</strong></p>
            <em><i class="fa fa-hand-o-right">&nbsp;</i>Please look at the table below</em>
            <p></p>

            <div class="panel panel-default text-center">
                <!-- Default panel contents -->
                <div class="panel-heading">Opening Hours</div>

                <!-- Table -->
                <table class="table table-striped table-responsive">
                    <tr>
                        <th class="text-center">Day</th>
                        <th class="text-center">Lunch</th>
                        <th class="text-center">Dinner</th>
                    </tr>
                    <tr>
                        <td>Monday</td>
                        <td>Closed</td>
                        <td>Closed</td>
                    </tr>
                    <tr>
                        <td>Tuesday</td>
                        <td>Closed</td>
                        <td>Closed</td>
                    </tr>
                    <tr>
                        <td>Wednesday</td>
                        <td>12pm - 3pm</td>
                        <td>5.30pm - 10.30pm</td>
                    </tr>
                    <tr>
                        <td>Thursdays</td>
                        <td>12pm - 3pm </td>
                        <td>5.30pm - 10.30pm</td>
                    </tr>
                    <tr>
                        <td>Fridays</td>
                        <td>12pm - 3pm</td>
                        <td>5.30pm - 10.30pm</td>
                    </tr>
                    <tr>
                        <td>Saturday</td>
                        <td colspan="2">12pm - 11.00pm</td>
                    </tr>
                    <tr>
                        <td>Sunday</td>
                        <td colspan="2">12pm - 11.00pm</td>
                    </tr>
                </table>
            </div>
            <p>
                <i class="fa fa-arrow-circle-right">&nbsp;</i><strong>Do you cater for events and parties?</strong>
        <br />
                <em><i class="fa fa-hand-o-right">&nbsp;</i>Yes, we do! Please feel free to contact us regarding this matter.</em>
            </p>
            <p>
                Do I need to make a booking?
        <br />
                <strong><em><i class="fa fa-hand-o-right">&nbsp;</i>We do walk-ins however it is much better to book a table to ensure a pleasurable dinning experience.</em></strong>
            </p>
            <p>
                <i class="fa fa-arrow-circle-right">&nbsp;</i><strong>Do you have a glutten free menu?</strong>
                <br />
                <em><i class="fa fa-hand-o-right">&nbsp;</i>Yes, we do! We have a various range of glutten free meals</em>
            </p>

            <p>
                <i class="fa fa-arrow-circle-right">&nbsp;</i><strong>Do you have a vegetarian selection?</strong>
                <br />
                <em><i class="fa fa-hand-o-right">&nbsp;</i>Yes, we do! We have a various range of vegetarian food. Please ask the staff for further information if needed.</em>
            </p>
        </div>
        <div class="col-lg-6">

            <p>Where are you located?</p>

            <address>
                <strong>U-Village</strong><br>
                1/29 Fitzroy St 
                <br>
                St Kilda, VIC 03182<br>
                <abbr title="Phone">P:</abbr>
                (03) 9537 1129 
            </address>
            <div class="embed-responsive embed-responsive-16by9" style="height: 20px">
                <%--Google Map https://support.google.com/maps/answer/3544418?hl=en--%>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3149.9260372761037!2d144.97427900000005!3d-37.86202099999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad6686f91290d11%3A0x7744fc52a38ed390!2sU-Village+Restaurant!5e0!3m2!1sen!2sau!4v1407654232784" width="400" height="300" style="border: 0"></iframe>
            </div>
        </div>
    </div>
</asp:Content>
