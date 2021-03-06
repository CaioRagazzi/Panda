﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label1.Text = "Informar login e/ou senha";
            return;
        }
        else
        {
            if (TextBox2.Text == "")
            {
                Label1.Text = "Informar login e/ou senha";
                return;
            }
           
        }

        verificalogin(TextBox1.Text, TextBox2.Text);
    }

    public void verificalogin(string login, string senha)
    {
        string precedure = "VerificaLogin";
        string connectionString = ConfigurationManager.ConnectionStrings["Panda"].ConnectionString;
        string pegalogin = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            using (SqlCommand cmd = new SqlCommand(precedure, connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@usuario", login);
                cmd.Parameters.AddWithValue("@senha", senha);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
                    Response.Redirect("CadastroProduto.aspx");
                }
                else
                {
                    Label1.Text = "Login e/ou senha inválido!";
                }

            }
        }
    }
}
