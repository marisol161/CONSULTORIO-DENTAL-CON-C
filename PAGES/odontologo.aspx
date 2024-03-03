<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="odontologo.aspx.cs" Inherits="ConsulSol.PAGES.odontologo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
    <title>Registro de odontologos</title>
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
  


        <centered>
           
        <div class="container">
            <h3>Registro de Odontologos</h3>
            <br /><br />
            <div class="row">
                <div class="col col-4">
                     <asp:TextBox ID="txtFiltrar" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button3" runat="server" Text="Filtrar" CssClass="btn btn-secondary" OnClick="Button3_Click" />
<%--                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" CssClass="btn btn-secondary" OnClick="btnFiltrar_Click" />--%>
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button4" runat="server" Text="Actualizar" CssClass="btn btn-dark" OnClick="Button4_Click" />
                    <%--<asp:Button ID="Button3" runat="server" Text="Actualizar" CssClass="btn btn-warning" />--%>
                </div>
                <div class="col col-2">
                    <asp:Button ID="Button5" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Button5_Click" />
<%--                    <asp:Button ID="Button4" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="Button4_Click" />--%>
                </div>

            </div>
            <br /><br />
           

                  <div class="row">
                 
                <div class=" col col-lg-6">
                    <asp:Label ID="Label1" runat="server" Text="Nombre(s): "></asp:Label>
                    <asp:TextBox ID="txtNombreO" runat="server" CssClass="form-control "></asp:TextBox> 
                 </div>
                       </div>
            <br />

             <div class="row">
                <div class="col col-5">
                    <asp:Label ID="Label2" runat="server" Text="Primer apellido: "></asp:Label>  
                    <asp:TextBox ID="txtAO1" runat="server" CssClass="form-control"></asp:TextBox>
                    
                 </div>
                 <div class="col col-5">
                    <asp:Label ID="Label3" runat="server" Text="Segundo apellido: "></asp:Label>
                    <asp:TextBox ID="txtAO2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                 <div class="col col-2">
                    <asp:Label ID="Label4" runat="server" Text="Edad: "></asp:Label>
                    <asp:TextBox ID="txtEdadO" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>

             
               </div>
               <br />

           <%-- ESPACIO --%>
                <div class ="row">
                    
                    <div class =" col col-10">
                         <asp:Label ID="Label5" runat="server" Text="Direccion: "></asp:Label>
                    <asp:TextBox ID="txtDO" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
            <br />

             <%-- ESPACIO --%>

                <div class="row">

                  <div class="col col-3">
                        <asp:Label ID="Label6" runat="server" Text="Telfono: "></asp:Label>
                    <asp:TextBox ID="txtTelO" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                   
                    
                  <div class="col col-3">
                      <asp:Label ID="Label7" runat="server" Text="Cedula: " ></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>

                 <div class="col col-5">
                    <asp:Label ID="Label8" runat="server" Text="Especialidad"></asp:Label>
                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-outline-primary dropdown-toggle"></asp:DropDownList>
                </div>

                </div>
            <br />

             <%-- ESPACIO --%>
      
           
            <br />
    <div class =" row">
        <div class=" col col-3">
            <asp:Button ID="Button1" runat="server" Text="Registrar odontologo" CssClass="btn btn-outline-primary" OnClick="Button1_Click" />
       </div>

        <div class ="col col-3">
    
            <asp:Button ID="Button2" runat="server" Text="Nuevo registro" CssClass="btn btn-outline-warning" OnClick="Button2_Click" />

       </div>

    </div>
            <br /><br />
          
             <asp:GridView ID="GridView1" runat="server" TabIndex="1" BorderWidth="1px" CssClass="table table-striped table-bordered"></asp:GridView>


        </div>

           
         

      </centered>
    </form>
</body>
</html>
