using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            outputLabel.Text = DateTime.Now.ToLongTimeString();
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (FioTxtBox.Text != "")
                {
                    DateTime begin = Convert.ToDateTime(TextBoxDate.Text);
                    DateTime end = DateTime.Now;
                    if (begin < end)
                    {
                        outputTextTimeNow.ForeColor = System.Drawing.Color.Black;
                        TimeSpan res = end.Subtract(begin);
                        string curRes = ("Прожито днів: " + res.Days +
                                                    " Годин: " + res.Hours +
                                                    " Хвилин: " + res.Minutes +
                                                    " Секунд: " + res.Seconds);
                        outputTextTimeNow.Text = curRes;
                        TextBoxRecords.Text += FioTxtBox.Text + " " + curRes + " для даних: " + begin + " - " + end + ";\n";
                    }
                    else
                    {
                        outputTextTimeNow.ForeColor = System.Drawing.Color.Red;
                        outputTextTimeNow.Text = "Дата вашого народження не може бути у майбутньому часі!";
                    }
                }
                else
                {
                    outputTextTimeNow.ForeColor = System.Drawing.Color.Red;
                    outputTextTimeNow.Text = "Поле ПІБ не має бути пустим.";
                }
            }
            catch
            {
                TextBoxDate.Text = String.Format("{0:dd/MM/yyyy}", DateTime.Now); ;
                outputTextTimeNow.ForeColor = System.Drawing.Color.Red;
                outputTextTimeNow.Text = "Дата вашого народження не може бути пустою!";
            }
        }

        protected void TextBoxDate_TextChanged(object sender, EventArgs e)
        {

            outputTextTimeNow.Text = "";
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBoxList1.Text == "yesTime")
                TextBoxDate.TextMode = TextBoxMode.DateTimeLocal;
            else
                TextBoxDate.TextMode = TextBoxMode.Date;

        }
    }
}