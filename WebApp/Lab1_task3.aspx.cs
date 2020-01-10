using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    
    public partial class Lab1_task3 : System.Web.UI.Page
    {
        double a, b, c;

        protected void tryParse()
        {
            try {
                a = Convert.ToDouble(TextBox1.Text);
            } catch (Exception ex)
            {
                Response.Write("First "+ ex.Message);
                TextBox3.Text = "";
            }
            try
            {
                b = Convert.ToDouble(TextBox2.Text);
            }
            catch (Exception ex)
            {
                Response.Write("Second "+ ex.Message);
                TextBox3.Text = "";
            }
        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            try
            {
                tryParse();
                c = a / b;
                TextBox3.Text = c.ToString();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                TextBox3.Text = "";
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {

            try{
                tryParse();
                c = a * b;
                TextBox3.Text = c.ToString();
            }catch (Exception ex)
            {
                Response.Write(ex.Message);
                TextBox3.Text = "";
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            try{
                tryParse();
                c = a - b;
                TextBox3.Text = c.ToString();
            }catch (Exception ex){
                Response.Write(ex.Message);
                TextBox3.Text = "";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void Button13_Click(object sender, EventArgs e)
        {
            
            try{
                tryParse();
                c = a + b;
                TextBox3.Text = c.ToString();
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
                TextBox3.Text = "";
            }
        }
    }
}