using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {

        }
        else
        {
            Response.Redirect("~/SignInEmp.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        string query = "select Name, Diagnosis, Date, Severity, Pid, Status, Age, Active, Gender, Infectious, BloodGroup, Remarks from PatientData where Pid='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader sqlreader = cmd.ExecuteReader();
        while (sqlreader.Read())
        {

            TextBox2.Text = (sqlreader["Name"].ToString());
            TextBox3.Text = (sqlreader["Diagnosis"].ToString());
            TextBox4.Text = (sqlreader["Date"].ToString());
            TextBox5.Text = (sqlreader["Severity"].ToString());
            TextBox6.Text = (sqlreader["Pid"].ToString());
            TextBox7.Text = (sqlreader["Status"].ToString());
            TextBox8.Text = (sqlreader["Age"].ToString());
            TextBox9.Text = (sqlreader["Active"].ToString());
            TextBox10.Text = (sqlreader["Gender"].ToString());
            TextBox11.Text = (sqlreader["Infectious"].ToString());
            TextBox12.Text = (sqlreader["BloodGroup"].ToString());
            TextBox13.Text = (sqlreader["Remarks"].ToString());
            Label4.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Update PatientData Set Name='" + TextBox2.Text + "', Diagnosis='" + TextBox3.Text + "', Date='" + TextBox4.Text + "', Severity='" + TextBox5.Text + "', Pid='" + Convert.ToInt32(TextBox6.Text) + "', Status='" + TextBox7.Text + "', Age='" + Convert.ToInt32(TextBox8.Text) + "', Active='" + TextBox9.Text + "', Gender='" + TextBox10.Text + "', Infectious='" + TextBox11.Text + "', BloodGroup='" + TextBox12.Text + "', Remarks='" + TextBox13.Text + "' WHERE Pid='"+TextBox1.Text+"'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            Label4.Text = "Updated";

        }

    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {

        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

}