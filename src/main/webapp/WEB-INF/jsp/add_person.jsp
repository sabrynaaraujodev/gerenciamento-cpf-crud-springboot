<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <html>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="x-ua-compatible" content="ie=edge">
            <title>Add Pessoa</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
            <link rel="stylesheet" type="text/css" th:href="@{/css/index.css}" />
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        </head>


        <script>

            function alerta() {
              alert("Salvo com sucesso");
            }


            function enviaForm(form) {

                $.ajaxSetup({
                    dataType: 'json',
                    contentType: "application/json; charset=utf-8",
                    accepts: {
                        text: "application/json"
                    }
                });

                let dataJSON = {};
                $.map($(form).serializeArray(), function (n, i) {
                    dataJSON[n['name']] = n['value'];
                });

                $.post("/save-person", JSON.stringify(dataJSON), function (json) {
                    console.log(json);
                }, 'json');
            }
        </script>

        <body>
            <div class="container my-5">
                <h3>Add Pessoa</h3>
                <div class="card">
                    <div class="card-body">
                        <div class="col-md-10">
                            <form onsubmit="enviaForm(this)" action="javascript:return false;">
                                <div class="row">


                                    <div class="form-group col-md-8">
                                        <label for="nome">Nome Completo</label>
                                        <input name="nome" type="text" class="form-control" id="nome">
                                    </div>


                                    <div class="form-group col-md-8">
                                        <label for="cpf">CPF</label>
                                        <input name="cpf" type="text" class="form-control" id="cpf">
                                    </div>


                                    <div class="form-group col-md-8">
                                        <label for="dataNascimento">Data de Nascimento</label>
                                        <input name="dataNascimento" type="text" class="form-control"
                                            id="dataNascimento">
                                    </div>


                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary" onclick="alerta()"
                                            value=" Submit ">
                                    </div>

                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>