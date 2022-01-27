using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventTracker2020
{
    public partial class TrackerUserAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //check if user is not admin
            string role = Convert.ToString(Session["role"]);
            if (role != "admin")
            {
                Session["role"] = "error";
                Session["username"] = "";
                Session["password"] = "";
                Response.Redirect("Login.aspx");
            }

            //path to file Users
            string dataFile = Server.MapPath("~/users.txt");

            //path to file UserChoice
            string dataFile2 = Server.MapPath("~/userChoice.txt");

            //if file exist UserChoice, read info 
            if (File.Exists(dataFile2))
            {
                string str = "";
                System.IO.StreamReader objReadr2;
                objReadr2 = new System.IO.StreamReader(dataFile2);
                do
                {
                    str = str + objReadr2.ReadLine() + '\n';

                } while (objReadr2.Peek() != -1);
                objReadr2.Close();
                string str2 = "";

                //first
                try
                {
                    str2 = str.Split('\n')[0];
                    string en1 = str2.Split(',')[0];
                    string app1 = str2.Split(',')[1];
                    bool boolEn1 = bool.Parse(en1);
                    bool boolApp1 = bool.Parse(app1);
                    chbEnable1.Checked = boolEn1;
                    chbApprove1.Checked = boolApp1;
                }
                catch
                {
                    chbEnable1.Checked = false;
                    chbApprove1.Checked = false;
                }

                //second
                try
                {
                    str2 = str.Split('\n')[1];
                    string en2 = str2.Split(',')[0];
                    string app2 = str2.Split(',')[1];
                    bool boolEn2 = bool.Parse(en2);
                    bool boolApp2 = bool.Parse(app2);
                    chbEnable2.Checked = boolEn2;
                    chbApprove2.Checked = boolApp2;
                }
                catch
                {
                    chbEnable2.Checked = false;
                    chbApprove2.Checked = false;
                }

                //third
                try
                {
                    str2 = str.Split('\n')[2];
                    string en3 = str2.Split(',')[0];
                    string app3 = str2.Split(',')[1];
                    bool boolEn3 = bool.Parse(en3);
                    bool boolApp3 = bool.Parse(app3);
                    chbEnable3.Checked = boolEn3;
                    chbApprove3.Checked = boolApp3;
                }
                catch
                {
                    chbEnable3.Checked = false;
                    chbApprove3.Checked = false;
                }

                //fourth
                try
                {
                    str2 = str.Split('\n')[3];
                    string en4 = str2.Split(',')[0];
                    string app4 = str2.Split(',')[1];
                    bool boolEn4 = bool.Parse(en4);
                    bool boolApp4 = bool.Parse(app4);
                    chbEnable4.Checked = boolEn4;
                    chbApprove4.Checked = boolApp4;
                }
                catch
                {
                    chbEnable4.Checked = false;
                    chbApprove4.Checked = false;
                }

                //fifth
                try
                {
                    str2 = str.Split('\n')[4];
                    string en5 = str2.Split(',')[0];
                    string app5 = str2.Split(',')[1];
                    bool boolEn5 = bool.Parse(en5);
                    bool boolApp5 = bool.Parse(app5);
                    chbEnable5.Checked = boolEn5;
                    chbApprove5.Checked = boolApp5;
                }
                catch
                {
                    chbEnable5.Checked = false;
                    chbApprove5.Checked = false;
                }
            }

            string s = "";
            //if file exist, read info from file with Users data
            if (File.Exists(dataFile))
            {
                System.IO.StreamReader objReadr;
                objReadr = new System.IO.StreamReader(dataFile);
                do
                {
                    s = s + objReadr.ReadLine() + '\n';

                } while (objReadr.Peek() != -1);
                objReadr.Close();
                string n = "";

                //first
                try
                {
                    n = s.Split('\n')[0];
                    lblFirstName1.Text = n.Split(',')[0];
                    lblLastName1.Text = n.Split(',')[1];
                    lblEmail1.Text = n.Split(',')[2];

                }
                catch
                {
                    lblFirstName1.Text = "";
                    lblLastName1.Text = "";
                    lblEmail1.Text = "";
                }

                //second
                try
                {
                    n = s.Split('\n')[1];
                    lblFirstName2.Text = n.Split(',')[0];
                    lblLastName2.Text = n.Split(',')[1];
                    lblEmail2.Text = n.Split(',')[2];
                }
                catch
                {
                    lblFirstName2.Text = "";
                    lblLastName2.Text = "";
                    lblEmail2.Text = "";
                }

                //third
                try
                {
                    n = s.Split('\n')[2];
                    lblFirstName3.Text = n.Split(',')[0];
                    lblLastName3.Text = n.Split(',')[1];
                    lblEmail3.Text = n.Split(',')[2];
                }
                catch
                {
                    lblFirstName3.Text = "";
                    lblLastName3.Text = "";
                    lblEmail3.Text = "";
                }

                //fourth
                try
                {
                    n = s.Split('\n')[3];
                    lblFirstName4.Text = n.Split(',')[0];
                    lblLastName4.Text = n.Split(',')[1];
                    lblEmail4.Text = n.Split(',')[2];
                }
                catch
                {
                    lblFirstName4.Text = "";
                    lblLastName4.Text = "";
                    lblEmail4.Text = "";
                }

                //fifth
                try
                {
                    n = s.Split('\n')[4];
                    lblFirstName5.Text = n.Split(',')[0];
                    lblLastName5.Text = n.Split(',')[1];
                    lblEmail5.Text = n.Split(',')[2];
                }
                catch
                {
                    lblFirstName5.Text = "";
                    lblLastName5.Text = "";
                    lblEmail5.Text = "";
                }
            }
        }

        //save data to UserChoice file
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                bool enable1 = chbEnable1.Checked;
                bool approve1 = chbApprove1.Checked;
                bool enable2 = chbEnable2.Checked;
                bool approve2 = chbApprove2.Checked;
                bool enable3 = chbEnable3.Checked;
                bool approve3 = chbApprove3.Checked;
                bool enable4 = chbEnable4.Checked;
                bool approve4 = chbApprove4.Checked;
                bool enable5 = chbEnable5.Checked;
                bool approve5 = chbApprove5.Checked;

                string dataUser1 = enable1.ToString() + ',' + approve1.ToString() + Environment.NewLine;
                string dataUser2 = enable2.ToString() + ',' + approve2.ToString() + Environment.NewLine;
                string dataUser3 = enable3.ToString() + ',' + approve3.ToString() + Environment.NewLine;
                string dataUser4 = enable4.ToString() + ',' + approve4.ToString() + Environment.NewLine;
                string dataUser5 = enable5.ToString() + ',' + approve5.ToString() + Environment.NewLine;
                string dataFile1 = Server.MapPath("~/userChoice.txt");
                if (File.Exists(dataFile1))
                {
                    File.AppendAllText(dataFile1, dataUser1);
                    File.AppendAllText(dataFile1, dataUser2);
                    File.AppendAllText(dataFile1, dataUser3);
                    File.AppendAllText(dataFile1, dataUser4);
                    File.AppendAllText(dataFile1, dataUser5);

                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            chbEnable1.Checked = false;
            chbApprove1.Checked = false;
            chbEnable2.Checked = false;
            chbApprove2.Checked = false;
            chbEnable3.Checked = false;
            chbApprove3.Checked = false;
            chbEnable4.Checked = false;
            chbApprove4.Checked = false;
            chbEnable5.Checked = false;
            chbApprove5.Checked = false;
        }

        //log out and redirection back to login page
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnDelete1_Click(object sender, EventArgs e)
        {
            lblFirstName1.Text = "";
            lblLastName1.Text = "";
            lblEmail1.Text = "";
            chbEnable1.Checked = false;
            chbApprove1.Checked = false;

            try
            {
                string dataFile = Server.MapPath("~/users.txt");
                var file = new List<string>(System.IO.File.ReadAllLines(dataFile));
                file.RemoveAt(0);
                File.WriteAllLines(dataFile, file.ToArray());
            }
            catch
            {
                lblFirstName1.Text = "";
                lblLastName1.Text = "";
                lblEmail1.Text = "";
            }
            try
            {
                string dataFile2 = Server.MapPath("~/userChoice.txt");
                var file2 = new List<string>(System.IO.File.ReadAllLines(dataFile2));
                file2.RemoveAt(0);
                File.WriteAllLines(dataFile2, file2.ToArray());
            }
            catch
            {
                chbEnable1.Checked = false;
                chbApprove1.Checked = false;
            }
        }

        protected void btnDelete2_Click(object sender, EventArgs e)
        {
            lblFirstName2.Text = "";
            lblLastName2.Text = "";
            lblEmail2.Text = "";
            chbEnable2.Checked = false;
            chbApprove2.Checked = false;

            try
            {
                string dataFile = Server.MapPath("~/users.txt");
                var file = new List<string>(System.IO.File.ReadAllLines(dataFile));
                file.RemoveAt(1);
                File.WriteAllLines(dataFile, file.ToArray());
            }
            catch
            {
                lblFirstName2.Text = "";
                lblLastName2.Text = "";
                lblEmail2.Text = "";
            }
            try
            {
                string dataFile2 = Server.MapPath("~/userChoice.txt");
                var file2 = new List<string>(System.IO.File.ReadAllLines(dataFile2));
                file2.RemoveAt(1);
                File.WriteAllLines(dataFile2, file2.ToArray());
            }
            catch
            {
                chbEnable2.Checked = false;
                chbApprove2.Checked = false;
            }
        }

        protected void btnDelete3_Click(object sender, EventArgs e)
        {
            lblFirstName3.Text = "";
            lblLastName3.Text = "";
            lblEmail3.Text = "";
            chbEnable3.Checked = false;
            chbApprove3.Checked = false;

            try
            {
                string dataFile = Server.MapPath("~/users.txt");
                var file = new List<string>(System.IO.File.ReadAllLines(dataFile));
                file.RemoveAt(2);
                File.WriteAllLines(dataFile, file.ToArray());
            }
            catch
            {
                lblFirstName3.Text = "";
                lblLastName3.Text = "";
                lblEmail3.Text = "";
            }
            try
            {
                string dataFile2 = Server.MapPath("~/userChoice.txt");
                var file2 = new List<string>(System.IO.File.ReadAllLines(dataFile2));
                file2.RemoveAt(2);
                File.WriteAllLines(dataFile2, file2.ToArray());
            }
            catch
            {
                chbEnable3.Checked = false;
                chbApprove3.Checked = false;
            }
        }

        protected void btnDelete4_Click(object sender, EventArgs e)
        {
            lblFirstName4.Text = "";
            lblLastName4.Text = "";
            lblEmail4.Text = "";
            chbEnable4.Checked = false;
            chbApprove4.Checked = false;

            try
            {
                string dataFile = Server.MapPath("~/users.txt");
                var file = new List<string>(System.IO.File.ReadAllLines(dataFile));
                file.RemoveAt(3);
                File.WriteAllLines(dataFile, file.ToArray());
            }
            catch
            {
                lblFirstName4.Text = "";
                lblLastName4.Text = "";
                lblEmail4.Text = "";
            }
            try
            {
                string dataFile2 = Server.MapPath("~/userChoice.txt");
                var file2 = new List<string>(System.IO.File.ReadAllLines(dataFile2));
                file2.RemoveAt(3);
                File.WriteAllLines(dataFile2, file2.ToArray());
            }
            catch
            {
                chbEnable4.Checked = false;
                chbApprove4.Checked = false;
            }
        }

        protected void btnDelete5_Click(object sender, EventArgs e)
        {
            lblFirstName5.Text = "";
            lblLastName5.Text = "";
            lblEmail5.Text = "";
            chbEnable5.Checked = false;
            chbApprove5.Checked = false;

            try
            {
                string dataFile = Server.MapPath("~/users.txt");
                var file = new List<string>(System.IO.File.ReadAllLines(dataFile));
                file.RemoveAt(4);
                File.WriteAllLines(dataFile, file.ToArray());


            }
            catch
            {
                lblFirstName5.Text = "";
                lblLastName5.Text = "";
                lblEmail5.Text = "";
            }
            try
            {
                string dataFile2 = Server.MapPath("~/userChoice.txt");
                var file2 = new List<string>(System.IO.File.ReadAllLines(dataFile2));
                file2.RemoveAt(4);
                File.WriteAllLines(dataFile2, file2.ToArray());
            }
            catch
            {
                chbEnable5.Checked = false;
                chbApprove5.Checked = false;
            }
        }
    }
}