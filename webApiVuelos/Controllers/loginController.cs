using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using webApiVuelos.Models;

namespace webApiVuelos.Controllers
{
    public class loginController : ApiController
    {

        User[] usr = new User[]
        {
            new User{userName="dsalas", password="admin"}
        };

        [Route("api/login/getUserAuthentication")]
        public IHttpActionResult getUserAuthentication(User userr)
        {
            var user = usr.FirstOrDefault((p) => p.userName == userr.userName && p.password==userr.password);
            if (user.userName == null || user.password==null)
            {
                return NotFound();
            }
            return Ok(user);
        }
        [Route("api/login/GetAllUsers")]
        [HttpGet]
        public IEnumerable<User> GetAllUsers()
        {
            return usr;
        }
    }
}
