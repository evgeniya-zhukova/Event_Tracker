using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class AttendanceSchemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //check if user is not eventorg
            string role = Convert.ToString(Session["role"]);
            if (role != "eventorg")
            {
                Session["role"] = "error";
                Session["username"] = "";
                Session["password"] = "";
                Response.Redirect("Login.aspx");
            }

            //hide all empty labels and dropdown lists
            if (!IsPostBack)
            {
                txtName1.Text = "System Scheme (Default)";
                btnDef2.Style.Add("display", "none");
                btnDef3.Style.Add("display", "none");
                ddlOption2.Style.Add("display", "none");
                ddlOption3.Style.Add("display", "none");
                ddlOption1.Attributes.Add("disabled", "disabled");
            }

            //print Scheme Name 1, if it exists
            if (Session["schemeName1"] != null)
            {
                string sn = Convert.ToString(Session["schemeName1"]);
                txtName1.Text = sn;
                ddlOption1.Attributes.Remove("disabled");
            }
            //print Scheme Name 2, if it exists
            if (Session["schemeName2"] != null)
            {
                string sn2 = Convert.ToString(Session["schemeName2"]);
                txtName2.Text = sn2;
                btnDef2.Style.Add("display", "block");
                ddlOption2.Style.Add("display", "block");
            }
            //print Scheme Name 3, if it exists
            if (Session["schemeName3"] != null)
            {
                string sn3 = Convert.ToString(Session["schemeName3"]);
                txtName3.Text = sn3;
                btnDef3.Style.Add("display", "block");
                ddlOption3.Style.Add("display", "block");
            }
        }

        //redirection to New Scheme page
        protected void btnNewScheme_Click(object sender, EventArgs e)
        {           
            Response.Redirect("NewScheme.aspx");
        }

        //redirection to Attendance Registers page
        protected void btnAttendanceRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceRegisters.aspx");
        }

        //log out and redirection back to login page
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnOpenPopupWindow_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "prompt", "var value = prompt('Data could not inserted successfully.'); storeinput(value);", true);
        }

        protected void btnDef1_Click(object sender, EventArgs e)
        {
            btnDef1.Text = "Current Default";
            btnDef2.Text = "Set as Default";
            btnDef3.Text = "Set as Default";
        }

        protected void btnDef2_Click(object sender, EventArgs e)
        {
            btnDef1.Text = "Set as Default";
            btnDef2.Text = "Current Default";
            btnDef3.Text = "Set as Default";
        }

        protected void btnDef3_Click(object sender, EventArgs e)
        {
            btnDef1.Text = "Set as Default";
            btnDef2.Text = "Set as Default";
            btnDef3.Text = "Current Default";
        }

        protected void ddlOption1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption1.SelectedValue;
            string s = "";

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "C")
            {
                s = txtName1.Text;
            }
        }

        protected void ddlOption2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption2.SelectedValue;
            string s = "";

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "C")
            {
                s = txtName1.Text;
            }
        }

        protected void ddlOption3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption3.SelectedValue;
            string s = "";

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "C")
            {
                s = txtName1.Text;
            }
        }
    }
}