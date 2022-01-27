using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //accept input from user
                string firstName = txtFirstName.Text;
                string lastName = txtLastName.Text;
                string address = txtAddress.Text;
                string e_mail = txtEmail.Text;
                string password = txtPassword.Text;
                string confirm = txtPasswordConfirm.Text;
                bool usernameExist = false;
                lblMessage.Text = "";

                //check if an agreement is selected
                if (!ckbAgree.Checked)
                {
                    lblMessage.Text = "You need to select the agreement before you register.";
                }

                else
                {
                    //keep in string variable path to file with user info
                    string dataFile = Server.MapPath("~/users.txt");

                    //define array for keeping info from .txt file
                    Array userData = null;

                    //if file exist, read info from file with users data
                    if (File.Exists(dataFile))
                    {
                        userData = File.ReadAllLines(dataFile);

                        //check if there is a user in data base with the same username
                        foreach (string dataLine in userData)
                        {
                            //check if user with the same username exist in data base
                            if (dataLine.Split(',')[2] == e_mail)
                            {
                                lblMessage.Text = "Sorry. This username (email) already exist in our data base. Please, choose other one.";
                                usernameExist = true;
                            }
                        }
                    }

                    //if username is not exist in data base
                    if (usernameExist == false)
                    {
                        //keep all user input in string variable
                        string userRegistration = firstName + "," + lastName + "," + e_mail + ",eventorg," + password + "," + address + Environment.NewLine;

                        Session["username"] = e_mail;

                        //if file exist, write user data into it
                        if (File.Exists(dataFile))
                        {
                            File.AppendAllText(dataFile, userRegistration);
                            Response.Redirect("UserSuccessfullyReg.aspx");
                        }
                        else
                        {
                            //if file does not exist, create it and write user data
                            File.WriteAllText(dataFile, userRegistration);
                            Response.Redirect("UserSuccessfullyReg.aspx");
                        }
                    }                
                }
            }
        }
    
        //redirection back to login page
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}