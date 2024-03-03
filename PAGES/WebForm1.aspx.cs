using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace ConsulSol.PAGES
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            cm.grid(GridView1, "EXEC llamarEspecialidad");


        }

        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{

        //}

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("insertarEspecialidad", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_nombreE", txtNombreE.Text);
                    cmd.Parameters.AddWithValue("@p_descripcionE", txtDescE.Text);
                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    txtNombreE.Text = string.Empty;
                    txtDescE.Text = string.Empty;
                    cm.grid(GridView1, "EXEC llamarEspecialidad");

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
            txtNombreE.Text = string.Empty;
            txtDescE.Text = string.Empty;   
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cm.abrir();
            cm.ejecuta("select nombre_especialidad, descripcion_especialidad from especialidad where id_especialidad ='" + TextBox1.Text + "'");
            if (cm.leer.Read())
            {
                txtNombreE.Text = cm.leer[0].ToString();
                txtDescE.Text = cm.leer[1].ToString();
                
            }
            cm.cerrar();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("actualizarEspecialidad", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_especialidad", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@p_nombreE", txtNombreE.Text);
                    cmd.Parameters.AddWithValue("@p_descripcionE", txtDescE.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC llamarEspecialidad;");
                    MessageBox.Show("¡Actualización exitosa!");
                    TextBox1.Text = string.Empty;
                    txtNombreE.Text = string.Empty;
                    txtDescE.Text = string.Empty;
               
                    cm.grid(GridView1, "EXEC llamarEspecialidad");
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
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("eliminarEspecialidad", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_especialidad", TextBox1.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Eliminación exitosa!");
                    cm.grid(GridView1, "EXEC llamarEspecialidad");
                    TextBox1.Text = string.Empty;

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