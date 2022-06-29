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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>INSERTION PAYEMENT</h1>
        <form action="PayementServelet" method="get">
            <input type="text" name ="code" placeholder="code" />
            <input type="text" name ="num" placeholder="nmero carte bancaire" />
            <input type="hidden" name ="idRegionDest" value="1" />
            <input type="hidden" name ="idRegionDepart" value="2" />
            <input type="hidden" name ="idHotel" value="1" />
            <input type="hidden" name ="idCooperative" value="1" />
            <input type="hidden" name ="idActvitesVoyage" value="1" />
            <input type="hidden" name ="nbreVoyageurs" value="1" />
            <input type="hidden" name ="nbreJours" value="1" />                        
            <button> Payer</button>
        </form>
    </body>
</html>
