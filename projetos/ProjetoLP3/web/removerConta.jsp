%--
Document : removerConta
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
            int result = (Integer) request.getAttribute("remover_conta");
            if (result != -1) {
        %>
        <h1>Conta Removida com Sucesso!</h1>
        
        <%}
        else{
        %>
            <h1>Desculpe, conta não existe!</h1>
        <%
            }
        %>
        <br>
        <input type="button" value="Voltar" onClick="history.go(-1)">
    </body>
</html>