using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

using Web_Project_MedicalTest.Models;

namespace Web_Project_MedicalTest.Account
{
    public partial class Register : Page
    {
        protected  void Page_Load(object sender, EventArgs e)
        {
           
            //if (!HttpContext.Current.User.IsInRole("Admin"))
            //{
            //    Response.Redirect("~/Account/Login.aspx");
            //}
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {

           // ApplicationRoleManager roleManager = Context.GetOwinContext().Get<ApplicationRoleManager>();
            //roleManager.RoleExists("")
            //if(!roleManager.RoleExists(DropDownList1.SelectedValue.ToString()))
            //{
            //    IdentityRole role = new IdentityRole();
            //    role.Name = DropDownList1.SelectedValue.ToString();
            //    IdentityResult roleResult =  roleManager.Create(role);
            //    if(roleResult.Succeeded)
            //    {

            //    }
            //}

            //if (roleManager.RoleExists(DropDownList1.SelectedValue.ToString()))
            //{

                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                // var roleManager = 
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
                IdentityResult result = manager.Create(user, Password.Text);
                if (result.Succeeded)
                {
                    // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                    //string code = manager.GenerateEmailConfirmationToken(user.Id);
                    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");


                    //if(!manager.IsInRole(user.Id, DropDownList1.SelectedValue.ToString()))
                    //{
                    //    manager.AddToRole(user.Id, DropDownList1.SelectedValue.ToString());
                    //}

                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    ErrorMessage.Text = result.Errors.FirstOrDefault();
                }
            //}
        }
    }
}