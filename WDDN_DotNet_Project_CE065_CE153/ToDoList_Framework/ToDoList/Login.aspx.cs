using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoList_Framework
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginId_Click(object sender, EventArgs e)
        {
            ToDoEntities db = new ToDoEntities();
            string userlogin = UserNameLoginTextbox.Text.ToUpper();
            string passlogin = PassLoginTextBox.Text;
            User u=null;
            u = db.Users.Where(user => user.Username == userlogin && user.Password == passlogin).FirstOrDefault<User>();
            if (u != null)
            {
                Session["username"] = u.Username;
                Session["userID"] = u.Id;
                Response.Redirect("ToDOList.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");     
            }
           
        }
    }
}