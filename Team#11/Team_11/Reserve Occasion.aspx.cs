using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Team_11
{
    public partial class Reserve_Occasion : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
            if (!Page.IsPostBack)
            {
               
                DataTable dt = ControllerObj.GetAllOccasionsNames();
                OccComb.DataSource = dt;
                OccComb.DataTextField = "OccasionName";
                OccComb.DataBind();
            }
        }

        protected void OccReq_Click(object sender, EventArgs e)
        {
            if (OccComb.Items.Count==0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " No Occasion is selected " + "');", true);
                return;
            }
            if (Convert.ToDateTime(OccDate.Text) <= DateTime.Now)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " invalid Date " + "');", true);
                return;
            }
            int price = ControllerObj.GetOccPrice(OccComb.Text);
            int maxcap = ControllerObj.GetOccMaxCap(OccComb.Text);
            int R = ControllerObj.InsertSpecOcc(Convert.ToDateTime(OccDate.Text), OccComb.Text, maxcap, int.Parse(OccDur.Text), price, HostID.Text, OccHostName.Text, OccHostMinit.Text, OccHostLast.Text, PhoneNo.Text);
          
            if (R == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Unfortunately, There is Another Occasion On The Same Day" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " your request will be checked" + "');", true);
            }

        }
        protected void OccDur_TextChanged(object sender, EventArgs e)
        {

        }

        protected void HostID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void OccHostName_TextChanged(object sender, EventArgs e)
        {

        }


    }
}