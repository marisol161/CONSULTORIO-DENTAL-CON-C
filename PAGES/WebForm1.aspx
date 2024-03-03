<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ConsulSol.PAGES.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>  
    <title>Especialidades</title>
</head>
<body>
    <style>
    .custom-header {
        background-color: #007bff;
        color: #ffffff;
    }
</style>

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
  


        <centered>

        <div class="container">
        
            <h4>Especialidad</h4>

            <br /><br />
            <div class="row">
                <div class="col col-3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="col col-2">
                    <asp:Button ID="Button3" runat="server" Text="Filtrar" CssClass="btn btn-secondary" OnClick="Button3_Click" />
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button4" runat="server" Text="Actualizar" CssClass="btn btn-dark" OnClick="Button4_Click" />
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button5" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Button5_Click" />
                </div>

            </div>
            <br />
            <br />
           
            <div class=" row">
                <div class="col col-4 ">
                <asp:Label ID="Label1" runat="server" Text="Nombre especialidad: "></asp:Label>
                    <asp:TextBox ID="txtNombreE" runat="server" CssClass="form-control"></asp:TextBox>

                </div>

                <div class="col col-7">
                    <asp:Label ID="Label2" runat="server" Text="Descripción especialidad:"></asp:Label>
                    <asp:TextBox ID="txtDescE" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

           </div>
            <br />
                <div class="row">
            <div class="col col-4">
          
                <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" CssClass="btn btn-outline-primary" Width="150px" />
          </div>
              
                    <div class="col col-4">
                        <asp:Button ID="Button2" runat="server" Text="Nuevo registro" CssClass="btn btn-outline-warning" OnClick="Button2_Click" />
                    </div>
                    
            </div>
        
        <br/>
        
<asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered">
    <HeaderStyle CssClass="custom-header" />
</asp:GridView>

       
</div>
</centered>




    </form>
</body>
</html>
