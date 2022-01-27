using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class NewRegister : System.Web.UI.Page
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

            //input info into drop down list System Scheme
            if (Session["schemeName1"] != null)
            {
                string shemeNam = Convert.ToString(Session["schemeName1"]);
                DropListAttendance.Items.Insert(0, shemeNam);
            }
            if (Session["schemeName2"] != null)
            {
                string shemeNam2 = Convert.ToString(Session["schemeName2"]);
                DropListAttendance.Items.Insert(1, shemeNam2);
            }
            if (Session["schemeName3"] != null)
            {
                string shemeNam3 = Convert.ToString(Session["schemeName3"]);
                DropListAttendance.Items.Insert(2, shemeNam3);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //accept input from user
                string regName = txtName.Text;
                string regDescription = txtDescription.Text;
                string regScheme = DropListAttendance.Text;
                string sessionName1 = txtSessionNam1.Text;
                string sessionName2 = txtSessionNam2.Text;
                string sessionName3 = txtSessionNam3.Text;
                string sessionDescr1 = txtSessionDescr1.Text;
                string sessionDescr2 = txtSessionDescr2.Text;
                string sessionDescr3 = txtSessionDescr3.Text;


                //check if at least one Session Name is not empty
                if (sessionName1 != "" || sessionName2 != "" || sessionName3 != "")
                {
                    //if Registration Name1 is empty, write info there
                    if (Session["regName1"] == null)
                    {
                        Session["regName1"] = regName;
                        Session["regDescription1"] = regDescription;
                        Session["regScheme1"] = regScheme;
                        Session["sessionName11"] = sessionName1;
                        Session["sessionName12"] = sessionName2;
                        Session["sessionName13"] = sessionName3;
                        Session["sessionDescr11"] = sessionDescr1;
                        Session["sessionDescr12"] = sessionDescr2;
                        Session["sessionDescr13"] = sessionDescr3;
                        Session["numSessions1"] = Session["numSessions"];
                        lblError.Text = "Registration " + Session["regName1"] + " was successfully saved.";
                    }
                    //if Registration Name2 is empty, write info there
                    else if (Session["regName2"] == null)
                    {
                        Session["regName2"] = regName;
                        Session["regDescription2"] = regDescription;
                        Session["regScheme2"] = regScheme;
                        Session["sessionName21"] = sessionName1;
                        Session["sessionName22"] = sessionName2;
                        Session["sessionName23"] = sessionName3;
                        Session["sessionDescr21"] = sessionDescr1;
                        Session["sessionDescr22"] = sessionDescr2;
                        Session["sessionDescr23"] = sessionDescr3;
                        Session["numSessions2"] = Session["numSessions"];
                        lblError.Text = "Registration " + Session["regName2"] + " was successfully saved.";
                    }
                    //else write info in Registration Name3
                    else
                    {
                        Session["regName3"] = regName;
                        Session["regDescription3"] = regDescription;
                        Session["regScheme3"] = regScheme;
                        Session["sessionName31"] = sessionName1;
                        Session["sessionName32"] = sessionName2;
                        Session["sessionName33"] = sessionName3;
                        Session["sessionDescr31"] = sessionDescr1;
                        Session["sessionDescr32"] = sessionDescr2;
                        Session["sessionDescr33"] = sessionDescr3;
                        Session["numSessions3"] = Session["numSessions"];
                        lblError.Text = "Registration " + Session["regName3"] + " was successfully saved.";
                    }
                }
                else
                {
                    lblError.Text = "New Register must have at least 1 Session Name.";
                }
            }
        }
        

        //redirection back to Attendance Registers page
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtDescription.Text = "";
            Response.Redirect("AttendanceRegisters.aspx");
        }

        //log out and redirection back to login page
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        //upload file
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblError.Text = "";
                if (FileUpload1.HasFile)
                try
                {
                    string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(csvPath);
                    lblError.Text = "File was successfully uploaded.";
                }
                catch (Exception ex)
                {
                    lblError.Text = "File was not uploaded." + ex.Message.ToString();
                }     
            }
        }

        protected void btnAddSessions_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["numSessions"] = 3;

                //accept input from user
                if (!string.IsNullOrEmpty(txtAddSession.Text))
                {
                    //convert user input to int
                    int addStatus = Int32.Parse(txtAddSession.Text);
                    int numSessions = Int32.Parse(Session["numSessions"].ToString());
                    int sum = addStatus + numSessions;
                    if (sum <= 20)
                    {
                        Session["numSessions"] = sum;
                        lblNumSession.Text = "You added " + addStatus + " sessions. Now you have " + Session["numSessions"] + " sessions in total.";
                        txtAddSession.Text = "";
                    }
                    else
                    {
                        lblNumSession.Text = "There should be no more than 20 sessions in total.";
                    }
                }
            }
        }

        protected void btnDelete1_Click(object sender, EventArgs e)
        {
            txtSessionDescr1.Text = "";
            txtSessionNam1.Text = "";
        }

        protected void btnDelete2_Click(object sender, EventArgs e)
        {
            txtSessionDescr2.Text = "";
            txtSessionNam2.Text = "";
        }

        protected void btnDelete3_Click(object sender, EventArgs e)
        {
            txtSessionDescr3.Text = "";
            txtSessionNam3.Text = "";
        }

        //redirection back to Attendance Registers page
        protected void btnAttreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("AttendanceRegisters.aspx");
        }
    }
}