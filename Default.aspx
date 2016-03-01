﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="col-md-1" style="width: 150px">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/panda.jpg" Height="82px" Width="137px" />
        </div>
        <br />
        <div class="col-md-1">
            <button type="button" class="btn btn-primary btn-lg">Produtos</button>
        </div>
        <div class="col-md-1">
            <button type="button" class="btn btn-primary btn-lg">Usuários</button>
        </div>
        <div class="col-md-1">
            <asp:Button class="btn btn-primary btn-lg" ID="Button1" runat="server" OnClick="Button1_Click" Text="Sair"/>
            
        </div>
    </form>
</body>
</html>