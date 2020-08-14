$(document).on('submit', '#formLogin', function () {

    $.ajax({
        type: 'POST',
        url: 'login',
        data: {usuario: $("#usuario").val(),
            password: $("#password").val()

        },
//        contentType: false,
//        cache: false,
//        processData: false,
        success: function (result) {

            if (result === ":)") {
                toastr.success('Acceso permitido');

                window.location.replace("inicio.jsp");

            } else {
                toastr.error('Acceso denegado: verifique sus datos');

            }




            document.forms[0].reset();

        }
    });

    return false;
});



