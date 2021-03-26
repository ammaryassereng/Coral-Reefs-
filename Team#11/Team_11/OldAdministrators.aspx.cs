using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class OldAdministrators : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();

            TotalIncomeTextBox.Enabled = false;
            TotalOutcomeTextBox.Enabled = false;
            NumberofRoomsTextBox.Enabled = false;
            CurrentGuestStateTextBox.Enabled = false;
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllManagersSSN();
                MgrSSNDropDownList1.DataSource = dt;
                MgrSSNDropDownList1.DataTextField = "SSN";
                MgrSSNDropDownList1.DataBind();
                DataTable dt1 = ControllerObj.GetAllStaffMemberSSN();
                SSNDropDownList.DataSource = dt1;
                SSNDropDownList.DataTextField = "SSN";
                SSNDropDownList.DataBind();
                StaffMemberSSNDropDownList.DataSource = dt1;
                StaffMemberSSNDropDownList.DataTextField = "SSN";
                StaffMemberSSNDropDownList.DataBind();
                DataTable dt2 = ControllerObj.GetAllNationalIDofAllCurrentGuests();
                CurrentGuestNationalIDDropDownList.DataSource = dt2;
                CurrentGuestNationalIDDropDownList.DataTextField = "NationalID";
                CurrentGuestNationalIDDropDownList.DataBind();
            }


        }

        protected void ViewFeedBackButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllFeedBacks();
            FeedBackAndComplaintsGrid.DataSource = dt;
            FeedBackAndComplaintsGrid.DataBind();
        }

        protected void ViewComplaintsButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllComplaints();
            FeedBackAndComplaintsGrid.DataSource = dt;
            FeedBackAndComplaintsGrid.DataBind();
        }

        protected void AddStaffMemberButton_Click(object sender, EventArgs e)
        {

            if (FNameTextBox.Text.Trim(' ') == "" || MinitTextBox.Text.Trim(' ') == "" || LNameTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Name" + "');", true);
                return;
            }

            else if (BDateTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Birth Date" + "');", true);
                return;
            }
            else if (EmailTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            else if (PhoneNumTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Phone Number" + "');", true);
                return;
            }
            else if (AddressTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Address" + "');", true);
                return;
            }
            else if (SSNTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid SSN" + "');", true);
                return;
            }
            else if (DepartmentTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Department" + "');", true);
                return;
            }
            else if (SalaryTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Salary" + "');", true);
                return;
            }
            else if (WorkHrsTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Work Hours" + "');", true);
                return;
            }
            else if (PasswordTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Password" + "');", true);
                return;
            }

            else
            {

                int result = ControllerObj.AddNewStaffMember(int.Parse(SSNTextBox.Text), FNameTextBox.Text, MinitTextBox.Text, LNameTextBox.Text, NationalityTextBox.Text, GenderDropDownList1.Text, Convert.ToDateTime(BDateTextBox.Text), EmailTextBox.Text, PasswordTextBox.Text, (PhoneNumTextBox.Text), AddressTextBox.Text, int.Parse(SalaryTextBox.Text), int.Parse(MgrSSNDropDownList1.Text), int.Parse(DepartmentTextBox.Text), int.Parse(WorkHrsTextBox.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Staff Member Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Staff Member Succeeded" + "');", true);

                }

            }
        }

        protected void RemoveStaffMemberButton_Click(object sender, EventArgs e)
        {

            int result = ControllerObj.RemoveStaffMember(int.Parse(SSNDropDownList.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Staff Member Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Staff Member Succeeded" + "');", true);
            }
            DataTable dt1 = ControllerObj.GetAllStaffMemberSSN();
            SSNDropDownList.DataSource = dt1;
            SSNDropDownList.DataTextField = "SSN";
            SSNDropDownList.DataBind();
            StaffMemberSSNDropDownList.DataSource = dt1;
            StaffMemberSSNDropDownList.DataTextField = "SSN";
            StaffMemberSSNDropDownList.DataBind();
            if (dt1 == null)
            {
                SSNDropDownList.Items.Clear();
                StaffMemberSSNDropDownList.Items.Clear();

            }
        }

        protected void ViewStaffMemberButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllStaffMembers();
            StaffMemberGrid.DataSource = dt;
            StaffMemberGrid.DataBind();
        }

        protected void UpdateSalaryButton_Click(object sender, EventArgs e)
        {

            if (NewSalaryTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid salary" + "');", true);
                return;
            }
            int result = ControllerObj.UpdateStaffMemberSalary(int.Parse(StaffMemberSSNDropDownList.Text), int.Parse(NewSalaryTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Salary of Staff Member Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Salary  of Staff Member Succeeded" + "');", true);
            }

        }

        protected void NumberofRoomsButton_Click(object sender, EventArgs e)
        {
            NumberofRoomsTextBox.Text = ControllerObj.GetNummberofVacantandOccupiedRooms(RoomStateDropDownList.Text).ToString();
        }

        protected void GetCurrentGuestStateButton_Click(object sender, EventArgs e)
        {

            DataTable dt = ControllerObj.GettheStateOfCurrentGuest(CurrentGuestNationalIDDropDownList.Text);
            CurrentGuestStateTextBox.Text = dt.Rows[0]["State"].ToString();

        }

        protected void UpdateCurrentGuestStateButton_Click(object sender, EventArgs e)
        {
            int result = ControllerObj.UpdateGuestState(CurrentGuestNationalIDDropDownList.Text, NewStateDropDownList.Text);
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Current Guest State Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Current Guest State Succeeded" + "');", true);
            }
        }

        protected void IncomeandOutcomeButton_Click(object sender, EventArgs e)
        {

        }
    }
}