function login(){
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

function onSignIn(response) {
    var perfil = response.getBasicProfile();
    var userID = perfil.getId();
    var userName = perfil.getName();
    var userEmail = perfil.getEmail();
    //var token = response.getAuthResponse().id_token;
    console.log(userID);
    console.log("Email: " + userEmail);

    $.ajax({
        type: 'POST', 
        url: 'appX/login.php', 
        data: {
            email: userEmail,
            user_id: userID
        },
        dataType: 'html'
    }).done(function(data) {
        if (data != "error"){
            //window.location.href = "src/home.php";
        }else{
            alert("Usuário ou senha incorretos");
        }
 
    }).fail(function(xhr, desc, err) {
        alert("Erro: verifique a conexão");
        console.log(xhr);
        console.log("Detalhes: " + desc + "nErro:" + err);
    });
};

