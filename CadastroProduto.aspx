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
                    <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle" Width="297px"></asp:DropDownList>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="col-md-6">
                    <br />
                    <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Inserir" Width="405px" OnClick="Button1_Click"/>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Produto" Width="1162px"  CssClass="table table-hover table-striped" GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="Produto" HeaderText="Produto" />
                            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" />
                            <asp:BoundField DataField="Código" HeaderText="Código" />
                            <asp:BoundField DataField="Valor" HeaderText="Valor" />
                            <asp:BoundField DataField="Editora" HeaderText="Editora" />
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:CommandField ShowEditButton="true" ButtonType="Button" ItemStyle-Width="60" />
                            <%--<asp:CommandField ShowDeleteButton="true" ButtonType="Button" ItemStyle-Width="60" CausesValidation="true"/>--%>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </div>

</asp:Content>


