using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace ConsulSol.PAGES
{
    public partial class ConsultasProgramadas : System.Web.UI.Page
    {
        public static int b = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            cm.grid(GridView1, "citasPro");
            if (b == 0)
            {
                b = 1;
                cm.combo_marisol(DropDownList1, "SELECT estadoC from estado;");
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{

        //}

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("CambiarEC", cm.conectar);

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@p_id_consulta", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@p_id_estado", DropDownList1.Text);

                    cmd.ExecuteScalar();
                    cm.leer.Close();
                    cm.cerrar();
                    cm.grid(GridView1, "EXEC citasPro;");
                    MessageBox.Show("¡Actualización exitosa!");
                    TextBox1.Text = string.Empty;
                    DropDownList1.SelectedIndex = 0;
                    cm.grid(GridView1, "EXEC citasPro;");
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