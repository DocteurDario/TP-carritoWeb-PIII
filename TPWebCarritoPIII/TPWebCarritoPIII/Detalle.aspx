<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPWebCarritoPIII.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="card">
            <asp:Image ID="imgArticulo" runat="server" />
            <h5 class="card-title">
                <asp:Label ID="lblNombre" runat="server" /></h5>
            <p class="card-text">
                <asp:Label ID="lblDescripcion" runat="server" /></p>
            <p class="card-text">
                <asp:Label ID="lblCategoria" runat="server" /></p>
            <p class="card-text">
                <asp:Label ID="lblMarca" runat="server" /></p>
            <p class="card-text">
                <asp:Label ID="lblPrecio" runat="server" /></p>
            <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-outline-success" OnClick="btnVolver_Click" />
        </div>
    </div>
</asp:Content>
