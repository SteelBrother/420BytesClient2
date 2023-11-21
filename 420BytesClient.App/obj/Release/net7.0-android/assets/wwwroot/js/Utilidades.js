//let connection = new signalR.HubConnectionBuilder()
//    .withUrl("/UserUpdatesHub")
//    .build();

//connection.on("ReceiveMessage", function (user, message) {
//    // Actualiza la lista de usuarios en el DOM aquí 
//});

//connection.start().then(function () {
//    console.log("Conectado");
//}).catch(function (err) {
//    return console.error(err.toString());
//});

//function mostrarMensajeConfirmacion(title, text, icon) {
//    return new Promise(resolve => {
//        Swal.fire({
//            title,
//            text,
//            icon,
//            showCancelButton: true,
//            confirmButtonColor: '#3085d6',
//            cancelButtonColor: '#d33',
//            confirmButtonText: 'Si'
//        }).then((result) => {
//            resolve(result.isConfirmed)
//        })
//    })
//}

//async function mostrarMensajeTextoConfirmacion(title, text, value) {
//    return new Promise(resolve => {
//        Swal.fire({
//            title,
//            input: 'text',
//            inputLabel: text,
//            inputValue: value,
//            showCancelButton: true,
//            inputValidator: (value) => {
//                if (!value) {
//                    return 'Por favor ingrese la información!'
//                }
//            }
//        }).then((result) => {
//            resolve(result.value)
//        })
//    })

//}