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
    private SqlConnection conn = new SqlConnection("Server=CAIORAGAZZI;Database=Panda;user=sa;password=caiocaio");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }
    }

    protected void gvbind()
    {
        string connectionString = "Server=CAIORAGAZZI;Database=Panda;user=sa;password=caiocaio";
        string script = "select Produto,COUNT(Produto) as quantidade,Código,Valor,Editora,Id from [dbo].[Produtos] group by Produto,Código,Valor,Editora,Id";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = new SqlCommand(script, conn);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        gvbind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        gvbind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string id = Convert.ToString(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string procedure = ("DeletaProduto");
        conn.Open();
        using (SqlCommand cmd = new SqlCommand(procedure, conn))
        {
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Produto", id);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();

        }


    }
}



