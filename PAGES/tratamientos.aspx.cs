using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Controls;
using System.Windows;

namespace ConsulSol.PAGES
{
    public partial class tratamientos : System.Web.UI.Page
    {
        //
        public static int b = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
     
            cm.grid(GridView1,  "mostrarTratamientoOdontologo");
            if (b == 0)
            {
                b = 1;
                cm.combo_marisol(DropDownList1,"llamarOdontologosCombo");
                cm.combo_marisol(DropDownList2,"llamarTratamientosCombo");
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {

                   
                    cm.ejecuta("EXEC insertarTratamiento '" + TextBox1.Text + "' ,'" + TextBox2.Text+ "', '" + TextBox3 + "' ");
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Registro exitoso!");
                    cm.combo_marisol(DropDownList1, "llamarOdontologosCombo");
                    cm.combo_marisol(DropDownList2, "llamarTratamientosCombo");
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;


                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {


                    cm.ejecuta("EXEC insertarTO '" + DropDownList1.Text + "' ,'" + DropDownList2.Text + "'");
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Registro exitoso!");
                    DropDownList1.SelectedIndex = 0;
                    DropDownList2.SelectedIndex = 0;
                    cm.grid(GridView1,"mostrarTratamientoOdontologo");

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
            cm.abrir();
            cm.ejecuta("select nombre_tratamiento, precio_tratamiento,descripcion_tratamiento from tratamiento where id_tratamiento ='" + TextBox4.Text + "'");
            if (cm.leer.Read())
            {
                TextBox1.Text = cm.leer[0].ToString();
                TextBox2.Text = cm.leer[1].ToString();
                TextBox3.Text = cm.leer[2].ToString();
         
            }
            cm.cerrar();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    SqlCommand cmd = new SqlCommand("actualizarTratamiento", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_tratamiento", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@p_nombreTratamiento", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@p_precioTratamiento", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@p_descripcionTratamiento", TextBox3.Text);
                 
                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                   
                    MessageBox.Show("¡Actualización exitosa!");
                    cm.combo_marisol(DropDownList2, "llamarTratamientosCombo");
                    TextBox4.Text = string.Empty;
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("eliminarTratamiento", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_tratamiento", TextBox4.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Eliminación exitosa!");
                    cm.combo_marisol(DropDownList2, "llamarTratamientosCombo");
                    TextBox4.Text = string.Empty;
                  
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