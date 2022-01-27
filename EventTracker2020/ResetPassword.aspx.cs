using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //accept input from user
                string e_mail = txtEmail.Text;

                //keep in string variable path to file with user info
                string dataFile = Server.MapPath("~/users.txt");

                //define array for keeping info from .txt file
                Array userData = null;

                //if file exist, read info from file with users data
                if (File.Exists(dataFile))
                {
                    userData = File.ReadAllLines(dataFile);

                    //check if there is a user in data base with the same email
                    foreach (string dataLine in userData)
                    {                       
                        if (e_mail == dataLine.Split(',')[2])
                        {
                            lblMessage.Text = "Your reset request is been sent to " + e_mail;
                            txtEmail.Text = "";
                            break;
                        }
                        else
                            //message if there is no user with this email in data base 
                            lblMessage.Text = "There is no your email in our data base. Please, register.";
                    }
                }
                else
                    //message if there is no file with user data base 
                    lblMessage.Text = "There is no any emails in our data base. Please, register.";
            }       
        }

        //redirection back to login page
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}