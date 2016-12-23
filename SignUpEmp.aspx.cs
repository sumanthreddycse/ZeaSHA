using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUpEmp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" & tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
        {
            if (tbPass.Text == tbCPass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Usersemp values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Labelemp.Text = "Registration Successfull";
                    Labelemp.ForeColor = Color.Green;
                    Response.Redirect("~/SignInEmp.aspx");
                }
            }
            else
            {
                Labelemp.ForeColor = Color.Red;
                Labelemp.Text = "Passwords do not match";
            }
        }
        else
        {
            Labelemp.ForeColor = Color.Red;
            Labelemp.Text = "All Fields Are Mandatory";

        }
    }
}
