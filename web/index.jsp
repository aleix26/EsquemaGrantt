<%-- 
    Document   : index
    Created on : 19-mar-2017, 17:28:22
    Author     : alcampo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Projectes</title>
  </head>
  <h1>Projectes i tasques</h1>
  <body>
  <form action="controlador">
    Nom del projecte <input type="text" name="nom"><br/>
    <br/>
    <input type="submit" name="save" value="Guardar" >
  </form>
    
     <c:forEach var='projecte' items='${projectes}'>
        
        <p>Nom del projecte: ${projecte.nom}</p>
        <p>Tasca : ${tasca.nom}</p><br>
    <p>Descripcio : ${tasca.descripcio}</p><br>
    <p>Durada de la tasca : ${tasca.getNdies()} </p><br>
     <form action="controlador">
    <input type="hidden" name="prCodi" value="${projecte.codi}" >     
    <input type="submit" name="detall" value="Detalls" >
    </form>
    </c:forEach>
    
    
    
    
  </form>
  </body>
</html>
