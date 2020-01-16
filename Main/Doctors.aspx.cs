using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_MedicalTest.Main
{
    public partial class Doctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if ( HttpContext.Current.User.IsInRole("User"))
            //{
            //    Response.Redirect("~/Default.aspx");
            //}
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
           
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
           
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            
        }
    }
}