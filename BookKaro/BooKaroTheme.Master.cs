using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;

namespace BookKaro
{
    public partial class BooKaroTheme : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FaceBookConnect.API_Key = "448183715350668";
            FaceBookConnect.API_Secret = "78a4f746029ed668c2a225faa4cb929d";
        if (!IsPostBack)
        {
            if (Request.QueryString["error"] == "access_denied")
            {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                return;
            }

            string code = Request.QueryString["code"];
            if (!string.IsNullOrEmpty(code))
            {
                string data = FaceBookConnect.Fetch(code, "me");
                FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                lblName.Text = faceBookUser.Name;
                ProfileImage.ImageUrl = faceBookUser.PictureUrl;
                FbLogin.Visible = false;
                btnSignIn.Visible = false ;
                btnSignUp.Visible = false;
                lblName.Visible = true;
                ProfileImage.Visible = true;
                LogoutBtn.Visible = true;
            }
        }
        }

        protected void FbLogin_Click(object sender, EventArgs e)
        {
            FaceBookConnect.Authorize("user_photos,email", Request.Url.AbsoluteUri.Split('?')[0]);
            
           

        }

        protected void SigninButton_Click(object sender, EventArgs e)
        {
           
        }
        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            FaceBookConnect.Logout("");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {


          System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type='text/javascript'>");
            sb.Append("$('#modal-signin').modal('show');");
            sb.Append("</script>");
          ScriptManager.RegisterStartupScript(this, this.GetType(), "LaunchServerSide", sb.ToString(), false);



        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            System.Text.StringBuilder sp = new System.Text.StringBuilder();
            sp.Append("<script type='text/javascript'>");
            sp.Append("$('#modal-signup').modal('show');");
            sp.Append("</script>");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "LaunchServerSide", sp.ToString(), false);

        }
     
    }

    public class FaceBookUser
{
    public string Id { get; set; }
    public string Name { get; set; }
    public string UserName { get; set; }
    public string PictureUrl { get; set; }
    public string Email { get; set; }
}}
