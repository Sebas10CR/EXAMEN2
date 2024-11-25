<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpresaReparacionesTecnologicas.aspx.cs" Inherits="EXAMEN2.Vista.EmpresaReparacionesTecnologicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .section {
            display: flex;
            align-items: flex-start;
            gap: 10px;
        }
    
        
   
        
        .form-container label {
            display: block;
            margin: 5px 0 3px;
        }
        .form-container input {
            width: 250%;
            margin-bottom: 10px;
            padding: 5px;
            font-size: 14px;
        }
        .form-container .buttons {
            margin-top: 10px;
        }
        .form-container .buttons button {
            margin-right: 5px;
        }
        div {
                background:#F7DCC7;
               
         }
       
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="container">
            <h1>Tienda de Arreglos Tecnológicos - Manejo de Datos</h1>

            <!-- Primera Tabla -->
            <h1>DATOS DE USUARIOS</h1>
            <div class="section">
                <div class="grid-container">
                    <asp:GridView ID="GridView1" runat="server" Width="400px"></asp:GridView>
                </div>
                <div class="form-container">
                    <label for="tID">ID:</label>
                    <asp:TextBox ID="tID" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="tNombre">Nombre:</label>
                    <asp:TextBox ID="tNombre" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="tCorreo">Correo:</label>
                    <asp:TextBox ID="tCorreo" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="tTelefono">Teléfono:</label>
                    <asp:TextBox ID="tTelefono" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <div class="buttons">
                        <asp:Button ID="bAgregar" runat="server" Text="Agregar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bAgregar_Click" />
                        <asp:Button ID="bBorrar" runat="server" Text="Borrar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bBorrar_Click" />
                        <asp:Button ID="bModificar" runat="server" Text="Modificar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bModificar_Click" />
                        <br />
                    </div>
                </div>
            </div>

            <!-- Segunda Tabla -->
            <h1>DATOS DE TECNICOS</h1>
            <div class="section">
                <div class="grid-container">
                    <asp:GridView ID="GridView2" runat="server" Width="400px"></asp:GridView>
                </div>
                <div class="form-container">
                    <label for="TextBox1">ID:</label>
                    <asp:TextBox ID="tID2" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="TextBox2">Nombre:</label>
                    <asp:TextBox ID="tNombre2" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="TextBox3">Especialidad:</label>
                    <asp:TextBox ID="tEspecialidad" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <div class="buttons">
                        <asp:Button ID="bAgregar2" runat="server" Text="Agregar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bAgregar2_Click" />
                        <asp:Button ID="bBorrar2" runat="server" Text="Borrar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bBorrar2_Click" />
                        <asp:Button ID="bModificar2" runat="server" Text="Modificar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bModificar2_Click" />
                    </div>
                </div>
            </div>

            <!-- Tercera Tabla -->
            <h1>DATOS DE EQUIPOS</h1>
            <div class="section">
                <div class="grid-container">
                    <asp:GridView ID="GridView3" runat="server" Width="400px"></asp:GridView>
                </div>
                <div class="form-container">
                    <label for="TextBox5">ID:</label>
                    <asp:TextBox ID="tID3" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="TextBox6">Tipo De Equipo:</label>
                    <asp:TextBox ID="tTipoDeEquipo" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="TextBox7">Modelo:</label>
                    <asp:TextBox ID="tModelo" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <label for="TextBox8">ID Del Usuario:</label>
                    <asp:TextBox ID="tIDUsuario" runat="server" BackColor="#CCCCCC" BorderColor="Black"></asp:TextBox>

                    <div class="buttons">
                        <asp:Button ID="bAgregar3" runat="server" Text="Agregar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bAgregar3_Click" />
                        <asp:Button ID="bBorrar3" runat="server" Text="Borrar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bBorrar3_Click" />
                        <asp:Button ID="bModificar3" runat="server" Text="Modificar" BackColor="#3399FF" BorderColor="Black" Font-Names="Arial Black" Font-Size="Medium" OnClick="bModificar3_Click" />
                        
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>