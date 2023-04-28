<%-- 
    Document   : estudiantes
    Created on : Aug 19, 2022, 5:43:42 PM
    Author     : Michael Steven Salvatierra Ramirez
    Carne: 2021150
    Codigo tecnico: IN5BM
    Jornada: Matutina
    Grado: 5to Perito en informatica 
    Profesor: Lic. Jorge Luis Perez Canto
    Grupo presencial: 2 (Lunes)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="es GT"/>

<!DOCTYPE html>
<html lang="es">

<head>
    <title>Fundación Kinal</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/hoja-estilo-kinal.css"/>
    <script src="../assets/js/fonticon.js"></script>
</head>

<body>
    <header>
        <!-- Aquí va el encabezado de la página -->
        <img src="../assets/images/logo-kinal.png"/>   
    </header>
    
    <jsp:include page="../WEB-INF/paginas/comunes/cabecera.jsp"/> 
    
    <div id="main-header" class="py-2 bg-light text-dark" >
        <div class="container">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <h1>
                        <i class="fas fa-user-cog"></i>Control Estudiante
                    </h1>
                </div>
                <div  class="col-4"></div>
            </div>
        </div>
    </div>

    <main>
        <section id="actions" class="py-4 mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <a href="#" class="btn btn-primary btn-block"> Agregar Estudiante</a>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="estudiante">
            <div class="container mb-5 pb-5">
                <div class="row">
                    <div class="col-12 col-md-9">
                        <div class="card">
                            <div class="card-header">
                                <h4>Listado de Estudiantes</h4>
                            </div>
                        </div>  
                        
                        <table class="table table-striped">
                            <thead class="table-dark">
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Saldo</th>
                                    <th>Editar</th>
                                    <th>Eliminar</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${data}" var="estudiante">
                                    <tr>
                                        <td>${estudiante.id}</td>
                                        <td>${estudiante.nombre} ${estudiante.apellido}</td>
                                        <td>${estudiante.saldo}</td>
                                        <td>
                                                <i class="far fa-edit"></i>Editar
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/ServletEstudiante?accion=eliminar&carne=${estudiante.id}" class="btn btn-secondary">
                                                <i class="fa fa-trash-alt"></i>Eliminar
                                            </a>
                                        </td>
                                        <td></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="col-12 col-md-3">
                        <div class="card text-center bg-success text-white mb-3">
                            <div class="card-body">
                                <h3>Saldo Total</h3>
                                <h4>${saldoTotal}</h4>
                            </div>
                        </div>
                        
                        <div class="card text-center bg-primary text-white mb-3">
                        <div class="card-body">
                            <h3>Total de Estudiantes</h3>
                            <h4>${totalEstudiantes}</h4>
                        </div>
                    </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </section>

    </main>


    <aside>
        <!-- Aquí va ir el contenido secundaio -->
    </aside>

    <!-- Footer -->
    <jsp:include page="../WEB-INF/paginas/comunes/pie-pagina.jsp"/>
    
    <script type="text/javascript" src="../assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="../assets/js/script.js"></script>
    <!--
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    -->
    
    <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>
</body>

</html>
