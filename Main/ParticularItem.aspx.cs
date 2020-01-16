using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_MedicalTest.Main
{
    public partial class Particulars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void ObjectDataSource1_Updating(object sender, ObjectDataSourceMethodEventArgs e)
        {
            try
            {


                Session["ImagePath"] = "";
                var fileUpload1 = (FileUpload)DetailsView1.FindControl("FileUpload1");
                string fileToSave = String.Empty;
                if (fileUpload1.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Image/" + fileUpload1.FileName);
                    fileUpload1.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }



                Session["ImagePath"] = "~/Image/" + fileUpload1.FileName;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
        }

        protected void ObjectDataSource1_Inserting(object sender, ObjectDataSourceMethodEventArgs e)
        {
            try
            {


                Session["ImagePath"] = "";
                var fileUpload1 = (FileUpload)DetailsView1.FindControl("FileUpload2");
                string fileToSave = String.Empty;
                if (fileUpload1.HasFile == true)
                {
                    fileToSave = Server.MapPath("~/Image/" + fileUpload1.FileName);
                    fileUpload1.SaveAs(fileToSave);
                }
                else
                {
                    return;
                }



                Session["ImagePath"] = "~/Image/" + fileUpload1.FileName;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }

        }
    }
}