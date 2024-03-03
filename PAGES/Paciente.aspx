<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paciente.aspx.cs" Inherits="ConsulSol.PAGES.Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
    <title>Registro de pacientes</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="inicio.aspx"> <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="/img/diente.png" Width="40px" />        </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="paciente.aspx">Pacientes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="odontologo.aspx">Odontologos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="tratamientos.aspx">Tratamientos</a>
        </li>
           <li class="nav-item">
          <a class="nav-link" href="WebForm1.aspx">Especialidades</a>
        </li>
           <li class="nav-item">
          <a class="nav-link" href="consulta.aspx">Consulta</a>
        </li>
           <li class="nav-item">
          <a class="nav-link" href="detalleConsulta.aspx">Detalle de consultas</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
  


        
        <centered>
        <div class="container">
           
           <h2>Registro de pacientes</h2> <br />

<div class="row">
    <div class="col col-3">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br /><br />
    </div>
    <div class="col col-2">
        <asp:Button ID="Button1" runat="server" Text="Filtrar" CssClass="btn btn-secondary" OnClick="Button1_Click" />
    </div>
    <div class="col col-2">
        <asp:Button ID="Button2" runat="server" Text="Actualizar" CssClass="btn btn-dark" OnClick="Button2_Click" />
    </div>
    <div class="col col-2">
        <asp:Button ID="Button3" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Button3_Click" />
    </div>
</div>
        
           <div class="row">
               <div class="col col-6">
              <asp:Label ID="Label1" runat="server" Text="Nombre(s): "></asp:Label>
                   <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
               <div class="col col-6">
                      <asp:Label ID="Label2" runat="server" Text="Primer apellido: "></asp:Label>
                    <asp:TextBox ID="txtApe1" runat="server" CssClass="form-control"></asp:TextBox>            
                </div>

           </div>
            <br />
            <div class="row">
                
                <div class="col col-5">
                    <asp:Label ID="Label3" runat="server" Text="Segundo apellido: "></asp:Label>
                    <asp:TextBox ID="txtApe2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-3">
            <asp:Label ID="Label4" runat="server" Text="Edad: "></asp:Label>
                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-3">
                    <asp:Label ID="Label5" runat="server" Text="Telefóno: "></asp:Label>
            <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                </div>
            </div>
           

           <br />
         

            <div class =" row">
                <div class="col col-4">
                    <asp:Button ID="btnRegistrarP" runat="server" Text="Registrar" CssClass="btn btn-outline-primary" Width="150px" OnClick="btnRegistrarP_Click" />
                </div>
                <div class="col col-4">
                    <asp:Button runat="server" Text="Nuevo registro" CssClass="btn btn-outline-warning" OnClick="Unnamed2_Click" ID="btnNuevo"></asp:Button>
                </div>
            </div>

            
            <br />
         
            <asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered"></asp:GridView>
        
            
             </div>
            </centered>

    </form>
</body>
</html>
