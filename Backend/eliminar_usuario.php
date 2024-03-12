<?php
include("conexion.php");

if (isset($_POST["userId"])) {
    $userId = $_POST["userId"];
    
    mysqli_begin_transaction($conn);

    $updateDetailsQuery = "UPDATE users_details SET delete_date = NOW() WHERE id_users = $userId";
    $detailsResult = mysqli_query($conn, $updateDetailsQuery);

    $updateUsersQuery = "UPDATE users SET delete_date = NOW() WHERE id_users = $userId";
    $usersResult = mysqli_query($conn, $updateUsersQuery);

    if ($detailsResult && $usersResult) {
        mysqli_commit($conn);
        echo "Usuario eliminado con éxito ";
    } else {
        mysqli_rollback($conn);
        echo "Error al eliminar el usuario: " . mysqli_error($conn); 
    }
}

mysqli_close($conn);
?>