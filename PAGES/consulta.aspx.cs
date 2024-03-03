using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ConsulSol.PAGES
{
    public partial class consulta : System.Web.UI.Page
    {
        public static int b = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (b == 0)
            {
                b = 1;
                cm.combo_marisol(DropDownList1, "llamarOdontologoss");
                cm.combo_marisol(DropDownList2, "llamarPacients");
                cm.combo_marisol(DropDownList3, "llamarTratamientoss");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("yyyyMMddHHmmss");

            try
            {
                cm.abrir();

                {


                    cm.ejecuta("EXEC InsertarConsulta '" + Label1.Text + "' ,'" + DropDownList1.Text+ "' ");
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Consulta creada!");
                    cm.combo_marisol(DropDownList1, "llamarOdontologoss");


                }
            }
            catch (Exception ex)
            {
                cm.conectar.Close();
                MessageBox.Show(ex.Message);
            }




        }

        protected void btnAgendar_Click(object sender, EventArgs e)
        {
            try
            {
                cm.abrir();

                {


                    cm.ejecuta("EXEC insertarDC '" + Label1.Text + "' ,'" + DropDownList2.Text + "', '"+DropDownList3.Text+"', '"+TextBox2.Text+"', '"+TextBox3.Text+"' ");
                    cm.leer.Close();
                    cm.cerrar();
                    MessageBox.Show("¡Consulta agendada!");
                    DropDownList2.SelectedIndex = 0;
                    DropDownList3.SelectedIndex = 0;
                    TextBox2.Text = string.Empty; 
                    TextBox3.Text = string.Empty;
                    cm.grid(GridView1,"verDetalles");



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

//monto / 1.16 * 0.16 para calcular el IVA