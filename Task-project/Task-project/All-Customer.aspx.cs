using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_project
{
    public partial class All_Customer : System.Web.UI.Page
    {
        EntityEntities obj = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            var q = (from pd in obj.Citys
                     join od in obj.Customers on pd.id equals od.City
                     select new
                     {
                         od.CustomerId,
                         od.CustomerName,
                         od.Age,
                         pd.CName,
                         od.phone,
                         od.Email,
                         od.photo,

                     }).ToList();

            GridView1.DataSource = q;
            GridView1.DataBind();


            //GridView1.DataSource = obj.Customers.ToList();
            //GridView1.DataBind();

            var num = (from m in obj.Customers select m.CustomerId).Count();
            numOfCus.Text = num.ToString();



            var avg = (from m in obj.Customers select m.Age).Average();
            Avg.Text = avg.ToString();

            var max = (from m in obj.Customers select m.Age).Max();
            MaxAvg.Text = max.ToString();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(TextBox1.Text);

            //GridView1.DataSource = obj.Customers.Where(x => x.CustomerName.Contains(TextBox1.Text)) .ToList();
            //GridView1.DataBind();

            var q = (from pd in obj.Citys
                     join od in obj.Customers on pd.id equals od.City
                     where (od.CustomerName == TextBox1.Text)
                     select new
                     {
                         od.CustomerName,
                         od.Age,
                         pd.CName,
                         od.phone,
                         od.Email,
                         od.photo,

                     }).ToList();




            GridView1.DataSource = q.ToList();
            GridView1.DataBind();
        }




        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(TextBox2.Text);

            //GridView1.DataSource = obj.Customers.Where(x => x.CustomerId == id).ToList();
            //GridView1.DataBind();
            int id = Convert.ToInt32(TextBox2.Text);
            var q = (from pd in obj.Citys
                     join od in obj.Customers on pd.id equals od.City
                     where (od.CustomerId == id)
                     select new
                     {

                         od.CustomerName,
                         od.Age,
                         pd.CName,
                         od.phone,
                         od.Email,
                         od.photo,

                     }).ToList();




            GridView1.DataSource = q.ToList();
            GridView1.DataBind();
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-customer.aspx");
        }
    }
}