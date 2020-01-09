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
            
            //TextBoxDate.TextChanged += new EventHandler(TextBoxDay_TextChanged);
            //TextBoxMonth.TextChanged += new EventHandler(TextBoxDay_TextChanged);
        }

        //protected void TextBoxDay_TextChanged(object sender, EventArgs e)
        //{
        //    if (TextBoxDate.Text.Length == TextBoxDate.MaxLength)
        //    {
        //        TextBoxMonth.Focus();
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(FioTxtBox.Text != "")
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
                        TextBoxRecords.Text += FioTxtBox.Text + " " + curRes + ";\n";
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
            

            


            //Console.WriteLine(res);
        }

        protected void TextBoxDate_TextChanged(object sender, EventArgs e)
        {
            outputTextTimeNow.Text = "";
           
        }
    }
}