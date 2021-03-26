using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team_11
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Controller ControllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable DT = ControllerObj.Get_Vacant_Rooms();
            
            
        }


        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //DataTable DT = ControllerObj.Get_Availabe_Rooms(Calendar1.SelectedDate, Calendar2.SelectedDate);
            //GridView1.DataSource = DT;
            //GridView1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim(' ') == "" || TextBox2.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Start Date and an End Date" + "');", true);
                return;
            }
            else
            {
                DataTable DT = ControllerObj.Get_Availabe_Rooms(Convert.ToDateTime(TextBox1.Text), Convert.ToDateTime(TextBox1.Text));
                GridView1.DataSource = DT;
                GridView1.DataBind();
            }
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text.Trim(' ') == "" || TextBox12.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Start Date and an End Date" + "');", true);
                return;
            }
            DataTable DT = ControllerObj.Get_Rooms(Convert.ToDateTime(TextBox11.Text), Convert.ToDateTime(TextBox12.Text), DropDownList1.Text, DropDownList2.Text);
            DropDownList3.DataSource = DT;
            DropDownList3.DataTextField = "RoomNumber";
            DropDownList3.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(TextBox3.Text.Trim(' ')=="")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid National ID" + "');", true);
                return;
            }
            else if (TextBox4.Text.Trim(' ') == "" || TextBox5.Text.Trim(' ') == "" || TextBox6.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Name" + "');", true);
                return;
            }
            else if (TextBox7.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Nationality" + "');", true);
                return;
            }
            else if (TextBox8.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Age" + "');", true);
                return;
            }
            else if (TextBox9.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Email" + "');", true);
                return;
            }
            else if (TextBox10.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a valid Phone Number" + "');", true);
                return;
            }
            else if (TextBox11.Text.Trim(' ') == "" || TextBox12.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Start Date and an End Date" + "');", true);
                return;
            }
            else if (DropDownList3.Text.Trim(' ') == "" )
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please enter a Room Number" + "');", true);
                return;
            }
            else
            {
                if (TextBox13.Text.Trim(' ') == "")
                {
                    int DT = ControllerObj.RequestNewReservation(int.Parse(TextBox3.Text), TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, int.Parse(TextBox8.Text), TextBox9.Text, int.Parse(TextBox10.Text), int.Parse(DropDownList3.Text), Convert.ToDateTime(TextBox11.Text), Convert.ToDateTime(TextBox12.Text));
                }
                else
                {
                    int DT = ControllerObj.RequestReservation(int.Parse(TextBox3.Text), TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, int.Parse(TextBox8.Text), TextBox9.Text, int.Parse(TextBox10.Text), int.Parse(TextBox13.Text), int.Parse(DropDownList3.Text), Convert.ToDateTime(TextBox11.Text), Convert.ToDateTime(TextBox12.Text));
                }
                
            }
        }



        //protected void OnSubmit(object sender, EventArgs e)
        //{
        //    string dt = Request.Form[txtDate.UniqueID];
        //    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Selected Date: " + dt + "');", true);

        //}
    }
}