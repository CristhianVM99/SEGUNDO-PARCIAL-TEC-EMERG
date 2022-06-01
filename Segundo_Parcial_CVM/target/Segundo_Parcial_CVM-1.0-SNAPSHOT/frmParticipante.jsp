
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Proyecto ventas</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
      <jsp:include page="META-INF/Menu.jsp">
              <jsp:param name="opcion" value="participantes"/>
      </jsp:include>
      <div class="container">
          <h1>Formulario De Participantes</h1>
         
          <br>
          <form action="ParticipanteControlador" method="POST">
              <input type="hidden" name="id" value="${participante.id}">
              <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Nombres</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" value="${participante.nombres}" name="nombres" placeholder="Escriba su nombre">
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Apellido</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" value="${participante.apellidos}" name="apellidos" placeholder="Escriba su apellido">
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Seminario</label>
                  <option value=""> Seleccione </option>
                  <select name="id_seminario" class="form-control">
                      <c:forEach var="item" items="${lista_seminarios}">
                          <option value="${item.id}"
                            <c:if test="${participante.id_seminario==item.id}">
                              selected
                            </c:if>
                            >${item.titulo}</option>
                      </c:forEach>
                  </select>
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Confirmacion</label>
                  <select name="confirmado" class="form-control">
                      <option value="1" 
                            <c:if test="${participante.confirmado==1}">
                              selected
                            </c:if>
                      >Confirmar</option>
                      <option value="0"
                            <c:if test="${participante.confirmado==0}">
                              selected
                            </c:if>
                      >Sin Confirmar</option>
                  </select>
              </div>
              <button type="submit" class="btn btn-primary">Enviar</button>
          </form>

      </div>  
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>