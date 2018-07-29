/*Form: FMain
  Class: Visual Basic.Net #1
  Author: Saniya Arab
  Abstract: Homework 2 - Chapter 4*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_Demos_Containers : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    /*
    Name: cbShowPanel_CheckedChanged
    Abstract: Display Panel when Checkbox is checked
    */

    protected void cbShowPanel_CheckedChanged(object sender, EventArgs e)
    {
        pContainer.Visible = cbShowPanel.Checked;
    }

    /*
   Name: Wizard1_FinishButtonClick
   Abstract: Display text when button is clicked
   */
    protected void Wizard1_FinishButtonClick(object sender,
             WizardNavigationEventArgs e)
    {
        lblResult.Text = "Your name is " + txtYourName.Text;
        lblResult.Text += "<br />Your favorite language is " +
                   lstFavoriteLanguage.SelectedValue;
    }

}