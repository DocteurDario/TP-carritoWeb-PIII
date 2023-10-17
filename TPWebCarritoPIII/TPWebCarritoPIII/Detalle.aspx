<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPWebCarritoPIII.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   <div class="container center">
       <h1 class="text-center">Detalle Del Producto</h1>
    <div class="row ">
    <!-- Detalle -->
    <div class="col-md-6">
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
    </div>
    <!-- Lista de imágenes -->
    <div class="col-md-6 mt-4">
                <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center text-center d-flex">
                    <asp:GridView runat="server" ID="dgvImagen" CssClass="table table-active dark text-center" AutoGenerateColumns="false">
                        <columns>
                            <asp:TemplateField HeaderText="Imagen del producto">
                                <itemtemplate>
                                    <div class="d-flex">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imagenUrl") %>' onerror="this.src='https://static.wikia.nocookie.net/videojuego/images/9/9c/Imagen_no_disponible-0.png/revision/latest/thumbnail/width/360/height/360?cb=20170910134200'" CssClass="img-thumbnail" />
                                    </div>
                                </itemtemplate>
                            </asp:TemplateField>
                        </columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
