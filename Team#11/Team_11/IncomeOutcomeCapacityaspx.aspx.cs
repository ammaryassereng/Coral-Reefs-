using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class IncomeOutcomeCapacityaspx : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();

            TotalIncomeTextBox.Enabled = false;
            TotalOutcomeTextBox.Enabled = false;
            CurrentGuestStateTextBox.Enabled = false;
            ProfitTextBox.Enabled = false;
            if (!Page.IsPostBack)
            {
                
                DataTable dt = ControllerObj.GetAllNationalIDofAllCurrentGuests();
                CurrentGuestNationalIDDropDownList.DataSource = dt;
                CurrentGuestNationalIDDropDownList.DataTextField = "NationalID";
                CurrentGuestNationalIDDropDownList.DataBind();
            }

        }



        protected void GetCurrentGuestStateButton_Click(object sender, EventArgs e)
        {
            if(CurrentGuestNationalIDDropDownList.Items.Count==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a valid National ID" + "');", true);
                return;
            }
            DataTable dt = ControllerObj.GettheStateOfCurrentGuest(CurrentGuestNationalIDDropDownList.Text);
            CurrentGuestStateTextBox.Text = dt.Rows[0]["State"].ToString();

        }

        protected void UpdateCurrentGuestStateButton_Click(object sender, EventArgs e)
        {
            if (CurrentGuestNationalIDDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a valid National ID" + "');", true);
                return;
            }
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
            int result = 0;
            int res = ControllerObj.GetExistingBill(int.Parse(MonthDropDownList.Text));
            if(res != 0)
            {
                result = ControllerObj.GetIncome(int.Parse(MonthDropDownList.Text));
                if (result == 0)
                {
                    TotalIncomeTextBox.Text = "0";
                }
                else
                {
                    TotalIncomeTextBox.Text = result.ToString();
                }
            }
            else
            {
                result = 0;
                TotalIncomeTextBox.Text = "0";
            }
            int r = ControllerObj.GetTotalAdministratorsSalary();
            int r2 = ControllerObj.GetTotalStaffSalary();
            int TotalOutcome =r+r2;
            TotalOutcomeTextBox.Text = TotalOutcome.ToString();
            ProfitTextBox.Text = (result - TotalOutcome).ToString();
        }

        
    }
}