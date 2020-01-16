using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_MedicalTest.Main
{
    public partial class Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                var parameter = SqlDataSource1.InsertParameters;
                parameter["PatientID"].DefaultValue = DropDownList1.SelectedValue;
                parameter["ParticularID"].DefaultValue = DropDownList2.SelectedValue;
                try
                {
                    SqlDataSource1.Insert();
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message.ToString());
                }
            }
        }
    }
}