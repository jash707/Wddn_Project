using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoList_Framework
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterId_Click(object sender, EventArgs e)
        {
            ToDoEntities db = new ToDoEntities();
            User u = new User();
            u.Username = UserNameTextbox.Text.ToUpper();
            u.Email = EmailTextBox.Text;
            u.Password = PassTextBox.Text;
            db.Users.Add(u);
            db.SaveChanges();
            Response.Redirect("Login.aspx");
        }
    }
}