using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class Administrators : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"] == null)
            {
                this.AddNewStaffMemberButton.Enabled = false;
                this.FireCurrentStaffMemberButton.Enabled = false;
                this.EditStaffMemberSalaryButton.Enabled = false;
                this.ViewStaffMemberButton.Enabled = false;
                this.AddNewAdministratorButton.Enabled = false;
                this.RemoveAdministratorButton.Enabled = false;
                this.ViewAllAdministratorsButton.Enabled = false;
                this.EditAdministratorsSalaryButton.Enabled = false;
                return;
            }
            if (Session["role"].Equals("nonmain"))
            {
                this.AddNewStaffMemberButton.Enabled = false;
                this.FireCurrentStaffMemberButton.Enabled = false;
                this.EditStaffMemberSalaryButton.Enabled = false;
                this.ViewStaffMemberButton.Enabled = false;
                this.AddNewAdministratorButton.Enabled = false;
                this.RemoveAdministratorButton.Enabled = false;
                this.ViewAllAdministratorsButton.Enabled = false;
                this.EditAdministratorsSalaryButton.Enabled = false;
                
            }
            else
            {
                this.AddNewStaffMemberButton.Visible = true;
                this.FireCurrentStaffMemberButton.Visible = true;
                this.EditStaffMemberSalaryButton.Visible = true;
                this.ViewStaffMemberButton.Visible = true;
                this.AddNewAdministratorButton.Visible = true;
                this.RemoveAdministratorButton.Visible = true;
                this.ViewAllAdministratorsButton.Visible = true;
                this.EditAdministratorsSalaryButton.Visible = true;
            }
        }

        protected void ViewAllFeedBackButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/ViewFeedBack.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/ViewFeedBack.aspx','_newtab');", true);
        }

        protected void ViewAllComplaintsButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/ViewComplaints.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/ViewComplaints.aspx','_newtab');", true);
        }

        protected void AddNewStaffMemberButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/EditStaffMembers.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditStaffMembers.aspx','_newtab');", true);
        }

        protected void FireCurrentStaffMemberButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/EditStaffMembers.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditStaffMembers.aspx','_newtab');", true);
        }

        protected void ViewStaffMemberButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/EditStaffMembers.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditStaffMembers.aspx','_newtab');", true);
        }

        protected void EditStaffMemberSalaryButton_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/EditStaffMembers.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditStaffMembers.aspx','_newtab');", true);
        }

        protected void AddNewAdministratorButton_Click(object sender, EventArgs e)
        {
            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditAdministratorsInfo.aspx','_newtab');", true);
        }

        protected void RemoveAdministratorButton_Click(object sender, EventArgs e)
        {
            
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditAdministratorsInfo.aspx','_newtab');", true);

        }

        protected void ViewAllAdministratorsButton_Click(object sender, EventArgs e)
        {
           
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditAdministratorsInfo.aspx','_newtab');", true);

        }

        protected void EditAdministratorsSalaryButton_Click(object sender, EventArgs e)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/EditAdministratorsInfo.aspx','_newtab');", true);

        }

        protected void StatDataButton_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/Detailed Statistics','_newtab');", true);

        }

        protected void ManagerialStatButton_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/ManegerialStatistics.aspx','_newtab');", true);
        }

        protected void SpecialOccButton_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/Occasions.aspx','_newtab');", true);

        }

        protected void ServicesButton_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/Services.aspx','_newtab');", true);

        }

        protected void UpdateGuestStateButton_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('/IncomeOutcomeCapacityaspx.aspx','_newtab');", true);

        }
    }
}