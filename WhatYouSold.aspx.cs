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

public class tabledata
{
    private string emailaddress;
    private string isbn;
    private string datesold;
    private string price;
    private string title;

    public string email
    {
        get
        {
            return emailaddress;
        }
        set
        {
            emailaddress = value;
        }
    }

public string ISBN
    {
        get
        {
            return isbn;
        }
        set
        {
            isbn = value;
        }
    }

public string date
    {
        get
        {
            return datesold;
        }
        set
        {
            datesold = value;
        }
    }
public string Price
    {
        get
        {
            return price;
        }
        set
        {
            price = value;
        }
    }

    public string Title
    {
        get
        {
            return title;

        }
        set
        {
            title = value;
        }
    }
}
public partial class WhatYouSold : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
    SqlConnection con1 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");

    protected void Page_Load(object sender, EventArgs e)
    {

        List<User> newlist1115 = Application["AllUserList1"] as List<User>;
        if (Session["newname"] != null)
        {
            int ac = (int)Session["newname"];
            Label2.Text = newlist1115[ac].Name;
            Label4.Text = newlist1115[ac].Emailaddress;
            List < tabledata > data = new List<tabledata>();
          //  SqlCommand cmd1 = new SqlCommand("select * from KumarA_WADfl15_Transactions", con1);
            SqlCommand cmd1 = new SqlCommand("select * from KumarA_WADfl15_Transaction", con1);
            SqlDataReader dr;
            try
            {
                con1.Open();
                dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    data.Add(new tabledata()
                    {
                        email = dr.GetString(dr.GetOrdinal("emailAddress")),
                        ISBN = dr.GetString(dr.GetOrdinal("isbnnumber")),
                        date = dr.GetString(dr.GetOrdinal("date")),
                        Price = dr.GetString(dr.GetOrdinal("title")),
                        Title = dr.GetString(dr.GetOrdinal("soldprice")),
                    });
                }
                dr.Close();
            }
            finally
            {
                con1.Close();
            }
            int x1 = data.Count;
            //Response.Write(x1);




            if (x1 != 0)
            {
               
                string query1 = "select isbnnumber,title, date,soldprice  from KumarA_WADfl15_Transaction where emailAddress='" + newlist1115[ac].Emailaddress + "'";
                SqlCommand cmd = new SqlCommand(query1, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
                
            }
          

        }
       



    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/webform2.aspx");
    }
}