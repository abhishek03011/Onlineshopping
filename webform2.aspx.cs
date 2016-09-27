using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class webform2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
    private string x;
    public bool TextWasChanged = false;
    
    public void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            if (Session["newname"] == null)
            {
                Button2.Enabled = false;
            }

            if (Session["isbn1"] != null)
            {
                TextBox11.Text = Session["isbn1"].ToString();
            }
            if (Session["title1"] != null)
            {
                Labelweb3.Text = Session["title1"].ToString();
            }
            if (Session["author1"] != null)
            {
                Labelweb4.Text = Session["author1"].ToString();
            }
            if (Session["price1"] != null)
            {
                Labelweb7.Text = Session["price1"].ToString();
            }

            string disp_image = saved_image();
            Image1.ImageUrl = Path.Combine("~/images", disp_image);

            
        }
    }

public string saved_image()
    {
        int indexof = 0;
        string[] images1 = Directory.GetFiles(MapPath("~/images"));
        foreach(string value1 in images1)
        {
           if(value1.Contains(TextBox11.Text))
            {
                indexof = Array.IndexOf(images1, value1);
                  break;
            }
           
        }
        string disp_newimage = images1[indexof];
        return Path.GetFileName(disp_newimage);
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        x = TextBox11.Text;
        Image1.ImageUrl = "";
        List<string> ids = Application["ISBN"] != null ? (List<string>)Application["ISBN"] : null;
        string[] isbn = ids.ToArray();
        List<string> ids1 = Application["Title"] != null ? (List<string>)Application["Title"] : null;
        string[] title = ids1.ToArray();
        List<string> ids2 = Application["Author"] != null ? (List<string>)Application["Author"] : null;
        string[] author = ids2.ToArray();
        List<Double> ids3 = Application["BuyPrice"] != null ? (List<double>)Application["BuyPrice"] : null;
        double[] price = ids3.ToArray();
        if (x == "")
        {
            Response.Write("<script>alert('Sorry!!! Please enter ISBN');</script>");
        }
        else
        { 

            int a = x.IndexOf("-");
              if (a != 3)
            {
                Response.Write("<script>alert('Sorry!!! The ISBN format is incorrect');</script>");
            }
            else
            {
                string word = String.Join("", x.Split('-', ',', '.', ';', '\''));
                   if (word.Length != 13)
                {
                    Response.Write("<script>alert('Sorry!!! The ISBN must be 13 digits');</script>");
                }
                else
                {
                    long testlength;
                    if (Int64.TryParse(word, out testlength))
                    {
                        bool check = false;
                        foreach (string value in isbn)
                        {
                            if (value == x)
                            {
                                check = true;
                            }

                        }
                        if (check == true)
                        {

                            int index1 = Array.IndexOf(isbn, x);                         
                            TextBox11.Text = isbn[index1];
                            Labelweb4.Text = author[index1];
                           Labelweb3.Text= title[index1];
                           Labelweb7.Text = price[index1].ToString();
                           string disp_image1 = saved_image();
                            Image1.ImageUrl = Path.Combine("~/images", disp_image1);
                            a = 0;
                        }
                        else
                        {
                            Response.Write("<script>alert('Sorry!!! The ISBN number was not found in database');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry!!! The ISBN must be digits 0 - 9');</script>");
                    }

                }
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Thank you for your business. Your account will be updated after we receive the book . A conformation email has been sent to the email address in our file.');</script>");
        List<User> allUsersList = Application["AllUserList1"] as List<User>;
        int x = (int)Session["newname"];
        string name = allUsersList[x].Name;
        string email = allUsersList[x].Emailaddress;
        string isbn = TextBox11.Text;
        string title = Labelweb3.Text;
        string datesold = DateTime.Now.ToString("MM-dd-yyyy");
        string price = Labelweb7.Text;
        con.Open();
        // SqlCommand cmd = new SqlCommand("insert into KumarA_WADfl15_Transactions values('" +email+ "','" +isbn+ "','" +datesold+ "')", con);
        SqlCommand cmd = new SqlCommand("insert into KumarA_WADfl15_Transaction values('" + email + "','" + isbn + "','" + title + "','" + datesold + "','" + price + "')", con);

        cmd.ExecuteNonQuery();
        con.Close();
       try
         {
             MailMessage mail1 = new MailMessage();
             SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
             mail1.From = new MailAddress("abhishek010130@gmail.com");
             mail1.To.Add(email);
             mail1.Subject = "Book Transaction";
             mail1.IsBodyHtml = true;
             mail1.Body = "Your new purchase is :: "+ title+"<br/>"+"The ISBN is : "+isbn+"<br/>"+"The sold date is : "+datesold+"<br/>"+"The price is : "+price;
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
  
    }

  
}