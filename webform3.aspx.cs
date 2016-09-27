using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class webform3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
    protected void Page_Load(object sender, EventArgs e)
    {
       /* List<User> allUsersList = Application["AllUserList1"] as List<User>;
        var size = allUsersList.Count;
       // Response.Write(size);

        for (int j = 0; j <size; j++)
        {
            Response.Write("<br/>");
            Response.Write(allUsersList[j].Emailaddress);
            Response.Write("<br/>");
            Response.Write(allUsersList[j].AddressLine1);
            Response.Write("<br/>");
            Response.Write(allUsersList[j].AddressLine2);
            Response.Write("<br/>");
            Response.Write(allUsersList[j].City);
            Response.Write("<br/>");
            Response.Write(allUsersList[j].Name);
            Response.Write("<br/>");
            Response.Write(allUsersList[j].Password);
            Response.Write("<br/>");
            Response.Write("*********************************");
            Response.Write("<br/>");
        }*/
            Button1.Click += new EventHandler(Button1_Click);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/webform4.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && DropDownList1.SelectedValue!="-1")
        {
            List<User> allUsersList = Application["AllUserList1"] as List<User>;

            var size = allUsersList.Count;
            //Response.Write(size);
            int count = 0;
            bool value = false;

            if (size == 0)
            {
                User aUser = new User();
                aUser.Name = TextBox1.Text;
                aUser.AddressLine1 = TextBoxaddress1.Text;
                aUser.AddressLine2 = TextBox3.Text;
                aUser.City = TextBoxcity.Text;
                aUser.Emailaddress = TextBoxemail1.Text;
                aUser.Zip = TextBoxZip.Text;
                aUser.Password = TextBoxconfirmpass2.Text;
                if (DropDownList1.SelectedValue == "-1")
                {
                    Response.Write("<script>alert('Sorry!!! Please choose a state');</script>");
                }
                else
                {
                    aUser.State = DropDownList1.SelectedValue;
                }
               

                allUsersList.Add(aUser);

                Session["currentuser"] = aUser;


                Response.Write("<script>alert('Thank you for registering now you can Log in');</script>");
                TextBox1.Text = "";
                TextBoxcity.Text = "";
                TextBox3.Text = "";
                TextBoxcity.Text = "";
                TextBoxemail1.Text = "";
                TextBoxZip.Text = "";
                TextBoxconfirmpass2.Text = "";
                DropDownList1.SelectedValue ="-1";
                TextBoxconfirmpass2.Text = "";
                TextBoxaddress1.Text = "";
                TextBoxpassword.Text = "";
            }
            else
            {

                for (int j = 0; j < allUsersList.Count; j++)
                {
                    if (allUsersList[j].Emailaddress.Contains(TextBoxemail1.Text))
                    {
                        count = 1;
                        break;
                    }

                }

                for (int k = 0; k < allUsersList.Count; k++)
                {
                    if (!allUsersList[k].Emailaddress.Contains(TextBoxemail1.Text))
                    {
                        value = true;
                    }
                }

                if (count == 1)
                {
                    Response.Write("<script>alert('Sorry!!! Please user exists');</script>");
                    value = false;
                }

                if (value == true)
                {
                    User aUser = new User();
                    aUser.Name = TextBox1.Text;
                    aUser.AddressLine1 = TextBoxaddress1.Text;
                    aUser.AddressLine2 = TextBox3.Text;
                    aUser.City = TextBoxcity.Text;
                    aUser.Emailaddress = TextBoxemail1.Text;
                    aUser.Zip = TextBoxZip.Text;
                    aUser.Password = TextBoxconfirmpass2.Text;
                    if (DropDownList1.SelectedValue == "-1")
                    {
                        Response.Write("<script>alert('Sorry!!! Please choose a state');</script>");
                    }
                    else
                    {
                        aUser.State = DropDownList1.SelectedValue;
                    }

                    allUsersList.Add(aUser);
                    Session["currentuser"] = aUser;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into KumarA_WADfl15_Users values('"+TextBoxemail1.Text+"','"+TextBox1.Text+"','"+TextBoxaddress1.Text+"','"+TextBox3.Text+"','"+TextBoxcity.Text+"','"+TextBoxZip.Text+"','"+DropDownList1.SelectedValue+"','"+TextBoxconfirmpass2.Text+"')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Application["userdata"] = aUser;
                    Response.Write("<script>alert('Thank you for registering now you can Log in');</script>");
                    TextBox1.Text = "";
                    TextBoxcity.Text = "";
                    TextBox3.Text = "";
                    TextBoxcity.Text = "";
                    TextBoxemail1.Text = "";
                    TextBoxZip.Text = "";
                    TextBoxconfirmpass2.Text = "";
                    DropDownList1.SelectedValue = "-1";
                    TextBoxconfirmpass2.Text="";
                    TextBoxaddress1.Text="";
                    TextBoxpassword.Text = "";
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Fill all required feild');</script>");
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
       {
            int saveindex = 0;
            bool emailfound = false;
            bool passfound = false;

            List<User> newlist = Application["AllUserList1"] as List<User>;
            for (int s = 0; s < newlist.Count; s++)
            {
                if (TextBoxemail2right.Text == newlist[s].Emailaddress)
                {
                    saveindex = s;
                    Session["newname"] = saveindex;
                    emailfound = true;
                    break;
                }
            }
            for (int t = 0; t < newlist.Count; t++)
            {
                if (passwordtext2.Text == newlist[t].Password)
                {
                    passfound = true;
                    break;
                }
            }

            if ((passfound == true) && (emailfound == true))
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter right email and password');</script>");

            }

       }
        else
        {
            Response.Write("<script>alert('Please enter required feilds');</script>");
        }

    }

}
