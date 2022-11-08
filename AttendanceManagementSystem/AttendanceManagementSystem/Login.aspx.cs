using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Teacher where TUserID='" + TextBox1.Text + "' and TPassword='" + TextBox2.Text + "' ",con);

            SqlConnection con1 = new SqlConnection(str);
            SqlDataAdapter sda1 = new SqlDataAdapter("SELECT * FROM Student where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con1);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);

            if (TextBox1.Text=="Admin" && TextBox2.Text=="123")
            {
                Response.Redirect("Admin_Home.aspx");
            }
            else if(dt.Rows.Count==1)
            {
                Session["TeacherID"] = dt.Rows[0][0].ToString(); 
                Session["TeacherName"] = dt.Rows[0][1].ToString();
                Session["TUserID"] = TextBox1.Text;
                Response.Redirect("Teacher_Home.aspx");
            }

            else if (dt1.Rows.Count == 1)
            {
                Session["StudentEmail"] = TextBox1.Text;
                int sid = Convert.ToInt32(dt1.Rows[0][0]);
                Session["SiD"] = sid;
                Response.Redirect("Student_Home.aspx");
            }

            else
            {
                Label1.ForeColor=System.Drawing.Color.Red;
                Label1.Text = "Login Failed..";
            }

        }
    }
}