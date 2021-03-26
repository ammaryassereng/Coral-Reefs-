using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class Services : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
                DataTable dt = ControllerObj.GetAllServicesNames();
                ServicesNamesDropDownList.DataSource = dt;
                ServicesNamesDropDownList.DataTextField = "ServiceName";
                ServicesNamesDropDownList.DataBind();             
                UpdateServiceNameDropDownList.DataSource = dt;
                UpdateServiceNameDropDownList.DataTextField = "ServiceName";
                UpdateServiceNameDropDownList.DataBind();
            }
        }


        protected void ViewAllServicesButton_Click1(object sender, EventArgs e)
        {
            DataTable dt = ControllerObj.ViewAllServices();
            ServicesGrid.DataSource = dt;
            ServicesGrid.DataBind();
        }

        protected void AddNewServiceButton_Click(object sender, EventArgs e)
        {
           
            if (ServiceNameTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a Valid Service Name" + "');", true);
                return;
            }
            if (!System.Text.RegularExpressions.Regex.IsMatch(ServiceNameTextBox.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Service Name textbox accepts only alphabetical characters" + "');", true);
                ServiceNameTextBox.Text.Remove(ServiceNameTextBox.Text.Length - 1);
                return;
            }
            if (ServicePriceTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Enter a Valid Service Price" + "');", true);
                return;
            }
            int result = ControllerObj.AddNewService(ServiceNameTextBox.Text, int.Parse(ServicePriceTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Adding New Service Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Adding New Service Succeeded" + "');", true);
            }
            DataTable dt = ControllerObj.GetAllServicesNames();
            ServicesNamesDropDownList.DataSource = dt;
            ServicesNamesDropDownList.DataTextField = "ServiceName";
            ServicesNamesDropDownList.DataBind();
            UpdateServiceNameDropDownList.DataSource = dt;
            UpdateServiceNameDropDownList.DataTextField = "ServiceName";
            UpdateServiceNameDropDownList.DataBind();
            ServiceNameTextBox.Text = String.Empty;
            ServicePriceTextBox.Text = String.Empty;
        }

        protected void RemoveServiceButton_Click(object sender, EventArgs e)
        {
            if (ServicesNamesDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Service Name Selected" + "');", true);
                return;
            }
            int result = ControllerObj.RemoveService(ServicesNamesDropDownList.Text);
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Service Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Removing of Service Succeeded" + "');", true);
            }
            DataTable dt = ControllerObj.GetAllServicesNames();
            ServicesNamesDropDownList.DataSource = dt;
            ServicesNamesDropDownList.DataTextField = "ServiceName";
            ServicesNamesDropDownList.DataBind();
            UpdateServiceNameDropDownList.DataSource = dt;
            UpdateServiceNameDropDownList.DataTextField = "ServiceName";
            UpdateServiceNameDropDownList.DataBind();
            if (dt == null)
            {
                ServicesNamesDropDownList.Items.Clear();
                UpdateServiceNameDropDownList.Items.Clear();

            }
        }

        protected void UpdateServicePriceButton_Click(object sender, EventArgs e)
        {
            if (NewPriceTextBox.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Price" + "');", true);
                return;
            }
            if (ServicesNamesDropDownList.Items.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Service Name selected" + "');", true);
                return;
            }
            int result = ControllerObj.UpdateServicePrice(UpdateServiceNameDropDownList.Text, int.Parse(NewPriceTextBox.Text));
            if (result == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Price of Service Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Updating Price  of Service Succeeded" + "');", true);
            }
            NewPriceTextBox.Text = String.Empty;
        }
    }
}