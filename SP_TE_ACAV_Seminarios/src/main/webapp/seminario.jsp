<%-- 
    Document   : seminario
    Created on : 31-05-2022
    Author     : Alison Cielo Alaro Vino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html> 
<html lang="es">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Seminarios</title>
    </head>
    
    <style>
        .bor {
            margin-left: 36%;
            margin-right: 36%;
            border: black 2px solid;
            padding-left: 50px;

        }
    </style>

    <body>
        <div class="bor" style="text-align: left;"  >
            <h5>    SEGUNDO PARCIAL TEM - 742</h5>
            <h5>    Nombre : Alison Cielo Alaro Vino</h5>
            <h5>    Carnet : 9173259 L.P.</h5>
        </div> 
        <br>
        <div class="container">
            <h2><center>Seminarios Disponibles</center></h2>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="seminario" />
            </jsp:include>

            <br>
            <a href="SeminarioController?action=add" class="btn btn-primary btn-sn"><i class="fa-solid fa-circle-plus"></i>Nuevo</a>
            <table class="table table-striped">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Fecha</th>
                    <th>Cupo</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${seminario}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.fecha}</td>
                        <td>${item.cupo}</td>
                        <td><a href="SeminarioController?action=edit&id=${item.id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="SeminarioController?action=delete&id=${item.id}"><i class="fa-solid fa-trash-can"></i></a></td>
                    </tr>
                </c:forEach>
            </table>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>
