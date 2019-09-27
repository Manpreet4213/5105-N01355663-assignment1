using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01355663_assignment1_Manpreet_Kaur
{
    public partial class Skydiving_review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Page.IsPostBack)
              {
                  Page.Validate();

                if (Page.IsValid)
                {

                    string Skydiving_Place = skydiving_place.Text;
                    string Skidiving_Personcount = skydiving_personcount.Text;
                    string Skydiving_Bestplace = skydiving_bestplace.SelectedValue;
                    string Skydiver_Phone = skydiver_phone.Text;
                    int Skydiving_Reviewrating =Convert.ToInt32(skydiving_reviewrating.Text);

                    skydivingbox.InnerHtml = "Thank you for RSVPing! Your Summary is as follow: <br>";


                    skydivingbox.InnerHtml += " Skydiving Place: " + Skydiving_Place + "<br>";
                    skydivingbox.InnerHtml += "skydiving Personcount: " + Skidiving_Personcount + "<br>";
                    skydivingbox.InnerHtml += " Best Place: " + Skydiving_Bestplace + "<br>";
                    skydivingbox.InnerHtml += " We will contact you in case of any query left at: " + Skydiver_Phone + "<br>";
                    skydivingbox.InnerHtml += " You have given rating " +Skydiving_Reviewrating.ToString() + " star(s) " + "<br>";
                    if (Skydiving_Reviewrating == 0)
                    {
                        skydivingbox.InnerHtml += "You have no experience of skydiving";
                    }

                    if (Skydiving_Reviewrating == 1)
                    {
                        skydivingbox.InnerHtml += "You had a very bad experience of skydiving";
                    }
                    
                    if (Skydiving_Reviewrating == 2)
                    {
                        skydivingbox.InnerHtml += "You had a bad experience of skydiving";
                    }

                    if (Skydiving_Reviewrating == 3)
                    {
                        skydivingbox.InnerHtml += "You had a good experience of skydiving";
                    }

                    if (Skydiving_Reviewrating == 4)
                    {
                        skydivingbox.InnerHtml += "You had a very good experience of skydiving";
                    }

                    if (Skydiving_Reviewrating == 5)
                    {
                        skydivingbox.InnerHtml += "You had a great expaerience of skydiving";
                    }
                }

              }
        }
    }
}