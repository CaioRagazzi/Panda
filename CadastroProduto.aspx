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
                <label for="inputEmail3" class="col-sm-2 control-label">Editora</label>
                <div class="col-md-6">
                    <asp:DropDownList class="btn btn-default dropdown-toggle" ID="DropDownList1" runat="server" Width="297px" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="Nome"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OCR59_TesteConnectionString %>" SelectCommand="SELECT [Nome] FROM [Editoras]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="col-md-6">
                    <br />
                    <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Inserir" Width="405px"/>
                </div>
            </div>
        </div>
    </div>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:BoundField AccessibleHeaderText="Coluna 1" />
            <asp:BoundField DataField="Coluna1" HeaderText="Coluna1" SortExpression="Coluna1" />
        </Columns>
    </asp:GridView>
</asp:Content>
