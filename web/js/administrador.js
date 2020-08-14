
//Profesor
$(document).on('submit', '#formRP', function () {


    $.ajax({
        type: 'POST',
        url: 'registrarProfesor',
        data:{
            nombre:$("#nombreRP").val()
        },
        success: function (result) {
            $("#ModalRP").modal('hide');
            $('#tableProfesor').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Profesor registrado correctamente');

            } else {
                toastr.error('Profesor no registrado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});

$(document).on('submit', '#formEP', function () {


    $.ajax({
        type: 'POST',
        url: 'editarProfesor',
        data:{
            nombre:$("#nombreEP").val(),id_profesor:$("#id_profesorEP").val()
        },
        success: function (result) {
            $("#ModalEP").modal('hide');
            $('#tableProfesor').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Profesor editado correctamente');

            } else {
                toastr.error('Profesor no editado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});
function editarProfesor(id,nombre) {
    $('#id_profesorEP').val(id);
    $("#nombreEP").val(nombre);
    $('#ModalEP').modal();

}
function eliminarProfesor(id) {
    $('#id_profesorELP').val(id);
    $('#ModalELP').modal();

}

$(document).on('submit', '#formELP', function () {


    $.ajax({
        type: 'POST',
        url: 'eliminarProfesor',
        data:{
            id_profesor:$("#id_profesorELP").val()
        },
        success: function (result) {
            $("#ModalELP").modal('hide');
            $('#tableProfesor').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Profesor eliminado correctamente');

            } else {
                toastr.error('Elimine primero el usuario o desafilie del curso','Profesor no eliminado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});

//Usuario
$(document).on('submit', '#formRU', function () {
    if ($("#passRU").val().length>7) {
        $.ajax({
        type: 'POST',
        url: 'registrarUsuario',
        data:{
            login:$("#loginRU").val(),pass:$("#passRU").val(),id_profesor:$("#id_profesorRU").val()
        },
        success: function (result) {
            $("#ModalRU").modal('hide');
            $('#tableUsuario').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Usuario registrado correctamente');

            } else {
                toastr.error('Usuario no registrado');
            }




            document.forms[0].reset();

        }
    });
    }else{
         toastr.error('El password debe contener 8 caracteres mínimo');
    }

    

    return false;
});

$(document).on('submit', '#formEU', function () {


    $.ajax({
        type: 'POST',
        url: 'editarUsuario',
        data:{
            login:$("#loginEU").val(),pass:$("#passEU").val(),id_profesor:$("#id_profesorEU").val(),id_usuario:$("#id_usuarioEU").val()
        },
        success: function (result) {
            $("#ModalEU").modal('hide');
            $('#tableUsuario').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Usuario editado correctamente');

            } else {
                toastr.error('Usuario no editado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});
function editarUsuario(id,login,pass,id_profesor) {
    $("#loginEU").val(login);
    $("#passEU").val(pass);
    
    $("#id_profesorEU").change();
    $("#id_profesorEU").val(id_profesor);
    $("#id_usuarioEU").val(id);
    $('#ModalEU').modal();

}
function eliminarUsuario(id) {
    $('#id_usuarioELU').val(id);
    $('#ModalELU').modal();

}

$(document).on('submit', '#formELU', function () {


    $.ajax({
        type: 'POST',
        url: 'eliminarUsuario',
        data:{
            id_usuario:$("#id_usuarioELU").val()
        },
        success: function (result) {
            $("#ModalELU").modal('hide');
            $('#tableUsuario').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Usuario eliminado correctamente');

            } else {
                toastr.error('Usuario no eliminado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});

$(document).on('submit', '#formEC', function () {


    $.ajax({
        type: 'POST',
        url: 'editarCurso',
        data:{
          id_profesor:$("#id_profesorEC").val(),id_curso:$("#id_cursoEC").val()
        },
        success: function (result) {
            $("#ModalEC").modal('hide');
            $('#tableCurso').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Profesor asignado');

            } else {
                toastr.error('Profesor no asignado');
            }




            document.forms[0].reset();

        }
    });

    return false;
});
function editarCurso(id,id_profesor) {
   ;
    
    $("#id_profesorEC").change();
    $("#id_profesorEC").val(id_profesor);
    $("#id_cursoEC").val(id);
    $('#ModalEC').modal();

}

$(document).ready(function () {
    $('#tableProfesor').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        language: {
            "decimal": "",
            "emptyTable": "No hay datos",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
            "infoEmpty": "Mostrando 0 datos",
            "infoFiltered": "(Filtrado de _MAX_ total entradas)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ datos",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
        ajax: {
            url: "listarProfesor",
            method: "post",
            dataSrc: "datos"

        },
        columns: [
            {data: "nombre"},
            {data: "editar"},
            {data: "eliminar"}


        ]

    });
    $('#tableCurso').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        language: {
            "decimal": "",
            "emptyTable": "No hay datos",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
            "infoEmpty": "Mostrando 0 datos",
            "infoFiltered": "(Filtrado de _MAX_ total entradas)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ datos",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
        ajax: {
            url: "listarCurso",
            method: "post",
            dataSrc: "datos"

        },
        columns: [
            {data: "nombre"},
            {data: "profesor"},
            {data: "editar"}


        ]

    });


    $('#tableUsuario').DataTable({
        dom: 'Bfrtip',
        responsive: true,
        language: {
            "decimal": "",
            "emptyTable": "No hay datos",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
            "infoEmpty": "Mostrando 0 datos",
            "infoFiltered": "(Filtrado de _MAX_ total entradas)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ datos",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
        ajax: {
            url: "listarUsuario",
            method: "post",
            dataSrc: "datos"

        },
        columns: [
            {data: "usuario"},
            {data: "contrasena"},
            {data: "profesor"},
            {data: "editar"},
            {data: "eliminar"}


        ]

    });
});
