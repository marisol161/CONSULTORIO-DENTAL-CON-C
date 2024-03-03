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

namespace ConsulSol.PAGES
{
    public partial class Paciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cm.grid(GridView1, "llamarPaciente");
        }

        protected void btnRegistrarP_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("insertarPaciente", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_nombre_paciente", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@p_ape1_paciente", txtApe1.Text);
                    cmd.Parameters.AddWithValue("@p_ape2_paciente", txtApe2.Text);
                    cmd.Parameters.AddWithValue("@p_edad_paciente", txtEdad.Text);
                    cmd.Parameters.AddWithValue("@p_telefono", txtTel.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC llamarPaciente;");
                    MessageBox.Show("¡Registro exitoso!");
                    txtNombre.Text = string.Empty;
                    txtApe1.Text = string.Empty;
                    txtApe2.Text = string.Empty;
                    txtEdad.Text = string.Empty;
                    txtTel.Text = string.Empty;
                    cm.grid(GridView1, "EXEC llamarPaciente;");
                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }

    

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            txtNombre.Text = string.Empty;
            txtApe1.Text= string.Empty;
            txtApe2.Text= string.Empty;
            txtEdad.Text= string.Empty;
            txtTel.Text= string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //C_M.abrir();
            //MessageBox.Show("Conectado" 

            cm.abrir();
            cm.ejecuta("select nombre_paciente, ape1_paciente, ape2_paciente, edad_paciente, telefono from paciente where id_paciente ='" + TextBox1.Text + "'");
            if (cm.leer.Read())
            {
                txtNombre.Text = cm.leer[0].ToString();
                txtApe1.Text = cm.leer[1].ToString();
                txtApe2.Text = cm.leer[2].ToString();
                txtEdad.Text = cm.leer[3].ToString();
                txtTel.Text = cm.leer[4].ToString();
            }
            cm.cerrar();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("actualizarPaciente", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_paciente", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@p_nombre_paciente", txtNombre.Text);
                    cmd.Parameters.AddWithValue("@p_ape1_paciente", txtApe1.Text);
                    cmd.Parameters.AddWithValue("@p_ape2_paciente", txtApe2.Text);
                    cmd.Parameters.AddWithValue("@p_edad_paciente", txtEdad.Text);
                    cmd.Parameters.AddWithValue("@p_telefono", txtTel.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC llamarPaciente;");
                    MessageBox.Show("¡Actualización exitosa!");
                    TextBox1.Text= string.Empty;
                    txtNombre.Text = string.Empty;
                    txtApe1.Text = string.Empty;
                    txtApe2.Text = string.Empty;
                    txtEdad.Text = string.Empty;
                    txtTel.Text = string.Empty;
                    cm.grid(GridView1, "EXEC llamarPaciente;");
                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("eliminarPaciente", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_paciente", TextBox1.Text);
                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC llamarPaciente;");
                    MessageBox.Show("¡Eliminación exitosa!");
                    TextBox1.Text = string.Empty;
                    cm.grid(GridView1, "EXEC llamarPaciente;");
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