﻿using System;   
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

namespace Vuelos
{
    public partial class AddConsec : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        Encriptioner encriptioner = new Encriptioner();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringServicios"];
            txtbox_prefil.Enabled = false;
            rangoF_Inpu.Enabled = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void btn_actualizar_Click(object sender, EventArgs e)
        {
            try
            {
                if (areFieldsOk())
                {
                    conn.Open();
                    //Ejecuta el stored procedure
                    cmd = new SqlCommand("sp_create_consecutive", conn);
                    //Se indica que la variable de tipo command va ser de tipo stored procedure
                    cmd.CommandType = CommandType.StoredProcedure;
                    //Se agregan los valores de los parametros del stored procedure
                    //cmd.Parameters.Add("@code", SqlDbType.Int).Value = 9;
                    bool a = isRangeOk();
                    bool b = isCorrectData();
                    if (a == false || b == false)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, GetType(),
                "alertMessage", @"alert('Revise la informacion desplegada')", true);
                    }
                    else
                    {
                        int rowsAffected = cmd.ExecuteNonQuery();

                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(),
                   "alertMessage", @"alert('Revise la informacion desplegada')", true);

                }
                
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
            "alertMessage", @"alert('Revise la informacion desplegada')", true);
            }

        }

        public bool isCorrectData()
        {
            bool isCorrect = true;
            cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = dropdown.SelectedItem.Value;
            cmd.Parameters.Add("@consecutive", SqlDbType.VarChar).Value = txt_consecutiv.Text;
            cmd.Parameters.Add("@prefix", SqlDbType.VarChar).Value = txtbox_prefil.Text;
            if (txtbox_prefil.Text.Length > 5)
            {
                isCorrect = false;
            }
            cmd.Parameters.Add("@init_range", SqlDbType.VarChar).Value = rangoI_Inpu.Text;
            cmd.Parameters.Add("@final_range", SqlDbType.VarChar).Value = rangoF_Inpu.Text;
            cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = dropdown.SelectedItem.Value;
            cmd.Parameters.Add("@state", SqlDbType.VarChar).Value = ("disponible");
            return isCorrect;
        }

        protected void checkbox1_CheckedChanged(object sender, EventArgs e)
        {
            txtbox_prefil.Enabled = true;
            checkCheckBoxes();
        }

        protected void checkbox2_CheckedChanged(object sender, EventArgs e)
        {
            rangoF_Inpu.Enabled = true;
            checkCheckBoxes();
        }

        public bool isRangeOk()
        {
            bool isOk = true;
            int initRange;
            int finalRange;
            if (rangoI_Inpu.Text=="" && rangoF_Inpu.Text == "")
            {
                initRange = 0;
                finalRange = 0;
            }
            else
            {
                initRange = Convert.ToInt32(rangoI_Inpu.Text);
                finalRange = Convert.ToInt32(rangoF_Inpu.Text);
            }
             
            if(initRange==0 && finalRange == 0)
            {
                isOk = true;
            }
            if (initRange > finalRange || initRange < 0 || finalRange<0)
            {
                isOk = false;
            }
            return isOk;

        }

        public void checkCheckBoxes()
        {
            if (IsPostBack)
            {
                if (txtbox_prefil.Enabled == true)
                {
                    txtbox_prefil.Enabled = true;
                    checkbox1.Enabled = true;
                }
                else if (rangoF_Inpu.Enabled == true)
                {
                    rangoF_Inpu.Enabled = true;
                    checkbox2.Enabled = true;
                }
            }

        }

        protected void btn_cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Consecutive.aspx");
        }

        public bool areFieldsOk()
        {
            bool areOk = true;
            if(txt_consecutiv.Text==""|| dropdown.SelectedItem.Value== "Selccion un tipo de consecutivo")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(),
           "alertMessage", @"alert('Revise la informacion desplegada')", true);
                areOk = false;
            }

           return areOk;
        }
    }
}