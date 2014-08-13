using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ass1_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Gender.SelectedValue = null;
        Country.SelectedValue = "Australia";
    }

    protected void RegisterButton_Click(Object sender, EventArgs e)
    {
        if (!Page.IsValid && Page.IsPostBack)
        {
            // Hide Panel
            Registration_Form.Visible = false;
            // Put all contents in Panel if page is valid with formating.
            // Compile and format all Information.
            String registrationInfo = "";
            registrationInfo += "<h2><i class='fa fa-info-circle'>&nbsp;</i>Your information are as follows</h2>";
            registrationInfo += "<table class='table'>";
            registrationInfo += "<tr><td>User name</td> ";
            registrationInfo += "<td>" + UserName.Text.ToString().ToUpper().Trim() + "</td></tr>";
            registrationInfo += "<tr><td>Email</td><td>" + Email.Text.ToString() + "</td></tr>";
            registrationInfo += "<tr><td>Password</td><td>" + Password.Text.ToString() + "</td></tr>";
            registrationInfo += "<tr><td>Gender</td><td>" + Gender.Text.ToString() + "</td></tr>";
            registrationInfo += "<tr><td>Country</td><td>" + Country.Text.ToString() + "</td></tr>";
            registrationInfo += "<tr><td>Newsletter</td><td>" + Newsletter.Text.ToString() + "</td></tr>";
            registrationInfo += "<tr><td>Terms and Conditions</td><td>" + "You agreed to everything without reading." + "</td></tr>";
            registrationInfo += "<tr><td>No of times eat out</td><td>" + NoOfEatOut.Text + "</td></tr>";
            registrationInfo += "</table>";

            

            Information.Text = "<div class='alert alert-success' role='alert'><h1><i class='fa fa-check'>&nbsp;</i>Congratulations, you have successfully registered.</h1></div>";
            Information.Text += "<div class='alert alert-info'>" + registrationInfo + "</div>";
        }
    }

    // http://stackoverflow.com/questions/1228112/how-do-i-make-a-checkbox-required-on-an-asp-net-form
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = Terms.Checked;
    }
}