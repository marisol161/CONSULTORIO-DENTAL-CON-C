<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="ConsulSol.PAGES.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
    <title>Consultas</title>
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


        <div class="container">
            <h2>Agendar citas</h2>
             <div class="row">
                <div class="col col-7">
                    <asp:Label ID="Label2" runat="server" Text="Médico a cargo: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                    <asp:Button ID="btnConsulta" runat="server" Text="+ Nueva Consulta" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />

                </div>
            </div>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Folio consulta: "></asp:Label>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br /><br />
            <br />
            <div class="row">
                <div class="col col-4">
                    <asp:Label ID="Label3" runat="server" Text="Paciente: "></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                </div>
                <div class="col col-4">                                                                                                                         
                    <asp:Label ID="Label4" runat="server" Text="Tratamiento: "></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col col-9">
                    <asp:Label ID="Label5" runat="server" Text="Descripción de la consulta: "></asp:Label>  
                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-2">
                    <asp:Label ID="Label6" runat="server" Text="Precio: "></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <center>
                <asp:Button ID="btnAgendar" runat="server" Text="Agendar cita" CssClass="btn btn-outline-primary" OnClick="btnAgendar_Click" />

            </center>
<br /> 
            <h2>Citados</h2>
            <br />
            <div class="row">
                <div class="col col-7">
             <asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered"></asp:GridView>

                </div>
               
                </div>




        </div>



    </form>
</body>
</html>
