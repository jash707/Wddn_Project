using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoList_Framework.ToDoList
{
    public partial class ToDoList : System.Web.UI.Page
    {
        ToDoEntities db = new ToDoEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void addTodo_Click(object sender, EventArgs e)
        {
            if(TitleofTodo.Text!="" && DescofTodo.Text != "")
            {
                ToDO t = new ToDO();
                t.UserId = (int)Session["userID"];
                t.Title = TitleofTodo.Text;
                t.Desc = DescofTodo.Text;
                t.Date = DateTime.Now;
                db.ToDOes.Add(t);
                db.SaveChanges();
                Response.Redirect("ToDoList.aspx");
            } 
        }
        protected void logOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}