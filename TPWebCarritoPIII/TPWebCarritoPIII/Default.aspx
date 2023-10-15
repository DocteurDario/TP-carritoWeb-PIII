<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebCarritoPIII.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-image {
            width: 100%;
            height: 275px;
            object-fit: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tienda Verde</h1>
    <div class="input-group input-group-lg mb-3">
        <asp:TextBox ID="TxtFilter" runat="server" CssClass="form-control input-lg"></asp:TextBox>
        <div class="input-group-append">
            <asp:Button ID="BtnFilter" Text="Buscar" CssClass="btn btn-outline-success btn-lg" runat="server" OnClick="BtnFilter_Click" />
        </div>
    </div>
    <div class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center text-center d-flex">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col">
                        <div class="card" style="width: 300px; height: 550px;">
                            <img src="<%#Eval("imagen.imagenUrl")%>" class="card-image"
                                alt="Imagen del producto <%#Eval("nombre") %>"
                                onerror="this.src='https://static.wikia.nocookie.net/videojuego/images/9/9c/Imagen_no_disponible-0.png/revision/latest/thumbnail/width/360/height/360?cb=20170910134200'" />
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("nombre")%></h5>
                                <p class="card-text"><%#Eval("descripcion")%></p>
                                <p class="card-text"><%#Eval("categoria")%></p>
                                <p class="card-text"><%#Eval("marca")%></p>
                                <p class="card-text"><%#Eval("precio")%></p>
                                <asp:Button ID="BtnComprar" runat="server" Text="Comprar" CssClass="btn btn-outline-success" CommandArgument='<%#Eval("id") %>' CommandName="ArticuloId" OnClick="BtnComprar_Click" />
                                <a href="Detalle.aspx?id=<%#Eval("id")%>">Ver Detalle</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
