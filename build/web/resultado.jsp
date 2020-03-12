<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Resultado</h3>
        <br />
        <% float imc = Float.parseFloat(request.getAttribute("imc").toString()); %>
        
        <p>Seu Imc é: <%= imc %> </p>
        <% if(imc < 18.5) { %>
        <p style="blackground-color: red">Muito abaixo do Peso</p>
        <%} else if(imc >= 18.5 && imc <24.9){ %>
        <p style="blackground-color: green">Normal</p>
        <%} else if(imc >= 18.5 && imc < 29.9){ %>
        <p style="blackground-color: yellow">Sobrepeso</p>
        <%} else if(imc >= 30 && imc < 39.9){ %>
        <p style="blackground-color: orange">Obsedade II</p>
        <%} else { %>
        <p style="blackground-color: black">
            <font style="color: white">Obsedade III</font></p>
        <% }%>
        
        <br />
           
    </body>
</html>
