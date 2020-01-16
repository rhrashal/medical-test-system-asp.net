using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_MedicalTest.Main
{
    public partial class Patients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                var parameter = SqlDataSource1.InsertParameters;
                parameter["PatientName"].DefaultValue = txtName.Text;
                parameter["Age"].DefaultValue = txtAge.Text;
                parameter["MobileNumber"].DefaultValue = txtMobile.Text;
                parameter["DoctorID"].DefaultValue = DropDownList2.SelectedValue;

                try
                {
                    SqlDataSource1.Insert();
                    txtName.Text = "";
                    txtAge.Text = "";
                    txtMobile.Text = "";
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message.ToString());
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    var aaa = (DropDownList)GridView1.FindControl("DropDownList1");
            //    var parameter = SqlDataSource1.UpdateParameters;
            //    parameter["DoctorID"].DefaultValue = aaa.SelectedValue;
            //    SqlDataSource1.Update();
            //}
            //catch (Exception ex)
            //{

            //}
        }
    }
}