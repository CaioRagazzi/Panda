using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Numerics;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Label1.Text == "")
        {
            Label1.Text = "Quem clicou é gay!!!";
        }
        else
        {
            Label1.Text = string.Empty;
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        verificacao(TextBox2.Text);
    }

                    public void inclusao(string nome, string cpf, string endereco)
                    {
                        string queryString = "proc_inserir";
                        string connectionString = "Server=172.31.48.151\\SQLSERVER2008;Database=OCR59_Teste;user=caio.ragazzi;password=1234abcd@";
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            connection.Open();
                            using (SqlCommand cmd = new SqlCommand(queryString, connection))
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@Nome", nome);
                                cmd.Parameters.AddWithValue("@CPF", cpf);
                                cmd.Parameters.AddWithValue("@endereco", endereco);
                                try
                                {
                                    cmd.ExecuteNonQuery();
                                }
                                catch (Exception e)
                                { throw new Exception("Erro encontrado: " + e); }
                            }

                            Label2.Text = "Dados adicionados!";
                        }

                    }
                    public void verificacao(string cpf)
                    {
                        string queryString = "proc_retornar";
                        string connectionString = "Server=172.31.48.151\\SQLSERVER2008;Database=OCR59_Teste;user=caio.ragazzi;password=1234abcd@";
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            connection.Open();
                            using (SqlCommand cmd = new SqlCommand(queryString, connection))
                            {
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@CPF", cpf);

                                SqlDataReader reader = cmd.ExecuteReader();

                                if (reader.HasRows)
                                {
                                    Label2.Text = "CPF já existente na base!";
                                }
                                else
                                {
                                    inclusao(TextBox1.Text, TextBox2.Text, TextBox3.Text);
                                }
                            }
                        }
                    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx");
    }
}