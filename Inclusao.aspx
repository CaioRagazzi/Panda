<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inclusao.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="90px" ImageUrl="http://www.televendasecobranca.com.br/wp-content/uploads/2013/01/Orbium-investe-em-monitoramento-de-marcas-e-pessoas-em-redes-sociais-televendas-cobranca.jpg" OnClick="ImageButton1_Click" Width="208px" />
        <br />
        <asp:Label ID="Label1" runat="server" Width="208px"></asp:Label>
    
        <br />
        <br />
        NOME:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        CPF:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        ENDEREÇO:<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Width="208px"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="ENVIAR" OnClick="Button1_Click1" Width="65px" />
    
    &nbsp;<asp:Button ID="Button2" runat="server" Text="SAIR" Width="65px" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
