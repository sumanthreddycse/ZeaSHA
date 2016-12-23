using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUpPat : System.Web.UI.Page
{
    protected void btSignup_Click(object sender, EventArgs e)
    {
        if (tbUname.Text != "" & tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "" && tbDob.Text !="")
        {
            if (tbPass.Text == tbCPass.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into Userspat values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','" + tbDob.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Labelpat.Text = "Registration Successfull";
                    Labelpat.ForeColor = Color.Green;
                    Response.Redirect("~/SignInPat.aspx");
                }
            }
            else
            {
                Labelpat.ForeColor = Color.Red;
                Labelpat.Text = "Passwords do not match";
            }
        }
        else
        {
            Labelpat.ForeColor = Color.Red;
            Labelpat.Text = "All Fields Are Mandatory";

        }
    }
}
