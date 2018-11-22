function login(){
    alert
    $.ajax({
        type: 'POST', 
        url: 'appX/login.php', 
        data: {
            email: $('#email').val(),
            pass: $('#pass').val()
        },
        dataType: 'html'
    }).done(function(data) {
        if (data != "error"){
            window.location.href = "src/home.php";
        }else{
            alert("Usuário ou senha incorretos");
        }
 
    }).fail(function(xhr, desc, err) {
        alert("Erro: verifique a conexão");
        console.log(xhr);
        console.log("Detalhes: " + desc + "nErro:" + err);
    });
}
