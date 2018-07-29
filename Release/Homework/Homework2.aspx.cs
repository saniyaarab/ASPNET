/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 2 /Week 3 - Chapter 5
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homework_Homework2 : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
    Name: btnClear_Click
    Abstract: Clear all the fields and checkbox
    */

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtItem1.Text = string.Empty;
        txtItem2.Text = string.Empty;
        txtItem3.Text = string.Empty;
        txtItem4.Text = string.Empty;
        txtItem5.Text = string.Empty;
        chkCoupon.Checked = false;
        txtSubTotal.Text = string.Empty;
        txtTax.Text = string.Empty;
        txtTotal.Text = string.Empty;
       
    }

    /*
   Name: btnCaculate_Click
   Abstract: Calculate the subtotal and Total.
   */
    protected void btnCaculate_Click(object sender, EventArgs e)
    {
        
        const double COUPON_RATE = 10;
        const double TAX_RATE = 6.25;

        double dblSubtotal = 0;
        double dblCouponValue = 0;
        double dblTaxValue = 0;
        double dblTotal = 0;

        CValidation clsValidation = new CValidation();

        double dblItem1 = clsValidation.IsValid(txtItem1.Text);
        double dblItem2 = clsValidation.IsValid(txtItem2.Text);
        double dblItem3 = clsValidation.IsValid(txtItem3.Text);
        double dblItem4 = clsValidation.IsValid(txtItem4.Text);
        double dblItem5 = clsValidation.IsValid(txtItem5.Text);

        CCashRegister clsCashRegister = new CCashRegister();

        dblCouponValue = clsCashRegister.Coupon(dblItem1, dblItem2, dblItem3, dblItem4, dblItem5, COUPON_RATE);
        
        dblSubtotal = clsCashRegister.Subtotal(dblItem1, dblItem2, dblItem3, dblItem4, dblItem5);

        //Check to see if Coupon checkbox is checked else do not apply coupon
        if (chkCoupon.Checked == true)
        {
            dblSubtotal = clsCashRegister.Subtract(dblSubtotal, dblCouponValue);
            txtSubTotal.Text = String.Format("{0:C}", dblSubtotal);
        }
        else
        {
            txtSubTotal.Text = String.Format("{0:C}", dblSubtotal);
        }

        dblTaxValue = clsCashRegister.Tax(dblSubtotal, TAX_RATE);
        txtTax.Text = String.Format("{0:C}", dblTaxValue); ;

        dblTotal = clsCashRegister.Add(dblSubtotal, dblTaxValue);
        txtTotal.Text = String.Format("{0:C}", dblTotal);

        //readjusting values in textboxes
        txtItem1.Text = Convert.ToString(dblItem1);
        txtItem2.Text = Convert.ToString(dblItem2);
        txtItem3.Text = Convert.ToString(dblItem3);
        txtItem4.Text = Convert.ToString(dblItem4);
        txtItem5.Text = Convert.ToString(dblItem5);
    }
}