using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class User
{
    private string name;
    private string addressLine1;
    private string addressLine2;
    private string city;
    private string zip;
    private string state;
    private string emailaddress;
    private string password;

    private SoldBooks[] soldBooks;

    public SoldBooks[] SoldBooks
    {
        get
        {
            return soldBooks;
        }

        set
        {
            soldBooks = value;
        }
    }


    public string Name
    {
        get
        {
            return name;
        }
        set
        {
            name = value;
        }
    }

    public string AddressLine1
    {
        get
        {
            return addressLine1;
        }
        set
        {
            addressLine1 = value;
        }
    }

    public string AddressLine2
    {
        get
        {
            return  addressLine2;
        }
        set
        {
            addressLine2 = value;
        }
    }

    public string City
    {
        get
        {
            return city;
        }
        set
        {
            city = value;
        }
    }

    public string Zip
    {
        get
        {
            return zip;
        }
        set
        {
           zip = value;
        }
    }

    public string State
    {
        get
        {
            return state;
        }
        set
        {
            state = value;
        }
    }

   
    public string Emailaddress
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

    public string Password
    {
        get

        {
            return password;
        }
        set
        {
            password = value;
        }
    }

   

    public User()
    {
        //
        // TODO: Add constructor logic here
        //
       
    }
}