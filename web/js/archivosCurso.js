
 
 $(document).ready(function () {
    $('#tableCursoArchivos').DataTable({
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

    "ajax": {
        url: "listarArchivosCurso",
        method: "post",
        dataSrc: "datos",
        data: {curso: $('#id_curso').val()
           
        }


    },
    "columns": [
     
         {data: "nombre"},
         {data: "descripcion"},
         {data: "tamano"},
         {data: "archivo"}


    ]

    });
});