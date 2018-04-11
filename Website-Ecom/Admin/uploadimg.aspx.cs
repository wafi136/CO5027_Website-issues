using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Ecom
{
    public partial class uploadimg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string prod_id = Request.QueryString["prod_id"];
            string filename = prod_id + ".jpg";

            Img.ImageUrl = "~/imgproduct/" + filename;
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            string prod_id = Request.QueryString["prod_id"];
            string filename = prod_id + ".jpg";
            string savelocation = Server.MapPath("~/imgproduct/"+ filename);
            imgupcontrol.SaveAs(savelocation);
        }
    }
}