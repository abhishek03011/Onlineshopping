<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Configuration" %>



<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        //User aUser = new User();
        List<User> aUser = new List<User>();
        SqlConnection connect1 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
        SqlCommand cmd = new SqlCommand("select * from KumarA_WADfl15_Users", connect1);
        SqlDataReader dr;
        try
        {
            connect1.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                aUser.Add(new User()
                {
                    Emailaddress = dr.GetString(dr.GetOrdinal("emailAddress")),
                    AddressLine1 = dr.GetString(dr.GetOrdinal("Addressline1")),
                    AddressLine2 = dr.GetString(dr.GetOrdinal("Addressline2")),
                    Name = dr.GetString(dr.GetOrdinal("name")),
                    City = dr.GetString(dr.GetOrdinal("city")),
                    Zip = dr.GetString(dr.GetOrdinal("Zip")),
                    State = dr.GetString(dr.GetOrdinal("state")),
                    Password = dr.GetString(dr.GetOrdinal("password"))

                });
            }
            dr.Close();
        }
        finally
        {
            connect1.Close();
        }

        Application["AlluserList1"] = aUser;

        ScriptManager.ScriptResourceMapping.AddDefinition(
            "jquery",
            new ScriptResourceDefinition
            {
                Path = "/static/scripts/jquery-1.8.3.min.js",
                DebugPath = "/static/scripts/jquery-1.8.3.js",
                CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js",
                CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "jQuery"
            });


        SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
        SqlConnection con1 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
        SqlConnection con2 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
        SqlConnection con3 = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432015fa04kumara; User Id = kumara; Password = 1358722; Asynchronous Processing = true");
        string sql = "select ISBN from KumarA_WADfl15_Book";
        string sql1 = "select Title from KumarA_WADfl15_Book";
        string sql2 = "select Author from KumarA_WADfl15_Book";
        string sql3 = "select Buy_price from KumarA_WADfl15_Book";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        SqlDataAdapter da1 = new SqlDataAdapter(sql1, con1);
        SqlDataAdapter da2 = new SqlDataAdapter(sql2, con2);
        SqlDataAdapter da3 = new SqlDataAdapter(sql3, con3);
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();
        da.Fill(ds, "KumarA_WADfl15_Book");
        da1.Fill(ds1, "KumarA_WADfl15_Book");
        da2.Fill(ds2, "KumarA_WADfl15_Book");
        da3.Fill(ds3, "KumarA_WADfl15_Book");
        List<string> ISBN = new List<string>();
        List<string> Title = new List<string>();
        List<string> Author = new List<string>();
        List<double> Buy_Price = new List<double>();

        foreach (DataRow row in ds.Tables["KumarA_WADfl15_Book"].Rows)
        {
            ISBN.Add(row["ISBN"].ToString());
        }

        foreach(DataRow row in ds1.Tables["KumarA_WADfl15_Book"].Rows)
        {
            Title.Add(row["Title"].ToString());
        }

        foreach(DataRow row in ds2.Tables["KumarA_WADfl15_Book"].Rows)
        {
            Author.Add(row["Author"].ToString());
        }

        foreach(DataRow row in ds3.Tables["KumarA_WADfl15_Book"].Rows)
        {
            Buy_Price.Add(Convert.ToDouble(row["Buy_price"]));
        }

        Application["ISBN"] = ISBN;
        Application["Title"] = Title;
        Application["Author"] = Author;
        Application["BuyPrice"] = Buy_Price;
        // Code that runs on application startup
        /* Application ["ISBN"] = new string[] {"978-1449311520","978-0735667044","978-0993088100","978-1428336117","978-0769302652",
             "978-0354242452","978-0071457743","978-1885071293","978-1591260905","978-1491950357"};
         Application["TITLE"] = new string[] {"Hadoop: The Definitive Guide"
 ,"Microsoft Visual Basic 2013 Step by Step","Fifty Quick Ideas to Improve Your User Stories"
 ,"The Medical Manager Student Edition","Introduction to Language Development","Basic Plumbing, The Complete Beginners Guide"
 ,"Engineering Formulas","Handyman In-Your-Pocket","Chemical Engineering Solved Problems","Building Microservices"};
         Application["AUTHOR"] = new string[] { "Tom White","Michael Halvoson"
 ,"David Evens/Gojko Adzick"
 ,"David Fitzpatrick"
 ,"Scott McLaughlin"
 ,"Maning Gibralta"
 ,"George Geick"
 ,"Richard Allen Young"
 ,"NS Nandagopal"
 ,"Sam Newman"};
         Application["PRICE"] = new string[] { "15.99","9.50","33.00","99.00","55.00","29.99","11.50","5.99","45.00","19.99"};
    */
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Session.Abandon();
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }


</script>
