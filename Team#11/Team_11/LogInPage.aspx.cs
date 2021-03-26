using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Team_11
{
    public partial class LogInPage : System.Web.UI.Page
    {
        Controller ControllerObj;

        protected void Page_Load(object sender, EventArgs e)
        {
            ControllerObj = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid Email" + "');", true);
                return;
            }
            if(TextBox2.Text.Trim(' ') == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please Enter a valid password" + "');", true);
                return;
            }
            DataTable DT = ControllerObj.GetDepartmentOfStaff(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text));
            if(DT != null)
            {
                int Dno = int.Parse(DT.Rows[0]["Department"].ToString());
                if(Dno == 3)
                {
                    Response.Redirect("/Receptionist.aspx");
                }
                else
                {
                    Response.Redirect("/RoomService.aspx");
                }
            }
            int Count = ControllerObj.GetCountOfAdmins(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text));
            if(Count != 0)
            {
                DataTable dt = ControllerObj.GetMainAdmin();
                if(int.Parse(TextBox1.Text) != int.Parse(dt.Rows[0]["SSN"].ToString()))
                {
                    //Administrators admin = new Administrators();
                    Session["role"] = "nonmain";
                    Response.Redirect("/Administrators.aspx");
                }
                Session["role"] = "main";
                Response.Redirect("/Administrators.aspx");
            }
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + " Please check the email and password" + "');", true);
        }
    }
}