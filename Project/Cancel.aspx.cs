using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Cancel : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G11Q4U1O\SQLEXPRESS;Initial Catalog=DoctorApp;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select UId from App where AId = '" + TextBox1.Text + "' And UId='" + Session["Id"].ToString() + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();
            
            cmd = new SqlCommand("Delete from App where AId = '" + TextBox1.Text + "' And UId='" + Session["Id"].ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Booking Deleted Successfully');", true);
            
            string id = "voramish7018@gmail.com";
            string pass = "allbesst";

            string umail = Session["email"].ToString();
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(id);
            mail.To.Add(umail);
            mail.Subject = "Doctor Appiontment Alert";
            mail.Body = "Your Appiontment AId: '"+TextBox1.Text+"' has been Cancled";
                
    
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(id, pass);
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

            TextBox1.Text = "";
        }
        else
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Id');", true);
        }
        
        

    }
}