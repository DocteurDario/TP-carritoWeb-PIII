<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebCarritoPIII.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Carrito</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            foreach (dominio.Articulo item in listaArticulo)
            {
        %>
        
            <div class="col">
                <div class="card">
                    <img src="<%:item.imagen.imagenUrl %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: item.nombre%></h5>
                        <p class="card-text"><%: item.descripcion %></p>
                        <asp:Button ID="BtnComprar"  runat="server" Text="Comprar" CssClass="btn btn-outline-success" />
                    </div>
                </div>
            </div>
        <% 
            }
        %>
    </div>



</asp:Content>
