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
       
        //Establishing the MySQL Connection
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
}
