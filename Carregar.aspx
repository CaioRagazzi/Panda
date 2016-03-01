<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Carregar.aspx.cs" Inherits="Carregar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl="http://www.televendasecobranca.com.br/wp-content/uploads/2013/01/Orbium-investe-em-monitoramento-de-marcas-e-pessoas-em-redes-sociais-televendas-cobranca.jpg" Width="208px" />
    
        <br />
        <br />
        Inclua o CPF:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="BUSCARRR" OnClick="Button1_Click" />
        <br />
        <br />
        Nome:
        <asp:Label ID="Label1" Width="208px" runat="server"></asp:Label>
    
        <br />
        <br />
        CPF:
        <asp:Label ID="Label2" Width="208px" runat="server"></asp:Label>
    
        <br />
        <br />
        Endereço:
        <asp:Label ID="Label3" Width="208px" runat="server"></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label4" Width="208px" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
