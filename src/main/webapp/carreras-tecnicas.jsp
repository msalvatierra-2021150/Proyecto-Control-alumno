<%-- 
    Document   : carreras-tecnicas
    Created on : Aug 19, 2022, 4:53:07 PM
    Author     : Michael Steven Salvatierra Ramirez
    Carne: 2021150
    Codigo tecnico: IN5BM
    Jornada: Matutina
    Grado: 5to Perito en informatica 
    Profesor: Lic. Jorge Luis Perez Canto
    Grupo presencial: 2 (Lunes)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <title>Fundación Kinal</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="./assets/css/hoja-estilo-kinal.css"/>
</head>

<body>
    <header>
        <!-- Aquí va el encabezado de la página -->
        <img src="./assets/images/logo-kinal.png"/>
    </header>

    <!-- Cabecera -->
    <jsp:include page="./WEB-INF/paginas/comunes/cabecera.jsp"/>
    
    <main>
        <section class="cards-container">
            <div class="row row-cols-1 row-cols-md-4 g-4">
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/images/mecanica.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Mecánica Automotriz</h5>
                            <p class="card-text">Autoestudio Universidad Honda Japón, mecanismos servo asistidos, mecánica de motores diésel y gasolina, sistemas de ignición e inyección. Diagnóstico computarizado.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/images/electricidad.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Electricidad Industrial</h5>
                            <p class="card-text">Cableado estructurado, instalaciones eléctricas domiciliares, comerciales e industriales, soldadura exotérmica, transferencias eléctricas, motores eléctricos, automatización industrial, domótica, energías renovables.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/images/electronica.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Electrónica Industrial</h5>
                            <p class="card-text">Electrónica analógica, digital y de potencia, micro controladores, máquinas eléctricas, controladores lógicos programables, redes industriales, electroneumática, robótica.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/images/informatica.webp" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Informática</h5>
                            <p class="card-text">Desarrollo de aplicaciones web y móviles con Java, Microsoft, Visual Studio, Oracle y diseño de redes informáticas con Cisco System.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="./WEB-INF/paginas/comunes/pie-pagina.jsp"/>
    
    <script type="text/javascript" src="./assets/js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="./assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="./assets/js/script.js"></script>
    <!--
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    -->
    
    <script type="text/javascript" src="./assets/js/bootstrap.bundle.js"></script>
</body>

</html>