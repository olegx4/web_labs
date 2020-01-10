using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Lab1_task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = Visible;
            Image1.Visible = Visible;
            Image1.ImageUrl = "Images/" + RadioButtonList1.SelectedItem.Value.ToString() + ".jpg";
            var name = RadioButtonList1.SelectedItem.Value.ToString();
            if (name == "bethoven") {
                nameOfComposition.Text = "Місячна Соната";
                informationAbout.Text = "Соната для фортепіано № 14 op. 27 № 2, відома також під назвою «Місячна соната»,"
                    + "була написана Л. Бетховеном в 1800–1801 роках і присвячена                  "
                    + "його 17-річній учениці, графині Джульєтті Гвічарді, яка була                "
                    + "дружиною австрійського композитора В. Р. Галенберга. Назву «Місячна»        "
                    + "запропонував у 1832 році, вже після смерті автора, поет Людвіг Рельштаб.";
            }
            
            else if (name == "bah")
            {
                nameOfComposition.Text = "Токката і фуга ре-мінор";
                informationAbout.Text = "BWV 565 — твір для органа Йоганна Себастьяна Баха,"
                    + "один з найбільш популярних його творів."
                    + "Вперше був опублікований у 1833 році   "
                    + "завдяки зусиллям Фелікса Мендельсона.";
                    }
            else if (name == "mocart") {
                nameOfComposition.Text = "Маленька нічна серенада";
                informationAbout.Text = " Cеренада у чотирьох частинах, написана Вольфгангом Амадеєм Моцартом"
                    +"в 1787 році, є одним з найвідоміших творів композитора.";

            }
            else if (name == "vagner")
            {
                nameOfComposition.Text = "Політ валькірій із опери Р. Вагнера \"Валькірія\"";
                informationAbout.Text = "Назва початку третьої дії опери «Валькірія», другої з чотирьох опер"
                    + "Ріхарда Вагнера, циклу «Перстень Нібелунга».";
            }


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try {
                RadioButtonList1.SelectedIndex++;
                RadioButtonList1_SelectedIndexChanged(sender, e);
            }
            catch
            {
                RadioButtonList1.SelectedIndex = 0;
                RadioButtonList1_SelectedIndexChanged(sender, e);
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                RadioButtonList1.SelectedIndex--;
                RadioButtonList1_SelectedIndexChanged(sender, e);
            }
            catch
            {
                RadioButtonList1.SelectedIndex = RadioButtonList1.Items.Capacity-1;
                RadioButtonList1_SelectedIndexChanged(sender, e);
            }
            

        }
    }
}