using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class HomeDoc : System.Web.UI.Page
{
    
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            //Label1.Text = Request.QueryString["id"].ToString();
           // string str= Request.QueryString["id"].ToString(); ;
            int DOCID1 = Convert.ToInt32(Session["newid"]);
            String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            string cmd = "SELECT Distinct PatientData.Pid, PatientData.Name, PatientData.Age, PatientData.Gender, PatientData.Diagnosis FROM PatientData INNER JOIN Usersdoc ON PatientData.Docid ='" + DOCID1 + "'";
           // string cmd = "select Pid, Name, Age, Gender, Diagnosis from PatientData where Docid='"+ DOCID1 +"'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int DOCID2 = Convert.ToInt32(Session["newid"]);
        String CS = ConfigurationManager.ConnectionStrings["DBMSConnectionString1"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        string query = "select Name, Diagnosis, Date, Severity, Pid, Status, Age, Active, Gender, Infectious, BloodGroup, Remarks from PatientData where Pid='" + TextBox1.Text + "' AND Docid='"+DOCID2+ "'";
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
            
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
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
        TextBox1.Text = "";
    }
}