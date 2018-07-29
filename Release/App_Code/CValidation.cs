using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CValidation
/// </summary>
/// 
 /*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework/Week 3 - Chapter 5
*/

public class CValidation
{
    public CValidation()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public double IsValid(string strValue)
    {
        strValue.Trim();
        double result = 0;
        if (strValue == "")
        {
            strValue = "0";
        }

        Double.TryParse(strValue, out result);
        if(result == 0)
        {
            strValue = "0";
        }
        return Convert.ToDouble(strValue); ;
    }
}
