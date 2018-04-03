using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            }
            else
            {
                litLoginError.Text = "Invalid username or password"
;            }
             
    }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() {}, userIdentity);
        }

        protected void btnUserReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection")
;
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = TxtEmailReg.Text, Email = TxtEmailReg.Text }
;
            IdentityResult result = manager.Create(user, TxtPasswordReg.Text);
            if (result.Succeeded)

            {
                litReg.Text = "User Registration Successful !";
                ;
            }
            else
            {
                litReg.Text = "An Error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}