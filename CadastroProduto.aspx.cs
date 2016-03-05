using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Cadastro : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["Panda"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
            populadropdown();
        }
    }

    protected void gvbind()
    {
        string precedure = "ListaProduto";
        string connectionString = ConfigurationManager.ConnectionStrings["Panda"].ConnectionString;
        string pegalogin = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand(precedure, connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();

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
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand(procedure, connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Produto", id);
                cmd.ExecuteNonQuery();
                connection.Close();
                gvbind();

            }
        }


    }

    public void populadropdown()
    {
        string precedure = "VerificaEditoras";
        string connectionString = ConfigurationManager.ConnectionStrings["Panda"].ConnectionString;
        string pegalogin = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand(precedure, connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataReader reader = cmd.ExecuteReader();

                DropDownList1.DataSource = reader;
                DropDownList1.DataTextField = "NomeEditora";
                DropDownList1.DataValueField = "IdEditora";
                DropDownList1.DataBind();

            }
            connection.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string precedure = "InserirProduto";
        string connectionString = ConfigurationManager.ConnectionStrings["Panda"].ConnectionString;
        string pegalogin = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand(precedure, connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Produto", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Código", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Valor", TextBox3.Text);
                cmd.Parameters.AddWithValue("@IdEditora", TextBox4.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                gvbind();
            }
            connection.Close();
        }
    }
}



