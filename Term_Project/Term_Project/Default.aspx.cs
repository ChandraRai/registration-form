using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Term_Project.Models;
using System.Web.ModelBinding;

namespace Term_Project
{
    public partial class Addmember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://nccstoronto.org");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            
            if(address.Value == "")
            {
                address.Value = "Address not provided.";
            }

            if (genre.Value == "")
            {
                genre.Value = "Genre not provided.";
            }

            if (link.Value == "")
            {
                link.Value = "Link not provided.";
            }

            if (name.Value != "" && contact.Value != ""
                && email.Value != "")
            {
                using (ArtistContext db = new ArtistContext())
                {
                    Artist newMember = new Artist();

                    int MemberID = 0;
                    if (Request.QueryString.Count > 0)
                    {

                    }

                    newMember.Name = name.Value;
                    newMember.Address = address.Value;
                    newMember.Contact = contact.Value;
                    newMember.Email = email.Value;
                    newMember.Genre = genre.Value;
                    newMember.Link = link.Value;

                    if (MemberID == 0)
                    {
                        db.Artists.Add(newMember);
                    }

                    db.SaveChanges();
                    Response.Redirect("thankyou.html");
                }                
            }
            else
            {
                LabelField.Visible = true;
                AttributeCollection myAttribute = LabelField.Attributes;
                myAttribute.CssStyle.Add("Color","red");
                address.Value = "";
                link.Value = "";
                genre.Value = "";
            }             
        }
    }
}