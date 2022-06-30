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
                        <html>

                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <title>JSP Page</title>
                        </head>

                        <body>
                            <p>Lieu :
                                <% out.print(resultat.elementAt(0).getlieu()); %>
                            </p>
                            <p>Hotel :
                                <% out.print(resultat.elementAt(0).getHotel()); %>
                            </p>
                            <p>Cooperative :
                                <% out.print(resultat.elementAt(0).getcooperative()); %>
                            </p>
                            <p>Nombre de voyageurs :
                                <% out.print(resultat.elementAt(0).getnbreVoyageurs()); %>
                            </p>
                            <p>Nombre de jour :
                                <% out.print(resultat.elementAt(0).getnbrejours()); %>
                            </p>


                            <p>visiter
                                <% out.print(resultat.elementAt(0).getlieu()); %> pendant
                                    <% out.print(resultat.elementAt(0).getnbrejours()); %> pour un prix imbattable de :
                                        <% out.print(resultat.elementAt(0).getprix()); %>
                            </p>
                        </body>

                        </html>