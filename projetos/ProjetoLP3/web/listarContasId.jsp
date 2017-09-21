<%-- 
    Document   : listarContasId
    Created on : 01/09/2017, 20:59:13
    Author     : 31519717
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
        <h1>Contas</h1>
        <%
            Long nrconta
                    = (Long) request.getAttribute("listar_conta");
        %>
        <%if (contas.size() > 0) { %>
        <table>
            <% for (Conta c : contas) {%>
            <tr>
                <td><%=c.getNumero()%></td>
                <td><%=c.getSaldo()%></td>
            </tr>
            <%}%>
        </table>
        <%}%>
    </body>
</html>
