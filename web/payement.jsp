<%-- 
    Document   : payement
    Created on : 28 juin 2022, 14:43:05
    Author     : Avotra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Payment - Brand</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
        <link rel="stylesheet" href="assets/fonts/line-awesome.min.css">
        <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
        <link rel="stylesheet" href="assets/css/vanilla-zoom.min.css">
    </head>
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
                            <li class="nav-item"><a class="nav-link" href="index.jsp">VOIR LES PACK</a></li>
                            <li class="nav-item"><a class="nav-link" href="index.jsp">PERSONALISER</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </nav>
    <main class="page payment-page">
        <section class="clean-block payment-form dark">
            <div class="container">
                <div class="block-heading">
                    <h2 class="text-info">Payment</h2>
                </div>
                <form action="PayementServelet" method="get">
                    <div class="products">
                        <div class="total"><span>Montant du voyage</span><span class="price">$320</span></div>
                    </div>
                    <div class="card-details">
                        <h3 class="title">Credit Card Details</h3>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="mb-3"><label class="form-label" for="num">Card Number</label><input class="form-control" type="text" id="card_number" placeholder="Numero carte bancaire" name="num"></div>
                            </div>
                            <div class="col-sm-4">
                                <div class="mb-3"><label class="form-label" for="code">CODE</label><input class="form-control" type="text" id="cvc" placeholder="Code" name="code"></div>
                            </div>
                            <input type="hidden" name ="idRegionDest" value="1" />
                            <input type="hidden" name ="idRegionDepart" value="2" />
                            <input type="hidden" name ="idHotel" value="1" />
                            <input type="hidden" name ="idCooperative" value="1" />
                            <input type="hidden" name ="idActvitesVoyage" value="1" />
                            <input type="hidden" name ="nbreVoyageurs" value="1" />
                            <input type="hidden" name ="nbreJours" value="1" />
                            <div class="col-sm-12">
                                <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit">Payer</button></div>
                            </div>
                        </div>
                    </div>
                </form>
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
