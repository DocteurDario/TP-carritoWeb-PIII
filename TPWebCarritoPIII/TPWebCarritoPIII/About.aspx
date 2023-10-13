<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TPWebCarritoPIII.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Carrito</h1>
    
    <style>
        .button-container{
            margin-top:10px;
        }

    </style>

    <asp:GridView runat="server" ID="dgvCarrito" CssClass="table table-active table-primary text-center" AutoGenerateColumns="true"></asp:GridView>

    <section class="h-100" style="background-color: #eee;">
        <div class="container h-100 py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-10">

                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h3 class="fw-normal mb-0 text-black">Carrito</h3>
                    </div>
                    <asp:Repeater runat="server" ID="repRepeater">
                        <ItemTemplate>
                            <div class="card rounded-3 mb-4">
                                <div class="card-body p-4">
                                    <div class="row d-flex justify-content-between align-items-center">
                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                            <img
                                                src="<%#Eval("imagen.imagenUrl") %>"
                                                class="img-fluid rounded-3"
                                                alt="Imagen del producto <%#Eval("nombre") %>"
                                                onerror="this.src='https://static.wikia.nocookie.net/videojuego/images/9/9c/Imagen_no_disponible-0.png/revision/latest/thumbnail/width/360/height/360?cb=20170910134200'" />
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                            <p class="lead fw-normal mb-2"><%#Eval("nombre")%></p>
                                            <p><span class="text-muted"><%#Eval("descripcion")%> </span></p>
                                        </div>

                                        <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                            <span class="badge text-bg-light"><%#Eval("Cantidad")%></span>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="card">
                        <div class="card-body">
                            <asp:Label Text="Total a pagar:" runat="server" />
                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                           </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
</asp:Content>
