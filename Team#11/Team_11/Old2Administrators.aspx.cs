using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class Old2Administrators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewAllFeedBackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ViewFeedBack.aspx");
        }

        protected void ViewAllComplaintsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ViewComplaints.aspx");
        }

        protected void AddNewStaffMemberButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/EditStaffMembers.aspx");
        }

        protected void FireCurrentStaffMemberButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/EditStaffMembers.aspx");
        }

        protected void ViewStaffMemberButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/EditStaffMembers.aspx");
        }

        protected void EditStaffMemberSalaryButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("/EditStaffMembers.aspx");
        }
    }
}