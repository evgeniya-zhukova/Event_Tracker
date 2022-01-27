using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class AttendanceRegisters : System.Web.UI.Page
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
                ddlOption1.Style.Add("display", "none");
                ddlOption2.Style.Add("display", "none");
                ddlOption3.Style.Add("display", "none");
            }

            //print Registration Names
            if (Session["regName1"] != null)
            {
                string nam1 = Convert.ToString(Session["regName1"]);
                lblRegName1.Text = nam1;
                ddlOption1.Style.Add("display", "block");
                txtCauseConcern1.Text = "no";
                txtSessions1.Text = Session["numSessions1"].ToString();
            }
            if (Session["regName2"] != null)
            {
                string nam2 = Convert.ToString(Session["regName2"]);
                lblRegName2.Text = nam2;
                ddlOption2.Style.Add("display", "block");
                txtCauseConcern2.Text = "no";
                txtSessions2.Text = Session["numSessions2"].ToString();
            }
            if (Session["regName3"] != null)
            {
                string nam3 = Convert.ToString(Session["regName3"]);
                lblRegName3.Text = nam3;
                ddlOption3.Style.Add("display", "block");
                txtCauseConcern3.Text = "no";
                txtSessions3.Text = Session["numSessions3"].ToString();
            }
        }

        protected void ddlOption1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption1.SelectedValue;

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "E")
            {

            }
            if (valueDrop == "D")
            {

            }
        }

        protected void ddlOption2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption2.SelectedValue;

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "E")
            {

            }
            if (valueDrop == "D")
            {

            }
        }

        protected void ddlOption3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string valueDrop = ddlOption3.SelectedValue;

            if (valueDrop == "V")
            {

            }
            if (valueDrop == "E")
            {

            }
            if (valueDrop == "D")
            {

            }
        }

        //redirection to New Register page
        protected void btnNewRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewRegister.aspx");
        }

        //redirection to Attendance Schemes page
        protected void btnAttendanceSchemes_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceSchemes.aspx");
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
    }
}