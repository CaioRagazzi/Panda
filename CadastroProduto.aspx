<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroProduto.aspx.cs" Inherits="Cadastro" %>

<asp:Content runat="server" ContentPlaceHolderID="PlaceHolder1">

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <label for="inputEmail3" class="col-sm-2 control-label">Produto</label>
                <div class="col-md-6">
                    <asp:TextBox class="form-control" placeholder="Produto" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>


    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <label for="inputEmail3" class="col-sm-2 control-label">Código</label>
                <div class="col-md-6">
                    <asp:TextBox class="form-control" placeholder="Código de Barras" ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <label for="inputEmail3" class="col-sm-2 control-label">Quantidade</label>
                <div class="col-md-6">
                    <asp:TextBox class="form-control" placeholder="Quantidade" ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <label for="inputEmail3" class="col-sm-2 control-label">Valor</label>
                <div class="col-md-6">
                    <asp:TextBox class="form-control" placeholder="Preço" ID="TextBox4" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="col-md-6">
                    <br />
                    <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Inserir" Width="405px" />
                </div>
            </div>
        </div>
    </div>
        

         
        





    <%--    <div class="row">
        <div class="col-xs-6 col-md-4">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Código</label>
                <div class="col-sm-10">
                    <asp:TextBox class="form-control" placeholder="Código de barras" ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4"></div>
        <div class="col-xs-6 col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-md-4">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Quantidadr</label>
                <div class="col-sm-10">
                    <asp:TextBox placeholder="Quantidade" class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4"></div>
        <div class="col-xs-6 col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-xs-6 col-md-4">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Preço</label>
                <div class="col-sm-10">
                    <asp:TextBox class="form-control" placeholder="Valor" ID="TextBox5" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-xs-6 col-md-4"></div>
        <div class="col-xs-6 col-md-4"></div>
    </div>--%>
</asp:Content>
