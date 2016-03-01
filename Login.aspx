<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Incluindo o CSS do Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <style type="text/css">
        .auto-style1 {
            font-family: "Times New Roman";
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/panda.jpg" Height="82px" Width="137px" />
            <br />
            <br />
            <span class="auto-style1">Login</span>
            <div class="row">
                <div class="col-xs-6 col-md-4"></div>
                <div class="col-xs-6 col-md-4">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Digite aqui seu login!"></asp:TextBox>
                </div>
                <div class="col-xs-6 col-md-4"></div>
            </div>
            <span class="auto-style1">Senha</span>
            <div class="row">
                <div class="col-xs-6 col-md-4"></div>
                <div class="col-xs-6 col-md-4">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Digite aqui sua senha!" type="password"></asp:TextBox>
                </div>
                <div class="col-xs-6 col-md-4"></div>
            </div>
        </div>
        <br />
        <span class="auto-style1">
            <asp:Label ID="Label1" runat="server" Style="font-family: 'Times New Roman', Times, serif; font-size: 20px"></asp:Label></span>
        <div class="row">
            <div class="col-xs-6 col-md-4"></div>
            <div class="col-xs-6 col-md-4">
                <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Entrar" OnClick="Button1_Click" />
            </div>
            <div class="col-xs-6 col-md-4"></div>
        </div>
    </form>
</body>
</html>
