using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class UserSuccessfullyReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblText.Text = "An email has been sent to " + Session["username"] + ". Please, check your email to verify and confirm.";
        }

        protected void txtClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}