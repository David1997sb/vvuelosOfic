<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APItest.aspx.cs" Inherits="Vuelos.APItest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $.ajax({
        url:"/add.php ",
        method:"POST", //First change type to method here

        data:{
            userName: "dsalas", // Second add quotes on the value.
            password: "admin"
        },
        success:function(response) {
         document.getElementById("disp").innerHTML =response;
       },
       error:function(){
        alert("error");
       }

      });

        </script>
    </form>
</body>
</html>
