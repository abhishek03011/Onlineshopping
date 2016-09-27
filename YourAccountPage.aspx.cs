using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class YourAccountPage : System.Web.UI.Page
{
    SqlConnection connect1 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");

    protected void Page_Load(object sender, EventArgs e)
    {
        List<User> newlist111 = Application["AllUserList1"] as List<User>;
        if (!IsPostBack)
        {
            if (Session["newname"] != null)
            {
                int ac = (int)Session["newname"];
                namelabel.Text = newlist111[ac].Name;
                TextBoxaddress111.Text = newlist111[ac].AddressLine1;
                Textaddresslabel111.Text = newlist111[ac].AddressLine2;
                TextBoxcity111.Text = newlist111[ac].City;
                TextBoxZip111.Text = newlist111[ac].Zip;
                DropDownList111.Text = newlist111[ac].State;
                TextBoxemail111.Text = newlist111[ac].Emailaddress;
                
            }
        }
    }

    protected void Button111_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void Button2111_Click(object sender, EventArgs e)
    {
        List<User> newlist222 = Application["AllUserList1"] as List<User>;
        if (Page.IsValid && DropDownList111.SelectedValue!="-1")
        {
            if (Session["newname"] != null)
            {
                int ac = (int)Session["newname"];
                newlist222[ac].AddressLine1 = TextBoxaddress111.Text;
                newlist222[ac].AddressLine2 = Textaddresslabel111.Text;
                newlist222[ac].City = TextBoxcity111.Text;
                newlist222[ac].Zip = TextBoxZip111.Text;
                newlist222[ac].State = DropDownList111.SelectedValue;
                newlist222[ac].Emailaddress = TextBoxemail111.Text;
                newlist222[ac].Password = TextBoxconfirmpass2111.Text;
                connect1.Open();
                SqlDataAdapter adap = new SqlDataAdapter("update KumarA_WADfl15_Users set Addressline1='"+newlist222[ac].AddressLine1+ "',Addressline2='" + newlist222[ac].AddressLine2 + "',city='"+ newlist222[ac].City + "',state='" + newlist222[ac].State + "',password='" + newlist222[ac].Password + "' where emailAddress='"+ newlist222[ac].Emailaddress + "'", connect1);
                adap.SelectCommand.ExecuteNonQuery();
                connect1.Close();

            }
        }
    }
    protected void Button3111_Click(object sender, EventArgs e)
    {
        if (Page.IsValid && DropDownList111.SelectedValue!="-1")
        {
            List<User> newlist2 = Application["AllUserList1"] as List<User>;
            if (Session["newname"] != null)
            {
                int ac = (int)Session["newname"];
                newlist2[ac].AddressLine1 = TextBoxaddress111.Text;
                newlist2[ac].AddressLine2 = Textaddresslabel111.Text;
                newlist2[ac].City = TextBoxcity111.Text;
                newlist2[ac].Zip = TextBoxZip111.Text;
                newlist2[ac].State = DropDownList111.SelectedValue;
                newlist2[ac].Emailaddress = TextBoxemail111.Text;
                newlist2[ac].Password = TextBoxconfirmpass2111.Text;
                connect1.Open();
                SqlDataAdapter adap = new SqlDataAdapter("update KumarA_WADfl15_Users set Addressline1='" + newlist2[ac].AddressLine1 + "',Addressline2='" + newlist2[ac].AddressLine2 + "',city='" + newlist2[ac].City + "',state='" + newlist2[ac].State + "',password='" + newlist2[ac].Password + "' where emailAddress='" + newlist2[ac].Emailaddress + "'", connect1);
                adap.SelectCommand.ExecuteNonQuery();
                connect1.Close();
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}