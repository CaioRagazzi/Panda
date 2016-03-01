<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroProduto.aspx.cs" Inherits="Cadastro" %>

<asp:Content runat="server" ContentPlaceHolderID="PlaceHolder1">
    <div class="row">
        <div class="col-md-9 col-md-push-3"><input type="text" class="form-control" placeholder="Código" aria-describedby="basic-addon1" /></div>
        <div class="col-md-3 col-md-pull-9">Código de Barras:</div>
    </div>

    <div class="input-group">
        <span class="input-group-addon" id="sizing-addon4">Quantidade</span>
        <input type="text" class="form-control" placeholder="Quantidade" aria-describedby="basic-addon1" />
    </div>
    <div class="input-group">
        <span class="input-group-addon" id="sizing-addon5">Preço</span>
        <input type="text" class="form-control" placeholder="Preço" aria-describedby="basic-addon1" />
    </div>

</asp:Content>
