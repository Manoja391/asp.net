using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddDoc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string com = "select top 1 DId From Doctor ORDER BY DId Desc;";
        con.Open();
        cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            TextBox1.Text = i.ToString();
        }
        else
        {
            TextBox1.Text = "1110";
        }
        con.Close();
    }


    public string check()
    {
        if (TextBox2.Text == "")
        {
            return "Name";
        }
        else if (TextBox3.Text == "")
        {
            return "Address";
        }
        else if (TextBox4.Text == "")
        {
            return "Mobile No";
        }
        else
        {
            return "OK";
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Doctor(DId,Name,Address,Mobile,Cate,Pass,Email) values (@DId,@Name,@Address,@Mobile,@Cate,@Pass,@Email);", con);
            cmd.Parameters.AddWithValue("@DId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Cate", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Pass", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox4.Text);
            cmd.ExecuteReader();
            con.Close();
            con.Open();

            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Doctor Registered');", true);
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }
}