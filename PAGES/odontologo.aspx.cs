using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Data.SqlClient;

namespace ConsulSol.PAGES
{
    public partial class odontologo : System.Web.UI.Page
    {

        public static int b = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (b == 0)
            {
                b = 1;
                cm.combo_marisol(DropDownList1, "llamarEspecialidadS");
            }

            cm.grid(GridView1, "mostrarOdontologos");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {

                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("insertarOdontologo", cm.conectar);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@p_nombreOdon", txtNombreO.Text);
                    cmd.Parameters.AddWithValue("@p_ape1_Odon", txtAO1.Text);
                    cmd.Parameters.AddWithValue("@p_ape2_Odon", txtAO2.Text);
                    cmd.Parameters.AddWithValue("@p_edad_Odon", txtEdadO.Text);
                    cmd.Parameters.AddWithValue("@p_direccion_Odon", txtDO.Text);
                    cmd.Parameters.AddWithValue("@p_telefono", txtTelO.Text);
                    cmd.Parameters.AddWithValue("@p_cedula", txtCedula.Text);
                    cmd.Parameters.AddWithValue("@p_especialidad", DropDownList1.Text);
                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Registro exitoso!");
                    cm.grid(GridView1, "mostrarOdontologos");
                    txtNombreO.Text = string.Empty;
                    txtAO1.Text = string.Empty;
                    txtAO2.Text = string.Empty;
                    txtEdadO.Text = string.Empty;
                    txtDO.Text = string.Empty;
                    txtTelO.Text = string.Empty;
                    txtCedula.Text = string.Empty;
                    DropDownList1.SelectedIndex = 0;


                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            txtNombreO.Text = string.Empty;
            txtAO1.Text = string.Empty;
            txtAO2.Text = string.Empty;
            txtEdadO.Text = string.Empty;
            txtDO.Text = string.Empty;
            txtTelO.Text = string.Empty;
            txtCedula.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cm.abrir();
            cm.ejecuta("SELECT nombre_odon, ape1_odon, ape2_odon, edad_odon, direccion, telefono, cedula, nombre_especialidad from odontologo  inner join especialidad on odontologo.id_especialidad = especialidad.id_especialidad   where id_odon ='" + txtFiltrar.Text + "'");
            if (cm.leer.Read())
            {
                txtNombreO.Text = cm.leer[0].ToString();
                txtAO1.Text = cm.leer[1].ToString();
                txtAO2.Text = cm.leer[2].ToString();
                txtEdadO.Text = cm.leer[3].ToString();
                txtDO.Text = cm.leer[4].ToString();
                txtTelO.Text= cm.leer[5].ToString();
                txtCedula.Text = cm.leer[6].ToString();
                DropDownList1.Text = cm.leer[7].ToString();
                
            }
            cm.cerrar();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("actualizarOdontologo", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_odontologo", txtFiltrar.Text);
                    cmd.Parameters.AddWithValue("@p_nombreOdon", txtNombreO.Text);
                    cmd.Parameters.AddWithValue("@p_ape1_Odon", txtAO1.Text);
                    cmd.Parameters.AddWithValue("@p_ape2_Odon", txtAO2.Text);
                    cmd.Parameters.AddWithValue("@p_edad_Odon", txtEdadO.Text);
                    cmd.Parameters.AddWithValue("@p_direccion_Odon", txtDO.Text);
                    cmd.Parameters.AddWithValue("@p_telefono", txtTelO.Text);
                    cmd.Parameters.AddWithValue("@p_cedula", txtCedula.Text);
                    cmd.Parameters.AddWithValue("@p_especialidad", DropDownList1.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC mostrarOdontologos;");
                    MessageBox.Show("¡Actualización exitosa!");
                    txtFiltrar.Text = string.Empty;
                    txtNombreO.Text = string.Empty;
                    txtAO1.Text = string.Empty;
                    txtAO2.Text = string.Empty;
                    txtEdadO.Text = string.Empty;
                    txtDO.Text = string.Empty;
                    txtTelO.Text = string.Empty;
                    txtCedula.Text = string.Empty;
                    DropDownList1.SelectedIndex= 0;
                    cm.grid(GridView1, "EXEC mostrarOdontologos;");
                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("eliminarOdontologo", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_odontologo", txtFiltrar.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC mostrarOdontologos;");
                    MessageBox.Show("¡Eliminación exitosa!");
                    txtFiltrar.Text = string.Empty;
                    cm.grid(GridView1, "EXEC mostrarOdontologos;");
                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }
    }
}


