<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Pessoa</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>

<body>
    <div class="container my-5">
        <h3>Add Pessoa</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <form:form action="/save-person"
                        method="post" modelAttribute="command">
                        <form:hidden path="id" />
                        <div class="row">
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Name</label>
                                <form:input type="text" class="form-control" id="nome"
                                    path="nome" placeholder="Enter Name" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="cpf" class="col-form-label">CPF</label>
                                <form:input type="text" class="form-control" id="cpf"
                                    path="cpf" placeholder="Enter cpf" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="dataNascimento" class="col-form-label">Email</label>
                                <form:input type="text" class="form-control" id="dataNascimento"
                                    path="dataNascimento" placeholder="dataNascimento" />
                            </div>

                            <div class="col-md-6">
                                <input type="submit" class="btn btn-primary" value=" Submit ">
                            </div>

                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>