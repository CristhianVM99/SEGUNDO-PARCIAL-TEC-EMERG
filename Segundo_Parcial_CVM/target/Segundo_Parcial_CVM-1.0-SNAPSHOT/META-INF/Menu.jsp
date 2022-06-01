<%
    String opcion = request.getParameter("opcion");
    
%>          
<div class="text-dark bg-white h-100 p-5 rounded-3">
    <h2>Segundo Parcial TEM-742</h2>
    <p>NOMBRE: CRISTHIAN VILLCA MAMANI</p>
    <p>CARNET: 13185166 LP</p>
</div>
  <header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="LoginControlador" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="ParticipanteControlador" class="nav-link px-2 <%=(opcion.equals("participantes")? "text-white": "text-secondary") %>">Participante</a></li>
          <li><a href="SeminarioControlador" class="nav-link px-2 <%=(opcion.equals("seminarios")? "text-white": "text-secondary") %>">Seminarios</a></li>
        </ul>
      </div>
    </div>
  </header>
        