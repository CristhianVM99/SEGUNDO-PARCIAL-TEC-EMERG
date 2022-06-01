

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar Seminario</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
      <jsp:include page="META-INF/Menu.jsp">
              <jsp:param name="opcion" value="seminarios"/>
      </jsp:include>
      <div class="container">
          <h1>Formulario De Seminario</h1>
          
          <br>
          <form action="SeminarioControlador" method="POST">
              <input type="hidden" name="id" value="${seminario.id}">
              <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label">Titulo</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" value="${seminario.titulo}" name="titulo" placeholder="Escriba el titulo">
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Fecha</label>
                  <input type="Date" class="form-control" id="exampleInputPassword1" value="${seminario.fecha}" name="fecha" placeholder="Escriba la fecha">
              </div>
              <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Cupos</label>
                  <input type="text" class="form-control" id="exampleInputPassword1" value="${seminario.cupo}" name="cupo" placeholder="Escriba el numero de cupos">
              </div>
              <button type="submit" class="btn btn-primary">Enviar</button>
          </form>

      </div>  
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  </body>
</html>