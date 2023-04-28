<%-- 
    Document   : index
    Created on : Aug 19, 2022, 4:48:50 PM
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
        <!-- Aquí va el contenido principal de la página -->
        <section>
            <article>
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <video class="img-fluid" autoplay loop muted style="width: 100%;">
                                <source src="./assets/images/videoSlider.mp4" type="video/mp4"/>
                            </video>
                        </div>
                        <div class="carousel-item">
                            <img src="assets/images/slide0.webp" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/images/slide1.webp" class="d-block w-100">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>    
                <div class="container"> 
                <div class="row">
                    <div class ="col-1 col-md-2"></div>
                    <div class ="col-10 col-md-8">
                        <p class="descripcion">
                            Kinal es un Centro Educativo privado, no lucrativo, dirigido a la formación técnica profesional de
                            jóvenes y adultos, de beneficio colectivo y asistencia social en favor de los sectores más
                            necesitados de la comunidad.
                        </p>
                        <p class="descripcion">
                            Nuestro valor fundamental es enseñar a realizar el trabajo bien hecho, que sea la base de la
                            superación de alumnos y el medio para servir a los demás.
                        </p>
                    </div>
                    <div class ="col-1 col-md-2"></div> 
               <div>
            </div>

            </article>
        </section>
    </main>

    <aside>
        <!-- Aquí va ir el contenido secundaio -->
    </aside>

    <!-- Footer -->
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