
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Calculo do IMC</h3>
        <br/>
        <form action="IMCServlet.java" method="get">
            <table>
                <tr>
                    <td>Peso(Kg)</td>
                    <td><input type="text" name="peso" /></td>
                </tr>
                 <tr>
                    <td>Altura(m)</td>
                    <td><input type="text" name="Altura" /></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="Submit" Value="Calcular" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
