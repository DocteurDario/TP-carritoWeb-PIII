<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TPWebCarritoPIII.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Carrito</h1>

    <asp:GridView runat="server" ID="dgvCarrito" DataKeyNames="Id" OnSelectedIndexChanged="dgvCarrito_SelectedIndexChanged" CssClass="table table-active table-primary text-center" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Producto">
                <ItemTemplate>
                    <div class="d-flex">
                        <asp:Image ID="imgArticulo" runat="server" ImageUrl='<%# Eval("imagen.imagenUrl") %>'
                            AlternateText='<%# Eval("nombre") %>'
                            onerror="this.src='https://static.wikia.nocookie.net/videojuego/images/9/9c/Imagen_no_disponible-0.png/revision/latest/thumbnail/width/360/height/360?cb=20170910134200'" 
                            width="100" height="100" />

                        <div class="product-details ml-3">
                            <p class="product-brand"><%#Eval("marca")%></p>
                            <p class="product-name"><%# Eval("nombre") %></p>
                            <p class="product-description"><%# Eval("descripcion") %></p>
                            <p class="product-price"><%# Eval("precio") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowSelectButton="true" SelectText="Eliminar" HeaderText=" " ItemStyle-CssClass="btn btn-outline-secondary" />
        </Columns>
    </asp:GridView>

    <div class="card">
        <div class="card-body">
            <asp:Label ID="lblTotalText" runat="server" Text="Total a pagar:" />
            <asp:Label ID="lblTotal" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
