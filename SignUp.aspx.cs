﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into Usersdoc values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
                    Label1.Text = "Registration Successfull";
                    Label1.ForeColor = Color.Green;
                    Response.Redirect("~/SignInDoc.aspx");
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Passwords do not match";
            }
        }
        else
        {
            Label1.ForeColor = Color.Red;
            Label1.Text = "All Fields Are Mandatory";

        }
    }
}