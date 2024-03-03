using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Windows.Controls;


namespace ConsulSol
{
    public class cm
    {
        public static string
       conexion = @"Data Source = RJ;
                    Initial Catalog = consultas;
                    User Id= marisol;
                    Password= 1";
        public static SqlConnection conectar = new SqlConnection(conexion);
        public static SqlCommand consulta;
        public static SqlDataReader leer;
        DataSet cuadricula = new DataSet();
        public static void abrir()
        {
            if (conectar.State == ConnectionState.Closed)
            {
                conectar.Open();
                consulta = new SqlCommand();
                consulta.Connection = conectar;
            }
        }
        public static void cerrar()
        {
            if (conectar.State == ConnectionState.Open)
            {
                conectar.Close();
            }
        }
        public static void ejecuta(string strSQL)
        {
            // cmd.CommandType = System.Data.CommandType.Text;
            //consulta  = new SqlCommand(strSQL, conexion);
            consulta.CommandType = System.Data.CommandType.Text;
            consulta.CommandText = strSQL;
            leer = consulta.ExecuteReader();
        }
       public static void combo_marisol(DropDownList lista_marisol, String sql)
       {
        abrir();
        ejecuta(sql);
        lista_marisol.Items.Clear();
        while (leer.Read())
         {
           lista_marisol.Items.Add(leer[0].ToString());
         }
       leer.Close();
        cerrar();
        }

        public static void grid(System.Web.UI.WebControls.GridView tabla, String sql)
        {
            abrir();
            ejecuta(sql);
            leer.Close();
            cerrar();
            DataSet cuadricula = new DataSet();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta);
            adaptador.Fill(cuadricula, "datos");
            tabla.DataSource = cuadricula;
            tabla.DataMember = "datos";
            cuadricula.AcceptChanges();
            tabla.DataBind();


        }

        public static void textBox(System.Web.UI.WebControls.TextBox mostrar, string sql)
        {



        }




    }
}