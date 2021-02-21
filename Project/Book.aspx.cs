using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Book : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string com;
        com = "select top 1 AId From App ORDER BY AId Desc;";
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
            TextBox1.Text = "1001";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.BackColor = System.Drawing.Color.White;
        Button2.BackColor = System.Drawing.Color.White;
        string s = "Select DName from App where Date='"+TextBox2.Text+"' AND Time='"+DropDownList2.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int rows = ds.Tables[0].Rows.Count;
        if (rows != 0)
        {
            string[] no = new string[rows];

            for (int i = 0; i < rows; i++)
            {
                no[i] = ds.Tables[0].Rows[i][0].ToString();
            }

            for (int i = 0; i < rows; i++)
            {
                if (no[i] == Button2.Text)
                {
                    Button2.BackColor = System.Drawing.Color.Red;
                }
                if (no[i] == Button3.Text)
                {
                    Button3.BackColor = System.Drawing.Color.Red;
                }
            }

        }
        Button2.Visible = true;
        Button3.Visible = true;
        Button6.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text != "Empty")
        {
            if (Button2.BackColor == System.Drawing.Color.Red)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('This is already booked');", true);
            }
            else
            {
                if (Button3.BackColor == System.Drawing.Color.Green)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('You have already booked One Slot');", true);
                }
                else
                {
                    Button2.BackColor = System.Drawing.Color.Green;
                }
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Sorry Doctor Is not Available');", true);
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Button3.Text != "Empty")
        {
            if (Button3.BackColor == System.Drawing.Color.Red)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('This Doctor is already booked');", true);
            }
            else
            {
                if (Button2.BackColor == System.Drawing.Color.Green)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('You have already booked One Slot');", true);
                }
                else
                {
                    Button3.BackColor = System.Drawing.Color.Green;
                }
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Sorry Doctor Is not Available');", true);
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string no = "";
        string dmail = "";
        if (Button2.BackColor == System.Drawing.Color.Green)
        {
            no = Button2.Text;
            dmail = Label7.Text;
        }
        else if (Button3.BackColor == System.Drawing.Color.Green)
        {
            no = Button3.Text;
            dmail = Label8.Text;
        }
        SqlCommand cmd = new SqlCommand("insert into App(AId,UId,Date,Time,DName) values ('"+TextBox1.Text+"','"+Session["id"].ToString()+"','"+TextBox2.Text+"','"+DropDownList2.Text+"','"+no+"')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Booking Successfull');", true);

        TextBox1.Text = "";
        TextBox2.Text = "";

        Button2.Visible = false;
        Button3.Visible = false;
        Button6.Visible = false;

        string umail = Session["email"].ToString();


        string id = "puttamanoja@gmail.com";
        string pass = "Manoja@123";
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress(id);
        mail.To.Add(umail);
        mail.Subject = "Doctor Appiontment Alert";
        mail.Body = "Your Appiontment has been booked with Doctor :'" + no + "' at Date :'" + TextBox2.Text + "' Time:'" + DropDownList2.Text + "' ";


        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential(id, pass);
        SmtpServer.EnableSsl = true;

      //  SmtpServer.Send(mail);



        MailMessage mail1 = new MailMessage();
        SmtpClient SmtpServer1 = new SmtpClient("smtp.gmail.com");
        mail1.From = new MailAddress(id);
        mail1.To.Add(dmail);
        mail1.Subject = "Doctor Appiontments Alert";
        mail1.Body = "Your Appiontment has been booked with User Id :'" + Session["id"].ToString() + "' at Date :'" + TextBox2.Text + "' Time:'" + DropDownList2.Text + "' ";


        SmtpServer1.Port = 587;
        SmtpServer1.Credentials = new System.Net.NetworkCredential(id, pass);
        SmtpServer1.EnableSsl = true;

       // SmtpServer1.Send(mail1);

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            try
            {
                SqlDataAdapter cmd = new SqlDataAdapter("Select Name,Email From Doctor Where Cate = '" + DropDownList1.Text + "'", con);
                DataSet dr = new DataSet();
                cmd.Fill(dr);
                int cou = dr.Tables[0].Rows.Count;
                if (cou != 0)
                {
                    Button2.Text = dr.Tables[0].Rows[0][0].ToString();
                    Button3.Text = dr.Tables[0].Rows[1][0].ToString();

                    Label7.Text = dr.Tables[0].Rows[0][1].ToString();
                    Label8.Text = dr.Tables[0].Rows[1][1].ToString();
                }
                else
                {
                    Button2.Text = "Empty";
                    Button3.Text = "Empty";
                }
            }
            catch (Exception a)
            {

            }
        }
    }
}