$(document).on('keyup', '#lamina', function () {

    $.ajax({
        
        type: 'POST',
        url: '../buscarLamina',
        data:{
            lamina:$('#lamina').val(),tipo:"a"
        },
        success: function (result) {
           
            $('#busqueda').html(result);
           

        }
    });

    return false;
});

$(document).on('keyup', '#laminap', function () {

    $.ajax({
        
        type: 'POST',
        url: '../buscarLamina',
        data:{
            lamina:$('#laminap').val(),tipo:"p"
        },
        success: function (result) {
           
            $('#busqueda').html(result);
           

        }
    });

    return false;
});



