using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class EditAdministratorsInfo : System.Web.UI.Page
    {
        Controller ControllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllManagersSSN();
                MgrSSNDropDownList.DataSource = dt;
                MgrSSNDropDownList.DataTextField = "SSN";
                MgrSSNDropDownList.DataBind();
                //MgrSSNDropDownList.Items.Insert(0, "");
                ChangeSSNDropDownList.DataSource = dt;
                ChangeSSNDropDownList.DataTextField = "SSN";
                ChangeSSNDropDownList.DataBind();
                ContactSSNDropDownList.DataSource = dt;
                ContactSSNDropDownList.DataTextField = "SSN";
                ContactSSNDropDownList.DataBind();
                WorkSSNDropDownList.DataSource = dt;
                WorkSSNDropDownList.DataTextField = "SSN";
                WorkSSNDropDownList.DataBind();

            }
        }
        protected void AddNewAdministratorButton_Click(object sender, EventArgs e)
        {

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
            if (!System.Text.RegularExpressions.Regex.IsMatch(LNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " LName textbox accepts only alphabetical characters" + "');", true);
                LNameTextBox.Text.Remove(LNameTextBox.Text.Length - 1);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(MinitTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Minit textbox accepts only alphabetical characters" + "');", true);
                FNameTextBox.Text.Remove(FNameTextBox.Text.Length - 1);
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
            else if (SalaryTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Salary" + "');", true);
                return;
            }

            else if (PasswordTextbox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Password" + "');", true);
                return;
            }
            else if (ControllerObj.GetAlreadyExistingstaff(int.Parse(SSNTextBox.Text), EmailTextBox.Text, (PasswordTextbox.Text)) != 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " A Staff Member already exists with the entered ssn, email or password " + "');", true);
                return;
            }

            else
            {

                int result = ControllerObj.AddNewAdministrator(int.Parse(SSNTextBox.Text), FNameTextBox.Text, MinitTextBox.Text, LNameTextBox.Text, GenderDropDownList.Text, NationalityTextBox.Text,  Convert.ToDateTime(BDateTextBox.Text), AddressTextBox.Text, PhoneNumTextBox.Text, EmailTextBox.Text, PasswordTextbox.Text,   int.Parse(SalaryTextBox.Text), int.Parse(MgrSSNDropDownList.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Administrator Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Insertion of Administrator Succeeded" + "');", true);

                }

            }
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
            DataTable dt = ControllerObj.GetAllManagersSSN();
            MgrSSNDropDownList.DataSource = dt;
            MgrSSNDropDownList.DataTextField = "SSN";
            MgrSSNDropDownList.DataBind();
            MgrSSNDropDownList.Items.Insert(0, "");
            ChangeSSNDropDownList.DataSource = dt;
            ChangeSSNDropDownList.DataTextField = "SSN";
            ChangeSSNDropDownList.DataBind();
            ContactSSNDropDownList.DataSource = dt;
            ContactSSNDropDownList.DataTextField = "SSN";
            ContactSSNDropDownList.DataBind();
            WorkSSNDropDownList.DataSource = dt;
            WorkSSNDropDownList.DataTextField = "SSN";
            WorkSSNDropDownList.DataBind();
        }

        //protected void RemoveAdministratorButton_Click(object sender, EventArgs e)
        //{
        //    if (RemoveSSNDropDownList.Items.Count == 0)
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Administrator selected" + "');", true);
        //        return;
        //    }
        //    int result = ControllerObj.RemoveAdministrator(int.Parse(RemoveSSNDropDownList.Text));
        //    if (result == 0)
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Administrator Failed" + "');", true);
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Administrator Succeeded" + "');", true);
        //    }
        //    DataTable dt = ControllerObj.GetAllManagersSSN();
        //    MgrSSNDropDownList.DataSource = dt;
        //    MgrSSNDropDownList.DataTextField = "SSN";
        //    MgrSSNDropDownList.DataBind();
        //    MgrSSNDropDownList.Items.Insert(0, "");
        //    RemoveSSNDropDownList.DataSource = dt;
        //    RemoveSSNDropDownList.DataTextField = "SSN";
        //    RemoveSSNDropDownList.DataBind();
        //    ContactSSNDropDownList.DataSource = dt;
        //    ContactSSNDropDownList.DataTextField = "SSN";
        //    ContactSSNDropDownList.DataBind();
        //    WorkSSNDropDownList.DataSource = dt;
        //    WorkSSNDropDownList.DataTextField = "SSN";
        //    WorkSSNDropDownList.DataBind();
        //    if (dt == null)
        //    {
        //        MgrSSNDropDownList.Items.Clear();
        //        RemoveSSNDropDownList.Items.Clear();
        //        ContactSSNDropDownList.Items.Clear();
        //        WorkSSNDropDownList.Items.Clear();

        //    }

        //}

        protected void ViewAdmininstratorButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllAdministrator();
            AdministratorGrid.DataSource = dt;
            AdministratorGrid.DataBind();
        }

        protected void UpdateContactInfoButton_Click(object sender, EventArgs e)
        {
            if (ContactSSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Administrator is selected" + "');", true);
                return;
            }
            if (ContactAddressTextBox.Text.Trim(' ') == "" && ContactPhoneNumTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter Address or Phone Number" + "');", true);
                return;
            }
            else if (ContactAddressTextBox.Text.Trim(' ') == "" && ContactPhoneNumTextBox.Text.Trim(' ') != "")
            {
                int result = ControllerObj.UpdateAdministratorsPhoneNum(int.Parse(ContactSSNDropDownList.Text), ContactPhoneNumTextBox.Text);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Phone Number Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Phone Number Succeeded" + "');", true);
                }
            }
            else if (ContactPhoneNumTextBox.Text.Trim(' ') == "" && ContactAddressTextBox.Text.Trim(' ') != "")
            {
                int result = ControllerObj.UpdateAdministratorsAddress(int.Parse(ContactSSNDropDownList.Text), ContactAddressTextBox.Text);
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
                int result = ControllerObj.UpdateAdministratorsPhoneNum(int.Parse(ContactSSNDropDownList.Text), ContactPhoneNumTextBox.Text);
                int result2 = ControllerObj.UpdateAdministratorsAddress(int.Parse(ContactSSNDropDownList.Text), ContactAddressTextBox.Text);
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Contacts Info Failed" + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Contacts Info Succeeded" + "');", true);
                }

            }
            ContactPhoneNumTextBox.Text = String.Empty;
            ContactAddressTextBox.Text = String.Empty;
        }

        protected void UpdateSalaryButton_Click(object sender, EventArgs e)
        {
            if (NewSalaryTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid salary" + "');", true);
                return;
            }
            if (WorkSSNDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Staff Member selected" + "');", true);
                return;
            }
            int result = ControllerObj.UpdateAdministratorSalary(int.Parse(WorkSSNDropDownList.Text), int.Parse(NewSalaryTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Salary of Administrator Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Salary  of Administrator Succeeded" + "');", true);
            }
        }

        protected void ChangeAdministratorButton_Click(object sender, EventArgs e)
        {
            if (ChangeFnameTextBox.Text.Trim(' ') == "" || ChangeMinitTextBox.Text.Trim(' ') == "" || ChangeLNameTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Name" + "');", true);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(ChangeFnameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " FName textbox accepts only alphabetical characters" + "');", true);
                FNameTextBox.Text.Remove(FNameTextBox.Text.Length - 1);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(ChangeLNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " LName textbox accepts only alphabetical characters" + "');", true);
                LNameTextBox.Text.Remove(LNameTextBox.Text.Length - 1);
                return;
            }

            else if (ChangeBdateTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Birth Date" + "');", true);
                return;
            }
            else if (ChangeNationalityTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Nationality" + "');", true);
                return;
            }
            else if (!System.Text.RegularExpressions.Regex.IsMatch(ChangeNationalityTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Nationality textbox accepts only alphabetical characters" + "');", true);
                NationalityTextBox.Text.Remove(NationalityTextBox.Text.Length - 1);
                return;
            }
            else if (ChangeEmailTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Email" + "');", true);
                return;
            }
            else if (ChangePhoneTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Phone Number" + "');", true);
                return;
            }
            else if (ChangeAddressTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter Your Address" + "');", true);
                return;
            }



            else if (ChangePassTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Password" + "');", true);
                return;
            }

            else
            {

                int result = ControllerObj.ChageAdministrator( ChangeFnameTextBox.Text, ChangeMinitTextBox.Text, ChangeLNameTextBox.Text, ChangeGenderDropDownList.Text,  Convert.ToDateTime(ChangeBdateTextBox.Text), ChangeNationalityTextBox.Text,    ChangeEmailTextBox.Text, ChangePhoneTextBox.Text, ChangeAddressTextBox.Text, ChangePassTextBox.Text,  int.Parse(ChangeSSNDropDownList.Text));
                if (result == 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Changing of Administrator failed " + "');", true);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Changing of Administrator Succeeded" + "');", true);

                }

            }
        }
    }
}