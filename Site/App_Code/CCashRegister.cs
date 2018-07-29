using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CCashRegister
/// </summary>
/// 

/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework/Week 3 - Chapter 5
*/


public class CCashRegister : CCalculator
{
    public CCashRegister()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public double Coupon(double a, double b , double c, double d, double e,  double coupon)
    {
        return (a + b + c + d + e) * coupon/100;
    }

    public double Subtotal(double a, double b, double c, double d, double e)
    {
        return a + b + c + d + e;
    }

    public double Tax(double a, double b)
    {
        return a * b/100;
    }

    public double Coupon(double a, double b)
    {
        return a + b;
    }

    public double Total(double a, double b)
    {
        return a - b;
    }

}