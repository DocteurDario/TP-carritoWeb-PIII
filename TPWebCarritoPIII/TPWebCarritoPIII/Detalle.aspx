<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPWebCarritoPIII.Detalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<head runat="server">
    <title>Detalle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Detalle</h1>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtDetalle" runat="server"></asp:TextBox>

        </div>
    </form>
</body>
</html>
