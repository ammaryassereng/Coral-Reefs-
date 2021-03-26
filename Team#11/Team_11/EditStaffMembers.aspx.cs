using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class EditStaffMembers : System.Web.UI.Page
    {
        Controller ControllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllManagersSSN();
                DataTable dt1 = ControllerObj.GetAllStaffMemberSSN();
                SSNDropDownList.DataSource = dt1;
                SSNDropDownList.DataTextField = "SSN";
                SSNDropDownList.DataBind();
                StaffMemberSSNDropDownList.DataSource = dt1;
                StaffMemberSSNDropDownList.DataTextField = "SSN";
                StaffMemberSSNDropDownList.DataBind();
                UpdateContactStaffMemberSSNDropDownList.DataSource = dt1;
                UpdateContactStaffMemberSSNDropDownList.DataTextField = "SSN";
                UpdateContactStaffMemberSSNDropDownList.DataBind();
                WorkInfoSSNDropDownList.DataSource = dt1;
                WorkInfoSSNDropDownList.DataTextField = "SSN";
                WorkInfoSSNDropDownList.DataBind();
                DataTable dt2 = ControllerObj.GetAllDepNum();
                DepDropDownList.DataSource = dt2;
                DepDropDownList.DataTextField = "Dno";
                DepDropDownList.DataBind();
                NewDepDropDownList.DataSource = dt2;
                NewDepDropDownList.DataTextField = "Dno";
                
                NewDepDropDownList.DataBind();
                NewDepDropDownList.Items.Insert(0, "");
            }

        }

        protected void AddStaffMemberButton_Click(object sender, EventArgs e)
        {
            if(DepDropDownList.Items.Count==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Choose Department" + "');", true);
                return;

            }
            DataTable dt = ControllerObj.GetMgrSSNofDePNum(int.Parse(DepDropDownList.Text));
            int MgrSSN = int.Parse(dt.Rows[0]["Mgr_SSN"].ToString());
            if (FNameTextBox.Text.Trim(' ') == "" || MinitTextBox.Text.Trim(' ') == "" || LNameTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Name" + "');", true);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(FNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " FName textbox accepts only alphabetical characters" + "');", true);
                FNameTextBox.Text.Remove(FNameTextBox.Text.Length - 1);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(MinitTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Minit textbox accepts only alphabetical characters" + "');", true);
                FNameTextBox.Text.Remove(FNameTextBox.Text.Length - 1);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(LNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " LName textbox accepts only alphabetical characters" + "');", true);
                LNameTextBox.Text.Remove(LNameTextBox.Text.Length - 1);
                return;
            }

            else if (BDateTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Birth Date" + "');", true);
                return;
            }
            else if (NationalityTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Nationality" + "');", true);
                return;
            }
            else if (!System.Text.RegularExpressions.Regex.IsMatch(NationalityTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Nationality textbox accepts only alphabetical characters" + "');", true);
                NationalityTextBox.Text.Remove(NationalityTextBox.Text.Length - 1);
                return;
            }
            else if (EmailTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Email" + "');", true);
                return;
            }
            else if (PhoneNumTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Phone Number" + "');", true);
                return;
            }
            else if (AddressTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Address" + "');", true);
                return;
            }
            else if (SSNTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter SSN" + "');", true);
                return;
            }
            else if (DepDropDownList.Items.Count==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Department to select" + "');", true);
                return;
            }
            else if (SalaryTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Salary" + "');", true);
                return;
            }
            else if (WorkHrsTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Work Hours" + "');", true);
                return;
            }
            else if (PasswordTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Password" + "');", true);
                return;
            }
            else if (ControllerObj.GetAlreadyExistingadmin(int.Parse(SSNTextBox.Text), EmailTextBox.Text, (PasswordTextBox.Text)) != 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " an Administrator already exists with the entered ssn, email or password " + "');", true);
                return;
            }
            else
            {

                int result = ControllerObj.AddNewStaffMember(int.Parse(SSNTextBox.Text), FNameTextBox.Text, MinitTextBox.Text, LNameTextBox.Text, NationalityTextBox.Text, GenderDropDownList1.Text, Convert.ToDateTime(BDateTextBox.Text), EmailTextBox.Text, PasswordTextBox.Text, (PhoneNumTextBox.Text), AddressTextBox.Text, int.Parse(SalaryTextBox.Text), MgrSSN, int.Parse(DepDropDownList.Text), int.Parse(WorkHrsTextBox.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Staff Member Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Staff Member Succeeded" + "');", true);
                    FNameTextBox.Text = String.Empty;
                    MinitTextBox.Text = String.Empty;
                    LNameTextBox.Text = String.Empty;
                    BDateTextBox.Text = String.Empty;
                    NationalityTextBox.Text = String.Empty;
                    EmailTextBox.Text = String.Empty;
                    PhoneNumTextBox.Text = String.Empty;
                    AddressTextBox.Text = String.Empty;
                    SSNTextBox.Text = String.Empty;
                    SalaryTextBox.Text = String.Empty;
                    WorkHrsTextBox.Text = String.Empty;
                    PasswordTextBox.Text = String.Empty;
                }

            }
            DataTable dt1 = ControllerObj.GetAllStaffMemberSSN();
            SSNDropDownList.DataSource = dt1;
            SSNDropDownList.DataTextField = "SSN";
            SSNDropDownList.DataBind();
            StaffMemberSSNDropDownList.DataSource = dt1;
            StaffMemberSSNDropDownList.DataTextField = "SSN";
            StaffMemberSSNDropDownList.DataBind();
            UpdateContactStaffMemberSSNDropDownList.DataSource = dt1;
            UpdateContactStaffMemberSSNDropDownList.DataTextField = "SSN";
            UpdateContactStaffMemberSSNDropDownList.DataBind();
            WorkInfoSSNDropDownList.DataSource = dt1;
            WorkInfoSSNDropDownList.DataTextField = "SSN";
            WorkInfoSSNDropDownList.DataBind();
        }

        protected void RemoveStaffMemberButton_Click(object sender, EventArgs e)
        {
            if (SSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Staff Member selected" + "');", true);
                return;
            }
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
            UpdateContactStaffMemberSSNDropDownList.DataSource = dt1;
            UpdateContactStaffMemberSSNDropDownList.DataTextField = "SSN";
            UpdateContactStaffMemberSSNDropDownList.DataBind();
            WorkInfoSSNDropDownList.DataSource = dt1;
            WorkInfoSSNDropDownList.DataTextField = "SSN";
            WorkInfoSSNDropDownList.DataBind();
            if (dt1 == null)
            {
                SSNDropDownList.Items.Clear();
                StaffMemberSSNDropDownList.Items.Clear();
                UpdateContactStaffMemberSSNDropDownList.Items.Clear();
                WorkInfoSSNDropDownList.Items.Clear();

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
            if (StaffMemberSSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Staff Member selected" + "');", true);
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

        protected void UpdateContactInfoButton_Click(object sender, EventArgs e)
        {
            if (UpdateContactStaffMemberSSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Staff Member selected" + "');", true);
                return;
            }
            if(UpdateAddressTextBox.Text.Trim(' ') == "" && UpdatePhoneTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter Address or Phone Number" + "');", true);
                return;
            }
            else if (UpdateAddressTextBox.Text.Trim(' ') == "" && UpdatePhoneTextBox.Text.Trim(' ') != "")
            {
                int result = ControllerObj.UpdateStaffMemberPhoneNum(int.Parse(UpdateContactStaffMemberSSNDropDownList.Text), UpdatePhoneTextBox.Text);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Phone Number Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Phone Number Succeeded" + "');", true);
                }
            }
            else if (UpdatePhoneTextBox.Text.Trim(' ') == "" && UpdateAddressTextBox.Text.Trim(' ') != "")
            {
                int result = ControllerObj.UpdateStaffMemberAddress(int.Parse(UpdateContactStaffMemberSSNDropDownList.Text), UpdateAddressTextBox.Text);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Address Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Address Succeeded" + "');", true);
                }
            }
            else
            {
                int result = ControllerObj.UpdateStaffMemberPhoneNum(int.Parse(UpdateContactStaffMemberSSNDropDownList.Text), UpdatePhoneTextBox.Text);
                int result2 = ControllerObj.UpdateStaffMemberAddress(int.Parse(UpdateContactStaffMemberSSNDropDownList.Text), UpdateAddressTextBox.Text);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Contacts Info Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Contacts Info Succeeded" + "');", true);                 
                }

            }
            UpdatePhoneTextBox.Text = String.Empty;
            UpdateAddressTextBox.Text = String.Empty;
        }

        protected void UpdateWorkInfoButton_Click(object sender, EventArgs e)
        {
            
            if (WorkInfoSSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Staff Member selected" + "');", true);
                return;
            }
            if (UpdatedWorkHrsTextBox.Text.Trim(' ') == "" && NewDepDropDownList.Text.Trim(' ') == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Select Department or Enter Work Hours" + "');", true);
                    return;
                }
            if (UpdatedWorkHrsTextBox.Text.Trim(' ') == "" && NewDepDropDownList.Text.Trim(' ') != "")
            {
                DataTable dt = ControllerObj.GetMgrSSNofDePNum(int.Parse(NewDepDropDownList.Text));
                int MgrSSN = int.Parse(dt.Rows[0]["Mgr_SSN"].ToString());

                int result = ControllerObj.UpdateStaffMemberDepNum(int.Parse(WorkInfoSSNDropDownList.Text), int.Parse(NewDepDropDownList.Text),MgrSSN);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Department Number Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Department Number Succeeded" + "');", true);
                }
            }
            else if (NewDepDropDownList.Text.Trim(' ') == "" && UpdatedWorkHrsTextBox.Text.Trim(' ') != "")
            {
                int result = ControllerObj.UpdateStaffMemberWorkHrs(int.Parse(WorkInfoSSNDropDownList.Text), int.Parse(UpdatedWorkHrsTextBox.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Work Hours Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Work Hours Succeeded" + "');", true);
                }
            }
            else
            {
                DataTable dt = ControllerObj.GetMgrSSNofDePNum(int.Parse(NewDepDropDownList.Text));
                int MgrSSN = int.Parse(dt.Rows[0]["Mgr_SSN"].ToString());
                int result = ControllerObj.UpdateStaffMemberDepNum(int.Parse(WorkInfoSSNDropDownList.Text), int.Parse(NewDepDropDownList.Text), MgrSSN);
                int result2 = ControllerObj.UpdateStaffMemberWorkHrs(int.Parse(WorkInfoSSNDropDownList.Text), int.Parse(UpdatedWorkHrsTextBox.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Work Info Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Work Info Succeeded" + "');", true);
                }

            }
            UpdatedWorkHrsTextBox.Text = String.Empty;
         
        }

        protected void MinitTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
