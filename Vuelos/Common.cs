using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vuelos
{
    public class Common
    {
        private DateTime today;

        public string getUserLogged()
        {
            string user = HttpContext.Current.Session["usserLogged"].ToString();
            return user;
        }

        public DateTime GetDate()
        {
            today = DateTime.Today;
            return today;
        }

        public string getRegistryType(int registry)
        {
            string type = "";
            switch (registry)
            {
                case 1:
                    type = "Agregar";
                    break;

                case 2:
                    type = "Modificar";
                    break;

                case 3:
                    type = "Eliminar";
                    break;
            }
            return type;
        }

        public string getErrorType(int id)
        {
            string errorType = "";
            switch (id)
            {
                case 1:
                    errorType = "Problemas al modificar";
                    break;
                case 2:
                    errorType = "Problemas al insertar";
                    break;
                case 3:
                    errorType = "Problemas al eliminar";
                    break;
            }
            return errorType;
        }

        public int getRandConsecutiveValue(int initRange, int finalRange)
        {
            Random rand = new Random();
            return rand.Next(initRange, finalRange);
        }
    }
}