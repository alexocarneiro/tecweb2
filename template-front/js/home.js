
console.log('BAtata');

$("#carregarAlimentos").on("click", function () {

     $(".tabela").fadeIn();
     $(".item").slideUp();   
     $(".banner-area_home").slideUp();   
     $('.tabela').removeClass('d-none');           
});


$("#carregarValoresNutri").on("click", function () {

    $(".tabelaNutri").fadeIn();
    $(".banner-area_home").slideUp();
    $(".item").slideUp();   
  $('.tabelaNutri').removeClass('d-none');           
});




$("#voltar").on("click", function () {
    $(".item").fadeIn();
    $(".banner-area_home").fadeIn();   
    $(".tabela").addClass('d-none');
    $(".tabelaNutri").addClass('d-none');
    $(".tabela").slideUp();   
    $(".tabelaNutri").slideUp();  
               
});



$("#voltarNutri").on("click", function () {
    $(".item").fadeIn();
    $(".banner-area_home").fadeIn();   
    $(".tabela").addClass('d-none');
    $(".tabelaNutri").addClass('d-none');
    $(".tabela").slideUp();   
    $(".tabelaNutri").slideUp();  
               
});






$('#carregarAlimentos').click (function () {
    console.log('batata 09');
    $.ajax ({
        url: "http://localhost:3000/alimentos", 
        data: {
            api_key: "9c2c75d9d67c3f98cc98bb29450115c5"
        },
        success: function (data, textStatus, xhr) {
            for (i=0; i < data.dados.length; i++) {
                $('#listaAlimentos tr:last').after(`<tr>                
                    <td>${data.dados[i].ALI_NOME}</td>
                    <td>${data.dados[i].ALI_INDICE_GLICEMICO}</td>
                    <td>${data.dados[i].ALI_PORCAO_GRAMAS}</td>
          </tr>`); 
            }
            
        },
    });
    
});


$('#carregarValoresNutri').click (function () {
    console.log('batata 09');
    for (i=0; i < 6; i++) {
        
    $.ajax ({
            
        url: "http://localhost:3000/alimentos/"+[i]+"", 
        data: {
            api_key: "9c2c75d9d67c3f98cc98bb29450115c5"
        },
        success: function (data, textStatus, xhr) {
            for (i=0; i < data.dados.length; i++) {
                $('#listaNutri tr:last').after(`<tr>                
                    <td>${data.dados[i].ALI_NOME}</td>
                    <td>${data.dados[i].NUT_NOME}</td>
                    <td>${data.dados[i].VAN_QUANTIDADE}</td>
          </tr>`); 
            }
            
        },
    });

  }
});
function signOut() {
    alert("ok");
    /*
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
        console.log('User signed out.');
    });
    window.location.assign("appX/logout.php");
    */
}





