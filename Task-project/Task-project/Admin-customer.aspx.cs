using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_project
{
    public partial class Admin_customer : System.Web.UI.Page
    {
        EntityEntities obj = new EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var x = from City in obj.Citys select City;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "CName";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }

            //var q = (from pd in obj.Citys
            //         join od in obj.Customers on pd.id equals od.City1
            //         select new
            //         {
            //             od.CustomerName,
            //             od.Age,
            //             pd.CName,
            //             od.phone,
            //             od.Email,
            //             od.photo,

            //         }).ToList();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Textname.Text == "" || TextEmail.Text == "" || Textphone.Text == "" || TextAge.Text == "" || DropDownList1.SelectedValue == "" || Label2.Text == "")
            {
                Label4.Visible = true;
            }
            else
            {
                Customer ins = new Customer();
                ins.CustomerName = Textname.Text;
                ins.Email = TextEmail.Text;
                ins.phone = Convert.ToInt32(Textphone.Text);
                ins.Age = Convert.ToInt32(TextAge.Text);

                ins.City = Convert.ToInt32(DropDownList1.SelectedValue);
                ins.photo = Label2.Text;

                obj.Customers.Add(ins);
                obj.SaveChanges();
            }
        }

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("All-Customer.aspx");
        }

        protected void upload_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            Label2.Text = ("~/images/" + FileUpload1.FileName);
        }
    }
}