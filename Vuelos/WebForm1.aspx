<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Vuelos.WebForm1" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script src='https://www.google.com/recaptcha/api.js'></script>
<head runat="server">
    <title>reCAPTCHA demo: Simple page</title>
     <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="g-recaptcha" data-sitekey="6Le3gX8UAAAAAChw78Q5MdAREjlE8tJsKgjMxeLc"></div>
    </form>
</body>
</html>
