using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class ReservationInfo : System.Web.UI.Page
    {
        Controller ControllerObj;
        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            if (TextBox6.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid First Name" + "');", true);
                return;
            }
            if (TextBox7.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox7.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Minit" + "');", true);
                return;
            }
            if (TextBox8.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox8.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Last Name" + "');", true);
                return;
            }
            if (TextBox9.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox9.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            DataTable DT = ControllerObj.ViewSpecificReservationRequests(TextBox1.Text,TextBox6.Text,TextBox7.Text,TextBox8.Text,TextBox9.Text);
            if(DT == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " ERROR! Please Check the entered Reservation Info" + "');", true);
                return;
            }
            GridView1.DataSource = DT;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim(' ') == "" || TextBox2.Text.Trim(' ') == "" || Convert.ToDateTime(TextBox2.Text) > Convert.ToDateTime(TextBox3.Text) || Convert.ToDateTime(TextBox2.Text) < DateTime.Now)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Start Date and an End Date" + "');", true);
                return;
            }
            else
            {
                //DataTable DT = ControllerObj.Get_Availabe_Rooms(Convert.ToDateTime(TextBox2.Text), Convert.ToDateTime(TextBox3.Text));
                DataTable DT = ControllerObj.Get_Rooms(Convert.ToDateTime(TextBox2.Text), Convert.ToDateTime(TextBox3.Text), DropDownList2.Text, DropDownList3.Text);

                DropDownList1.DataSource = DT;
                DropDownList1.DataTextField = "RoomNumber";
                DropDownList1.DataBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            if (TextBox6.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid First Name" + "');", true);
                return;
            }
            if (TextBox7.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox7.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Minit" + "');", true);
                return;
            }
            if (TextBox8.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox8.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Last Name" + "');", true);
                return;
            }
            if (TextBox9.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox9.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            if (DropDownList1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            int res = ControllerObj.UpdateRmInReservationRequest(TextBox1.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, int.Parse(DropDownList1.Text));
            if(res == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Changing Reserved room Failed" + "');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Changing Reserved room succeded" + "');", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            if (TextBox6.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid First Name" + "');", true);
                return;
            }
            if (TextBox7.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox7.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Minit" + "');", true);
                return;
            }
            if (TextBox8.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox8.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Last Name" + "');", true);
                return;
            }
            if (TextBox9.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox9.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            if (TextBox10.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox10.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            if (TextBox11.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Phone Number" + "');", true);
                return;
            }
            int res = ControllerObj.UpdateContactInfroInReservationRequest(TextBox1.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text, TextBox11.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            if (TextBox6.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid First Name" + "');", true);
                return;
            }
            if (TextBox7.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox7.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Minit" + "');", true);
                return;
            }
            if (TextBox8.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox8.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Last Name" + "');", true);
                return;
            }
            if (TextBox9.Text.Trim(' ') == "" || !System.Text.RegularExpressions.Regex.IsMatch(TextBox9.Text, "^[a-zA-Z ]"))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            int res = ControllerObj.RemoveGuestFromReservationRequest(TextBox1.Text, TextBox6.Text, TextBox7.Text, TextBox8.Text, TextBox9.Text);
            if (res == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Cancelation Failed Please Check the entered info" + "');", true);
                return;
            }
            else 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Cancelation done successfully" + "');", true);
                return;
            }
        }
    }
}