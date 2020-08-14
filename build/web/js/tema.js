$(document).on('keyup', '#temaF', function () {


    $.ajax({
        type: 'POST',
        url: 'buscarTema',
        data:{
            tipo:'F',tema:$('#temaF').val()
        },
        success: function (result) {
           
            $('#busqueda').html(result);
           

        }
    });

    return false;
});

$(document).on('keyup', '#temaB', function () {


    $.ajax({
        type: 'POST',
        url: 'buscarTema',
        data:{
            tipo:'B',tema:$('#temaB').val()
        },
        success: function (result) {
           
            $('#busqueda').html(result);
           

        }
    });

    return false;
});


$(document).on('keyup', '#temaQ', function () {


    $.ajax({
        type: 'POST',
        url: 'buscarTema',
        data:{
            tipo:'Q',tema:$('#temaQ').val()
        },
        success: function (result) {
           
            $('#busqueda').html(result);
           

        }
    });

    return false;
});