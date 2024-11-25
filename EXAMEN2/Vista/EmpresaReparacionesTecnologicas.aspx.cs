using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EXAMEN2.CapaLogica;
using EXAMEN2.CapaModelo;

namespace EXAMEN2.Vista
{
    public partial class EmpresaReparacionesTecnologicas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
            LlenarGrid2();
            LlenarGrid3();
        }
        //METODO PARA MOSTRAR ALERTA
   
        public static void MostrarAlerta(Page page, string message)
        {
            string script = $"<script type='text/javascript'>alert('{message}');</script>";
            ClientScriptManager cs = page.ClientScript;
            cs.RegisterStartupScript(page.GetType(), "AlertScript", script);
        }
        //METODO PARA AGREGAR USUARIOS
        protected void bAgregar_Click(object sender, EventArgs e)
        {
           
            clsUsuario.Nombre= tNombre.Text;
            clsUsuario.CorreoElectronico = tCorreo.Text;
            clsUsuario.Telefono = tTelefono.Text;
            if (Usuarios.AgregarUsuarios(clsUsuario.Nombre,clsUsuario.CorreoElectronico,clsUsuario.Telefono) > 0)
            {
                MostrarAlerta(this, "----Usuario Ingresado Correctamente----");
                LlenarGrid();
            }
            else
            {
                MostrarAlerta(this, "Error al ingresar usuario :(...");
            }
        }
        //METODO PARA ELIMINAR USUARIOS
        protected void bBorrar_Click(object sender, EventArgs e)
        {
            clsUsuario.UsuarioID = int.Parse(tID.Text);
            if (Usuarios.BorrarUsuarios(clsUsuario.UsuarioID) > 0)
            {
                MostrarAlerta(this, "----Usuario Eliminado Correctamente----");
                LlenarGrid();
            }
            else
            {
                MostrarAlerta(this, "Error al eliminar usuario :(...");
            }
        }
        //METODO PARA MODIFICAR USUARIOS
        protected void bModificar_Click(object sender, EventArgs e)
        {
            clsUsuario.UsuarioID = int.Parse(tID.Text);
            clsUsuario.Nombre = tNombre.Text;
            clsUsuario.CorreoElectronico = tCorreo.Text;
            clsUsuario.Telefono = tTelefono.Text;
            if (Usuarios.ModificarUsuarios(clsUsuario.UsuarioID,clsUsuario.Nombre, clsUsuario.CorreoElectronico, clsUsuario.Telefono) > 0)
            {
                MostrarAlerta(this, "----Usuario Modificado Correctamente----");
                LlenarGrid();
            }
            else
            {
                MostrarAlerta(this, "Error al Modificar usuario :(...");
            }

        }

     
        //METODO PARA INGRESAR TECNICOS
        protected void bAgregar2_Click(object sender, EventArgs e)
        {
            clsTecnico.Nombre = tNombre2.Text;
            clsTecnico.Especialidad = tEspecialidad.Text;
           
            if (Tecnicos.AgregarTecnico(clsTecnico.Nombre, clsTecnico.Especialidad) > 0)
            {
                MostrarAlerta(this, "----Tecnico Ingresado Correctamente----");
                LlenarGrid2();
            }
            else
            {
                MostrarAlerta(this, "Error al ingresar tecnico :(...");
            }
        }
        //METODO PARA BORRAR TECNICOS
        protected void bBorrar2_Click(object sender, EventArgs e)
        {

            clsTecnico.TecnicoID = int.Parse(tID2.Text);
            if (Tecnicos.BorrarTecnico(clsTecnico.TecnicoID) > 0)
            {
                MostrarAlerta(this, "----Tecnico Elimando Correctamente----");
                LlenarGrid2();
            }
            else
            {
                MostrarAlerta(this, "Error al Eliminar tecnico :(...");
            }
        }
        //METODO PARA MODIFICAR TECNICOS
        protected void bModificar2_Click(object sender, EventArgs e)
        {
            clsTecnico.TecnicoID = int.Parse(tID2.Text);
            clsTecnico.Nombre = tNombre2.Text;
            clsTecnico.Especialidad = tEspecialidad.Text;
            
            if (Tecnicos.ModificarTecnico(clsTecnico.TecnicoID, clsTecnico.Nombre, clsTecnico.Especialidad) > 0)
            {
                MostrarAlerta(this, "----Tecnico Modificado Correctamente----");
                LlenarGrid();
            }
            else
            {
                MostrarAlerta(this, "Error al Modificar tecnico :(...");
            }

        }

     
        //METODO PARA AGREGAR EQUIPO
        protected void bAgregar3_Click(object sender, EventArgs e)
        {
            clsEquipo.TipoEquipo = tTipoDeEquipo.Text;
            clsEquipo.Modelo = tModelo.Text;
            clsEquipo.UsuarioID = int.Parse(tIDUsuario.Text);

            if (Equipos.AgregarEquipo(clsEquipo.TipoEquipo, clsEquipo.Modelo, clsEquipo.UsuarioID) > 0)
            {
                MostrarAlerta(this, "----Equipo Ingresado Correctamente----");
                LlenarGrid3();
            }
            else
            {
                MostrarAlerta(this, "Error al ingresar Equipo :(...");
            }

        }
        //METODO PARA BORRAR EQUIPO
        protected void bBorrar3_Click(object sender, EventArgs e)
        {
            clsEquipo.EquipoID = int.Parse(tID3.Text);
            

            if (Equipos.BorrarEquipo(clsEquipo.EquipoID) > 0)
            {
                MostrarAlerta(this, "----Equipo Eliminado Correctamente----");
                LlenarGrid3();
            }
            else
            {
                MostrarAlerta(this, "Error al eliminar Equipo :(...");
            }
        }

        //METODO PARA MODIFICAR EQUIPO
        protected void bModificar3_Click(object sender, EventArgs e)
        {
            clsEquipo.EquipoID = int.Parse(tID3.Text);
            clsEquipo.TipoEquipo = tTipoDeEquipo.Text;
            clsEquipo.Modelo = tModelo.Text;
            clsEquipo.UsuarioID = int.Parse(tIDUsuario.Text);

            if (Equipos.ModificarEquipo(clsEquipo.EquipoID,clsEquipo.TipoEquipo, clsEquipo.Modelo, clsEquipo.UsuarioID) > 0)
            {
                MostrarAlerta(this, "----Equipo Modificado Correctamente----");
                LlenarGrid3();
            }
            else
            {
                MostrarAlerta(this, "Error al modificar Equipo :(...");
            }

        }

    


        //METODOS PARA CONSULTAR LAS TABLAS
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM Usuarios"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();//Refrescar
                        }
                    }
                }
            }
        }

        protected void LlenarGrid2()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM Tecnicos"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView2.DataSource = dt;
                            GridView2.DataBind();//Refrescar
                        }
                    }
                }
            }
        }

        protected void LlenarGrid3()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM Equipos"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView3.DataSource = dt;
                            GridView3.DataBind();//Refrecar
                        }
                    }
                }
            }
        }
    }
}
