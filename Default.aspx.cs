using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
 

    protected void Page_Load(object sender, EventArgs e)
    {
       
        List<User> newlist1 = Application["AllUserList1"] as List<User>;

        if (Session["newname"] == null)
        {
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:game1(); ", true);
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:show1(); ", true);
            yourhide.Text = "Your Account";
            yourhide1.Text = "What you sold";
        }
           
        if (Session["newname"]!=null)
        {
            int ac = (int)Session["newname"];
            Labelshow.Text = newlist1[ac].Name;
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:game(); ", true);
           //.Attributes["disabled"] = "disabled";
        }
       
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        List<string> ids = Application["ISBN"] != null ? (List<string>)Application["ISBN"] : null;
        string[] isbn = ids.ToArray();
        List<string> ids1 = Application["Title"] != null ? (List<string>)Application["Title"] : null;
        string[] title = ids1.ToArray();
        List<string> ids2 = Application["Author"] != null ? (List<string>)Application["Author"] : null;
        string[] author = ids2.ToArray();
        List<Double> ids3 = Application["BuyPrice"] != null ? (List<double>)Application["BuyPrice"] : null;
        double[] price = ids3.ToArray();
        if (TextBox1.Text =="")
        {
            Response.Write("<script>alert('Sorry!!! Please enter ISBN');</script>");
        }
        else
        {
            int a = TextBox1.Text.IndexOf("-");
           if (a!=3)
            {
                Response.Write("<script>alert('Sorry!!! The ISBN format is incorrect');</script>");
            }
            else
            {
                string word = String.Join("", TextBox1.Text.Split('-', ',', '.', ';', '\''));
                if(word.Length != 13)
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
                           if(value==TextBox1.Text)
                            {
                                check = true;
                            }
                                    
                        }
                        if (check == true)
                        {
        
                            int index1 = Array.IndexOf(isbn, TextBox1.Text);
                            Session["isbn1"] = isbn[index1];
                            Session["author1"] = author[index1];
                            Session["title1"] = title[index1];
                            Session["price1"] = price[index1];
                            Response.Redirect("~/webform2.aspx");

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
}