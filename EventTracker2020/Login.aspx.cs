/*
Course: COMP 2139
Team Name: George Brown Bears
Team Members:       Peng Qiu - 101230649
                    Marina Savochkina - 101174725
                    Alisher Urazbayev - 101173113
                    Yevhenii Zalizniak - 101171637
                    Evgeniya Zhukova - 101239316
*/

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //check if user came from page that he/she is not allowed to attend
            string role = Convert.ToString(Session["role"]);
            if (role == "error")
            {
                lblText1.Text = "You visited a page that required authentication. Please, log in.";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //accept input from user
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                Session["username"] = username;
                Session["password"] = password;


                //keep in string variable path to file with user info
                string dataFile = Server.MapPath("~/users.txt");

                //define array for keeping info from .txt file
                Array userData = null;

                //if file exist, read info from file with users data
                if (File.Exists(dataFile))
                {
                    userData = File.ReadAllLines(dataFile);

                    //check if there is a user in data base with the same login and password
                    foreach (string dataLine in userData)
                    {
                        //redirection for user with role "admin"
                        if (dataLine.Split(',')[3] == "admin" && username == dataLine.Split(',')[2] && password == dataLine.Split(',')[4])
                        {
                            Session["role"] = "admin";
                            Response.Redirect("TrackerUserAdmin.aspx");                            
                        }

                        //redirection for user with role "eventorg"
                        else if (dataLine.Split(',')[3] == "eventorg" && username == dataLine.Split(',')[2] && password == dataLine.Split(',')[4])
                        {
                            Session["role"] = "eventorg";
                            Response.Redirect("AttendanceRegisters.aspx");                            
                        }
                    }
                }
                //message if there is no user in data base with these username and password 
                lblMessage.Text = "Incorrect username or password. Please, try again.";
            }
        }

        //redirection to registration new users page
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationPage.aspx");
        }

        //redirection to reset password page
        protected void lkbPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ResetPassword.aspx");
        }
    }
}