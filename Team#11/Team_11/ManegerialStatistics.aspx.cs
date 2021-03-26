using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class ManegerialStatistics : System.Web.UI.Page
    {
        Controller controllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            controllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int res = controllerObj.GetCountOfStaffMembers();
            TextBox1.Text = res.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            int res = controllerObj.GetAvgSalaryOtfMembers();
            TextBox3.Text = res.ToString();
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            int res = controllerObj.GetAvgSalaryOtfAdmins();
            TextBox4.Text = res.ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int res = controllerObj.GetNumOfComplaints();
            TextBox5.Text = res.ToString();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int res = controllerObj.GetNumOfDeps();
            TextBox6.Text = res.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int res = controllerObj.GetCountOfAdministrators();
            TextBox2.Text = res.ToString();
        }
    }
}