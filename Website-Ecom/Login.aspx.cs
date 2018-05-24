using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Website_Ecom
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("WafiConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtEmail.Text, txtPsd.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                litLog.Text = "Success login";
            }
            else
            {
                litLog.Text = "Invalid username of password";
            }
        }
             private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/Login.aspx"]);
            }
            else
            {
                String userRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/index.aspx");
                }
            }
        }

       
        protected void btnRegist_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("WafiConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser"); //RegisteredUser
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtEmail2.Text,
                Email = txtEmail2.Text,
            };

            IdentityResult result = manager.Create(user, txtPsd2.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser"); //RegisteredUser
                manager.Update(user);
                LitRegisterError2.Text = "Registration successfully"; //todo:Log in Then
            }
            else
            {
                LitRegisterError2.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}
