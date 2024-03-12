<?php
include('conexion.php');

if (isset($_POST["userId"])) {
    $userId = $_POST["userId"];

    $queryDetails = mysqli_query($conn, "SELECT ud.nombre, ud.apellido, ud.cumpleanos, ud.compania, ud.web, ud.apodo, u.correo
                                         FROM users_details ud
                                         INNER JOIN users u ON ud.id_users = u.id_users
                                         WHERE ud.id_users = $userId");

    if ($queryDetails) {
        
        $userDetails = mysqli_fetch_assoc($queryDetails);

        echo json_encode($userDetails);
    } else {
        echo "Error al obtener los detalles del usuario: " . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>
