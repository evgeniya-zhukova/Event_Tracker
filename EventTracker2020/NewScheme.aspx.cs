using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class NewScheme : System.Web.UI.Page
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
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //accept input from user
                string schemeName = txtSchemeName.Text;
                string symbol1 = txtSymbol1.Text;
                string symbol2 = txtSymbol2.Text;
                string symbol3 = txtSymbol3.Text;
                string statusName1 = txtStatusName1.Text;
                string statusName2 = txtStatusName2.Text;
                string statusName3 = txtStatusName3.Text;
                double percent1 = 0;
                double percent2 = 0;
                double percent3 = 0;

                //convert string to double
                if (txtAssignPercent1.Text != "")
                {
                    percent1 = Double.Parse(txtAssignPercent1.Text);
                }
                if (txtAssignPercent2.Text != "")
                {
                    percent2 = Double.Parse(txtAssignPercent1.Text);
                }
                if (txtAssignPercent3.Text != "")
                {
                    percent3 = Double.Parse(txtAssignPercent1.Text);
                }

                //sum all percents 
                double sum = percent1 + percent2 + percent3;

                if (!string.IsNullOrEmpty(txtSchemeName.Text)) {
                    lblRequiredName.Text = "";

                    //check if at least one Status Name is not empty and if sum of percents is not greater than 100
                    if ((statusName1 != "" || statusName2 != "" || statusName3 != "") && (sum <= 100))
                    {
                        //if Scheme Name1 is empty, write info there
                        if (Session["schemeName1"] == null)
                        {
                            Session["schemeName1"] = schemeName;
                            Session["symbol11"] = symbol1;
                            Session["symbol12"] = symbol2;
                            Session["symbol13"] = symbol3;
                            Session["statusName11"] = statusName1;
                            Session["statusName12"] = statusName2;
                            Session["statusName13"] = statusName3;
                            Session["percent11"] = percent1;
                            Session["percent12"] = percent2;
                            Session["percent13"] = percent3;
                            lblOneLineFill.Text = "";
                            lblRequiredName.Text = "Scheme Name 1 " + Session["schemeName1"] + " was saved successful.";
                        }
                        //if Scheme Name2 is empty, write info there
                        else if (Session["schemeName2"] == null)
                        {
                            Session["schemeName2"] = schemeName;
                            Session["symbol21"] = symbol1;
                            Session["symbol22"] = symbol2;
                            Session["symbol23"] = symbol3;
                            Session["statusName21"] = statusName1;
                            Session["statusName22"] = statusName2;
                            Session["statusName23"] = statusName3;
                            Session["percent21"] = percent1;
                            Session["percent22"] = percent2;
                            Session["percent23"] = percent3;
                            lblOneLineFill.Text = "";
                            lblRequiredName.Text = "Scheme Name 2 " + Session["schemeName2"] + " was saved successful.";
                        }
                        //else write info in Scheme Name3
                        else
                        {
                            Session["schemeName3"] = schemeName;
                            Session["symbol31"] = symbol1;
                            Session["symbol32"] = symbol2;
                            Session["symbol33"] = symbol3;
                            Session["statusName31"] = statusName1;
                            Session["statusName32"] = statusName2;
                            Session["statusName33"] = statusName3;
                            Session["percent31"] = percent1;
                            Session["percent32"] = percent2;
                            Session["percent33"] = percent3;
                            lblOneLineFill.Text = "";
                            lblRequiredName.Text = "Scheme Name 3 " + Session["schemeName3"] + " was saved successful.";
                        }
                    }
                    else
                    {
                        lblOneLineFill.Text = "New Scheme must have at least 1 Status Name and the amount of Assigned % cann`t be more than 100.";
                    }
                }
                else
                {
                    lblRequiredName.Text = "Scheme Name is required to fill in.";
                }
            }
        }

        protected void btnAddSessions_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["numSessions"] = 3;

                //accept input from user
                if (!string.IsNullOrEmpty(txtAddStatus.Text))
                {
                    //convert user input to int
                    int addStatus = Int32.Parse(txtAddStatus.Text);
                    int numSessions = Int32.Parse(Session["numSessions"].ToString());
                    int sum = addStatus + numSessions;
                    if (sum <= 20)
                    {
                        Session["numSessions"] = sum;
                        lblNumSession.Text = "You added " + addStatus + " sessions. Now you have " + sum + " sessions in total.";
                        txtAddStatus.Text = "";
                    }
                    else
                    {
                        lblNumSession.Text = "There should be no more than 20 sessions in total.";
                    }
                }
            }
        }

        //redirection back to Attendance Schemes page
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceSchemes.aspx");
        }

        //log out and redirection back to login page
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnDelete1_Click(object sender, EventArgs e)
        {
            txtSymbol1.Text = "";
            txtStatusName1.Text = "";
            txtAssignPercent1.Text = "";

        }

        protected void btnDelete2_Click(object sender, EventArgs e)
        {
            txtSymbol2.Text = "";
            txtStatusName2.Text = "";
            txtAssignPercent2.Text = "";
        }

        protected void btnDelete3_Click(object sender, EventArgs e)
        {
            txtSymbol3.Text = "";
            txtStatusName3.Text = "";
            txtAssignPercent3.Text = "";
        }

        //redirection back to Attendance Schemes page
        protected void btnAttSchemes_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceSchemes.aspx");
        }
    }
}