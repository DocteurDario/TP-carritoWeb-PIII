<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPWebCarritoPIII.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle</h1>
    <div class="card" style="width: 300px; height: 550px; display: flex; flex-direction: column; align-items: center; justify-content: center;">
        <asp:Image ID="imgArticulo" runat="server" onerror="this.src='https://static.wikia.nocookie.net/videojuego/images/9/9c/Imagen_no_disponible-0.png/revision/latest/thumbnail/width/360/height/360?cb=20170910134200'" Style="width: 100%; max-height: 400px;" />
        <h5 class="card-title">
            <asp:Label ID="lblNombre" runat="server" />
        </h5>
        <p class="card-text">
            <asp:Label ID="lblDescripcion" runat="server" />
        </p>
        <p class="card-text">
            <asp:Label ID="lblCategoria" runat="server" />
        </p>
        <p class="card-text">
            <asp:Label ID="lblMarca" runat="server" />
        </p>
        <p class="card-text">
            <asp:Label ID="lblPrecio" runat="server" />
        </p>
        <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-outline-success" OnClick="btnVolver_Click" href="#inicio" />
    </div>

</asp:Content>
