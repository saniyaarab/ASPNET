/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 1 /Week 3 - Chapter 5
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CalculatorDemo : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
   Name: btnCalculate_Click
   Abstract: Display Result when button is clicked
   */
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        if (txtfirstValue.Text.Length > 0 && txtSecondValue.Text.Length > 0)
        {
            double dblResult = 0;
            double dblValue1 = Convert.ToDouble(txtfirstValue.Text);
            double dblValue2 = Convert.ToDouble(txtSecondValue.Text);

            CCalculator clsCalculator = new CCalculator();
            Trace.Write(string.Format("Performing the calculation with the {0} operator",
            lslOperatorlList.SelectedValue));
            switch (lslOperatorlList.SelectedValue)
            {
                case "+":
                    dblResult = clsCalculator.Add(dblValue1, dblValue2);
                    break;
                case "-":
                    dblResult = clsCalculator.Subtract(dblValue1, dblValue2);
                    break;
                case "*":
                    dblResult = clsCalculator.Multiply(dblValue1, dblValue2);
                    break;
                case "/":
                    dblResult = clsCalculator.Divide(dblValue1, dblValue2);
                    break;
            }
            lblResult.Text = dblResult.ToString();
        }
        else
        {
            lblResult.Text = string.Empty;
            Trace.Warn("Custom Category",
          "TextBox controls are empty; time to add Validation controls?");
        }
    }
}