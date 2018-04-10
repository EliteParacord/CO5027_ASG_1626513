using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace EliteParacord.Pages
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


            var user = userManager.Find(TxtLoginEmail.Text, TxtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                litLoginError.Text = "Log-in Successful !";
                Response.Redirect("~/Admin/index.aspx");

            }
            else
            {
                litLoginError.Text = "Invalid username or password";
                ; }

        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString ["~/Pages/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Pages/Login.aspx"]);
            }

            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();

                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/index.aspx");
                }
            }
        }


        protected void btnUserReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = TxtEmailReg.Text, Email = TxtEmailReg.Text };

            var IdentityDbContext = new IdentityDbContext("IdentityConnection");
            var roleStore = new RoleStore<IdentityRole>(IdentityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);


            IdentityRole adminRole = new IdentityRole("Registereduser");
            roleManager.Create(adminRole);


            IdentityResult result = manager.Create(user, TxtPasswordReg.Text);
            if (result.Succeeded)

            {
                manager.AddToRole(user.Id, "Registereduser");
                manager.Update(user);

                litReg.Text = "User Registration Successful !";

            }
            else
            {
                litReg.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}

