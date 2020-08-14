function eliminar(id) {
    $('#btneliminar').val(id);
    $('#ModalE').modal();

}

$(document).on('submit', '#formArchivo', function () {

    $("#cargandoR").html(" <img width='40px' height='40px' src='imagenes/cargando.gif'  >");

    $.ajax({
        type: 'POST',
        url: 'registrarArchivo',
        data: new FormData(this),
        
        contentType: false,
        cache: false,
        processData: false,
        success: function (result) {
            $("#ModalR").modal('hide');
            $("#cargandoR").html("");
            $('#example').DataTable().ajax.reload();
            if (result === ":)") {
                toastr.success('Agregado correctamente');

            } else {
                toastr.error('No se pudo agregar ');
            }




            document.forms[0].reset();

        }
    });

    return false;
});

$(document).on('submit', '#formArchivoEliminar', function () {

    $.ajax({
        type: 'POST',
        url: 'eliminarArchivo',
        data: {
            archivo: $("#btneliminar").val()
        },
//        contentType: false,
//        cache: false,
//        processData: false,
        success: function (result) {
            $("#ModalE").modal('hide');

            if (result === ":)") {
                toastr.success('Eliminado correctamente');

            } else {
                toastr.error('No se pudo eliminar');
            }
            $('#example').DataTable().ajax.reload();


            document.forms[0].reset();

        }
    });

    return false;
});



$(document).ready(function () {
    $('#example').DataTable({
//        dom: 'Bfrtip',
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
//        buttons: [
//            'copy', 'csv', 'excel', 'pdf', 'print'
//        ]

        ajax: {
            url: "listarArchivo",
            method: "post",
            dataSrc: "datos"

        },
        columns: [
            {data: "curso"},
            {data: "nombre"},
            {data: "descripcion"},
            {data: "tamano"},
            {data: "archivo"},
            {data: "eliminar"}

        ]

    });
});
