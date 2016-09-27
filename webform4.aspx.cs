using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class webform4 : System.Web.UI.Page

{
    int check
    {
        get;
        set;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> forgotuser1 = Application["AllUserList1"] as List<User>;           
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
   
        List<User> forgotuser = Application["AllUserList1"] as List<User>;
        string x = TextBox1.Text;
        int sz = forgotuser.Count;
       for (int d = 0; d < forgotuser.Count; d++)
        {
          
           if(forgotuser[d].Emailaddress.ToString().Contains(TextBox1.Text))
            {
               
                check = 1;
               
                Session["check"] = check;
                Session["email"] = forgotuser[d].Emailaddress;
                Session["password"] = forgotuser[d].Password;
                break;
                }
           else
            {
                check = 0;
                Session["check"] = check;
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int value = (int)Session["check"];
            Response.Write(value);
            int check1 = 0;
            check1 = check1 + value;
            
            if (check1 == 1)
            {
                Response.Write("<script>alert('Your password has been sent to email address in your file');</script>");
                try
                {
                    string email = Session["email"] as string;
                    string password = Session["password"]as string;
                    string message1 = "Dear Valued customer"+"<br/>"+"You are receiving this email because you have requested to recover your password"+"<br/>"+"Your current password is: "+password+"<br/>"+"Thank You"+"<br/>"+"EasyAs123Bookbuyers.com Team";
                    MailMessage mail1 = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                    mail1.From = new MailAddress("abhishek010130@gmail.com");
                    mail1.To.Add(email);
                    mail1.Subject = "We have recovered your password!";
                    mail1.IsBodyHtml = true;
                    mail1.Body = message1;
                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("abhishek010130@gmail.com", "abhi1010");
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(mail1);

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }
            else
            {
                Response.Write("<script>alert('Your account email cannot be verified');</script>");
            }
        }
    }
}