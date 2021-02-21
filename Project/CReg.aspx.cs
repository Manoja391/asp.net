using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string com = "select top 1 UId From Cust ORDER BY UId Desc;";
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
        else if (TextBox5.Text == "")
        {
            return "Email";
        }
        else if(TextBox8.Text=="")
        {
            return "Year Of Birth";
        }
        else if (TextBox6.Text == "")
        {
            return "Password";
        }
        return "OK";
    }

    public string passCheck()
    { 
        if(TextBox6.Text!=TextBox7.Text)
        {
            return "wrong";
        }
        return "OK";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
            if (passCheck() == "OK")
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Cust(UId,Name,Address,Pass,Email,Mobile,Sex,Age,Bg) values (@UserID,@Name,@Address,@Pass,@EMail,@Mobile,'"+DropDownList1.Text+"','"+TextBox8.Text+"','"+DropDownList2.Text+"');", con);
                cmd.Parameters.AddWithValue("@UserID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Pass", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
                cmd.Parameters.AddWithValue("@EMail", TextBox5.Text);
                cmd.ExecuteReader();
                con.Close();
                con.Open();

                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('User Registered With User Id : "+TextBox1.Text+"');", true);
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Not Matched ');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }
}