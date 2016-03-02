using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        //Establishing the SQL Connection
        SqlConnection conn = new SqlConnection("Server=172.31.48.151\\SQLSERVER2008;Database=OCR59_Teste;user=caio.ragazzi;password=1234abcd@");

        string query;
        SqlCommand SqlCommand;
        SqlDataReader reader;

        SqlDataAdapter adapter = new SqlDataAdapter();
        //Open the connection to db
        conn.Open();

        //Generating the query to fetch the contact details
        query = "select * from [dbo].[Produtos]";

        SqlCommand = new SqlCommand(query, conn);
        adapter.SelectCommand = new SqlCommand(query, conn);
        //execute the query
        reader = SqlCommand.ExecuteReader();
        //Assign the results 
        GridView1.DataSource = reader;

        //Bind the data
        GridView1.DataBind();
    }

    public void CarregarGridView()
    {
        GridView1.DataSource = GridView1;
        GridView1.DataBind();
    }
    protected void TaskGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        //Bind data to the GridView control.
        GridView1.DataBind();
    }

    public void TaskGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //Set the edit index.
        GridView1.EditIndex = e.NewEditIndex;
        //Bind data to the GridView control.
        GridView1.DataBind();
    }

    public void TaskGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Reset the edit index.
        GridView1.EditIndex = -1;
        //Bind data to the GridView control.
        GridView1.DataBind();
    }

    public void TaskGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Retrieve the table from the session object.
        DataTable dt = (DataTable)Session["TaskTable"];

        //Update the values.
        GridViewRow row = GridView1.Rows[e.RowIndex];
        dt.Rows[row.DataItemIndex]["Id"] = ((TextBox)(row.Cells[1].Controls[0])).Text;
        dt.Rows[row.DataItemIndex]["Description"] = ((TextBox)(row.Cells[2].Controls[0])).Text;
        dt.Rows[row.DataItemIndex]["IsComplete"] = ((CheckBox)(row.Cells[3].Controls[0])).Checked;

        //Reset the edit index.
        GridView1.EditIndex = -1;

        //Bind data to the GridView control.
        GridView1.DataBind();
    }

}
