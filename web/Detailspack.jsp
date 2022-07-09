<%-- 
    Document   : Detailspack
    Created on : 23 juin 2022, 17:44:07
    Author     : rog
--%>

    <%@page import="java.util.Vector"%>
        <%@page import="model.DetailsparPack"%>
            <%@page import="dbtable.DBTable"%>
                <%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <% 
    Vector<DetailsparPack> resultat =(Vector<DetailsparPack>) request.getAttribute("resultat");
%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <body>
        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
            <div class="container"><a class="navbar-brand logo" href="#">Voyage</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.html">VOIR LES PACK</a></li>
                    </ul>
                </div>
                <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
                    <div class="container"><a class="navbar-brand logo" href="#">Voyage</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navcol-2">
                            <ul class="navbar-nav ms-auto">
                                <li class="nav-item"><a class="nav-link" href="index.html">VOIR LES PACK</a></li>
                                <li class="nav-item"><a class="nav-link" href="index.html">PERSONALISER</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </nav>
        <main class="page product-page">
            <section class="clean-block clean-product dark">
                <div class="container">
                    <div class="block-heading">
                        <h2 class="text-info">Personnalisez votre voyage</h2>
                    </div>
                <div class="block-content">
                    <div class="product-info">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="gallery">
                                    <div id="product-preview" class="vanilla-zoom">
                                        <div class="zoomed-image" style="padding: 20px;"><img class="img-fluid d-block small-preview" src="assets/img/tech/277607.jpg" style="width: 100%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info">
                                    <h3><% out.print(resultat.elementAt(0).getlieu()); %></h3>
                                    <p>Hotel :&nbsp;<a href="#"><% out.print(resultat.elementAt(0).getHotel()); %></a><br>Cooperative:  <% out.print(resultat.elementAt(0).getcooperative()); %><br>Nombre de voyageurs: <% out.print(resultat.elementAt(0).getnbreVoyageurs()); %><br>Nombre de jour: <% out.print(resultat.elementAt(0).getnbrejours()); %></p>
                                    <div class="price">
                                            <h3><% out.print(resultat.elementAt(0).getprix()); %></h3>
                                        </div><a href="#"><button class="btn btn-primary" type="button"><i class="icon-plane"></i>Voyager</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <footer class="page-footer dark">
            <div class="footer-copyright">
                <p>© 2022 Copyright Text</p>
            </div>
        </footer>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
        <script src="assets/js/vanilla-zoom.js"></script>
        <script src="assets/js/theme.js"></script>
    </body>        
</html>