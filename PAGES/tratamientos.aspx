<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tratamientos.aspx.cs" Inherits="ConsulSol.PAGES.tratamientos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/> 

    <title></title>
</head>
<body>

    
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="inicio.aspx"></a>
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
          <a class="nav-link" href="ConsultasProgramadas.aspx">Consultas programadas</a>
               </li>
        
      </ul>
    </div>
  </div>
</nav>


    <form id="form1" runat="server">
        <div class="container">
            <h2>Tratamientos</h2>
            <br />
            <br />

            <div class="row">
                <div class="col col-3">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button2" runat="server" Text="Filtrar" CssClass="btn btn-secondary" OnClick="Button2_Click" />
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button3" runat="server" Text="Actualizar" CssClass="btn btn-dark" OnClick="Button3_Click" />
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button4" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Button4_Click" />
                </div>

            </div>

            <br /><br />

            <div class="row">
                <div class="col col-5">
                    <asp:Label ID="Label1" runat="server" Text="Nombre del tratamiento:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
               
                    <div class="col col-1">
                        <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                
                
                    <div class="col col-6">
                        <asp:Label ID="Label3" runat="server" Text="Descripción:"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                

            </div>

            <br /><br />
            <div class="row">
                 <div class="col col-2">
                     <asp:Button ID="btnGuardar" runat="server" Text="Guardar registro" CssClass="btn btn-outline-primary" OnClick="btnGuardar_Click" />
                 </div>
                <div class="col col-2">
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo registro" CssClass="btn btn-outline-warning" OnClick="btnNuevo_Click" />
                </div>
            </div>

            <br /><br /><br />
            <h2>Medicos a cargo de tratamientos</h2>
            <br /><br />

            <div class="row">
                <div class="col col-2">
                    <asp:Label ID="Label4" runat="server" Text="Odontologo: "></asp:Label>
                </div>
                <div class="col col-4">
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                </div>
                <div class="col col-4">
                    <asp:Label ID="Label5" runat="server" Text="Tratamiento: "></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="Button1_Click" />
                </div>



            </div>

            <br /><br />
            <asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered"></asp:GridView>



        </div>
    </form>
</body>
</html>
