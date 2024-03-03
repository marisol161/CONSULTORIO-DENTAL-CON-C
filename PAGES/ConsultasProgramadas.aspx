<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultasProgramadas.aspx.cs" Inherits="ConsulSol.PAGES.ConsultasProgramadas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
    <title>Consultas programadas</title>
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
          <a class="nav-link" href="ConsultasProgramadas.aspx">Consultas programadas</a>
               </li>
      </ul>
    </div>
  </div>
</nav>
  <br />
        <br />

     <h3>  Consultas programadas</h3>

       

        <br /><br />
        <div class="container">
            <div class ="row">
                <div class="col col-4">
                    <asp:Label ID="Label2" runat="server" Text="Folio: "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-3">
                    <asp:Label ID="Label1" runat="server" Text="Cambiar estado de cita: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList> 
                </div>
               
                
            </div>
            <br />
            <div class="row">
                <div class="col col-4">
                    <asp:Button ID="Button2" runat="server" Text="Actualizar" CssClass="btn btn-warning" OnClick="Button2_Click1" />
                </div>
            </div>
            <br /><br />
            <div class="row">
                <div class="col col-10">
                    <asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered"></asp:GridView>
                </div>
            </div>

        </div>
        


















    </form>
</body>
</html>
