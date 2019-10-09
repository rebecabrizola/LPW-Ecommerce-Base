<%--
    Document   : usuarios
    Created on : 09/10/2019, 16:07:55
    Author     : Desenvolvimento
--%>

<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
      <link rel="stylesheet" href="css/bootstrap.min.css">
   </head>
   <body>
      <%
        boolean logado = false;

        if (session != null && session.getAttribute("logado") != null) {
            logado = (boolean) session.getAttribute("logado");
        }

        if (!logado) {
      %>
      <jsp:forward page="login.jsp"/>

      <%
          }

if(logado){
            %>

            <%}%>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nome</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
            <%
                for(int i=0; i<Usuario.getLista().size(); i++){

                    Usuario p = Usuario.getLista().get(i);
                    out.println("<tr>");
                    out.println("<td> "+ (i+1) +" </td>");
                    out.println("<td> "+ p.getNome() +" </td>");
                    out.println("<td> "+ p.getEmail() +" </td>");
                    out.println("</tr>");
                }
      %>


      <h1>Lista de Usuários do Sistema</h1>


   </body>
</html>
