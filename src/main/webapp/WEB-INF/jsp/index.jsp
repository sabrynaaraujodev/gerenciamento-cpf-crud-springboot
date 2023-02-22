<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Gerenciamento de Pessoas</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src='<c:url value="/scripts/arquivo.js"/>'></script>
    </head>

    <body>
        <div class="container my-2">
            <div class="card">
                <div class="card-body">
                    <div class="container my-10">


                        <form onsubmit="pesquisaCpf(this)" action="javascript:return false;" name="form">
                            <div class="row">

                                <div class="form-group col-md-8">
                                    <label for="cpf">Consulta por CPF</label>
                                    <input name="cpf" type="text" class="form-control" id="cpf">
                                </div>

                                <div class="col-md-6">
                                    <input type="submit" class="btn btn-primary" value=" Pesquisar ">
                                </div>
                            </div>

                            <p class="my-5">
                                <a href="/add-person" class="btn btn-primary">
                                    <i class="fas fa-user-plus ml-2">Adicionar pessoa </i>
                                </a>
                            </p>
                            <div class="col-md-10">
                                <c:if test="${pessoas.size()==0}">
                                    <h2>No record found !!</h2>
                                </c:if>
                                <c:if test="${pessoas.size() gt 0 }">
                                    <div>
                                        <table class="table table-striped table-responsive-md">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Cpf</th>
                                                    <th>Data de Nascimento</th>
                                                    <th>Edit</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="pessoa" items="${pessoas}">
                                                    <tr>
                                                        <td>${pessoa.nome}</td>
                                                        <td>${pessoa.cpf}</td>
                                                        <td>${pessoa.dataNascimento}</td>
                                                        <td>
                                                            <a href="/person-update/${pessoa.id}"
                                                                class="btn btn-primary">
                                                                <i class="fas fa-user-edit ml-2"></i></a>
                                                        </td>
                                                        <td>
                                                            <a href="/person-delete/${pessoa.id}"
                                                                class="btn btn-primary">
                                                                <i class="fas fa-user-times ml-2"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </c:if>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>