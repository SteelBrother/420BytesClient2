//const connection = new signalR.HubConnectionBuilder()
//    .withUrl("/userUpdatesHub")
//    .configureLogging(signalR.LogLevel.Information)
//    .build();

//connection.on("UsuariosActualizados", (users) => {
//    console.log("UsuariosActualizados", users);
//    // Aquí es donde se debe actualizar la lista de usuarios
//});

//connection.start().catch(console.error);

//const connection = new signalR.HubConnectionBuilder()
//    .withUrl("/userupdateshub")
//    .build();

//connection.start().catch(err => console.error(err));

//connection.on("UsuariosActualizados", function (updatedUsers) {
//    DotNet.invokeMethodAsync("YourNamespace", "ReceiveUsersUpdate", updatedUsers)
//        .catch(function (err) {
//            console.error(err);
//        });
//});