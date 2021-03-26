using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class Occasions : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllOccasionsNames();
                OccasionDropDownList.DataSource = dt;
                OccasionDropDownList.DataTextField = "OccasionName";
                OccasionDropDownList.DataBind();
                UpdateOccasionNameDropDownList.DataSource = dt;
                UpdateOccasionNameDropDownList.DataTextField = "OccasionName";
                UpdateOccasionNameDropDownList.DataBind();
            }
        }

        protected void ViewAllOccasionsButton_Click(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllOccasions();
            OccasionsGrid.DataSource = dt;
            OccasionsGrid.DataBind();
        }

        protected void AddOccasionButton_Click(object sender, EventArgs e)
        {
            if (OccasionNameTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter an Occasion Name" + "');", true);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(OccasionNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Occasion Name textbox accepts only alphabetical characters" + "');", true);
                OccasionNameTextBox.Text.Remove(OccasionNameTextBox.Text.Length - 1);
                return;
            }
            if (PriceTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter an Occasion Price" + "');", true);
                return;
            }
            int result = ControllerObj.AddNewOccasion(OccasionNameTextBox.Text, int.Parse(PriceTextBox.Text), int.Parse(MaxHallCapacityTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Adding New Occasion Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Adding New Occasion Succeeded" + "');", true);
            }
            OccasionNameTextBox.Text = String.Empty;
            PriceTextBox.Text = String.Empty;
            MaxHallCapacityTextBox.Text = String.Empty;
            DataTable dt = ControllerObj.GetAllOccasionsNames();
            OccasionDropDownList.DataSource = dt;
            OccasionDropDownList.DataTextField = "OccasionName";
            OccasionDropDownList.DataBind();
            UpdateOccasionNameDropDownList.DataSource = dt;
            UpdateOccasionNameDropDownList.DataTextField = "OccasionName";
            UpdateOccasionNameDropDownList.DataBind();
        }

        protected void RemoveOccasionButton_Click(object sender, EventArgs e)
        {
            if (OccasionDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Service Name Selected" + "');", true);
                return;
            }
            int result = ControllerObj.RemoveOccasion(OccasionDropDownList.Text);
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Occasion Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Occasion Succeeded" + "');", true);
            }
            DataTable dt = ControllerObj.GetAllOccasionsNames();
            OccasionDropDownList.DataSource = dt;
            OccasionDropDownList.DataTextField = "OccasionName";
            OccasionDropDownList.DataBind();
            UpdateOccasionNameDropDownList.DataSource = dt;
            UpdateOccasionNameDropDownList.DataTextField = "OccasionName";
            UpdateOccasionNameDropDownList.DataBind();
            if (dt == null)
            {
                OccasionDropDownList.Items.Clear();
                UpdateOccasionNameDropDownList.Items.Clear();

            }
        }

        protected void UpdateOccasionPriceButton_Click(object sender, EventArgs e)
        {
            if (NewPriceTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter an Occasion Price" + "');", true);
                return;
            }
            if (UpdateOccasionNameDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Occasion Name selected" + "');", true);
                return;
            }
            int result = ControllerObj.UpdateOccasionPrice(UpdateOccasionNameDropDownList.Text, int.Parse(NewPriceTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Price of Occasion Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Price  of Occasion Succeeded" + "');", true);
            }
            NewPriceTextBox.Text = String.Empty;
        }

        protected void UpdateOccMaxCapButton_Click(object sender, EventArgs e)
        {
            if (NewMaxCapTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Max. Hall Capacity" + "');", true);
                return;
            }
            if (UpdateOccasionNameDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Occasion Name selected" + "');", true);
                return;
            }
            int result = ControllerObj.UpdateOccasionMaxCap(UpdateOccasionNameDropDownList.Text, int.Parse(NewMaxCapTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Max. Hall Capacity of Occasion Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Max. Hall Capacity  of Occasion Succeeded" + "');", true);
            }
            NewMaxCapTextBox.Text = String.Empty;
        }
    }
}