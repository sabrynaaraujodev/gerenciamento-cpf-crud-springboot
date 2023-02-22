
function alerta() {
    var nome = form.nome;
    var cpf = form.cpf;
    var dataNascimento = form.dataNascimento;


    if (nome.value == "" || cpf.value == "" || dataNascimento.value == "") {
        alert("Todos os campos sao obrigatorios");
    } else {
        alert("Salvo com sucesso");
    }
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

