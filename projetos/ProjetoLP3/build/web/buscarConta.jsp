%--
Document : buscarConta
Created on : 07/04/2014, 20:49:49
--%>
<%@page import="bancodao.Conta"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <%
            Conta conta = (Conta) request.getAttribute("buscar_conta");
            Long nro_conta = (Long) request.getAttribute("nro_conta");
            if (conta != null) {
        %>
        <h1>Conta</h1>
        <table>
            <tr>
                <td><%=conta.getNumero()%></td>
                <td><%=conta.getSaldo()%></td>
            </tr>
        </table>
        <%}
        else{
        %>
            <h1>NÃO EXISTE UMA CONTA COM O NUMERO '<%=nro_conta%>' !</h1>
        <%
            }
        %>
        <br>
        <input type="button" value="Voltar" onClick="history.go(-1)">
    </body>
</html>