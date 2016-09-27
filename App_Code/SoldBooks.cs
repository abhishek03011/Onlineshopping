using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

public class SoldBooks
{
    private string isbnNumber;
    private string title;
    private string soldDate;
    private string price;
 

    public string ISBNNumber
    {
        get
        {
            return isbnNumber;
        }
        set
        {
            isbnNumber = value;
        }
    }

    public string TITLE
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

    public string Solddate
    {
        get
        {
            return soldDate;
        }
        set
        {
            soldDate = value;
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

    public SoldBooks()
    {
        

    }
}